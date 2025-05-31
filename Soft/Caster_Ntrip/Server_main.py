import asyncio

# Configuration
STM32_TCP_PORT = 2101  # Port d'écoute des données RTCM de votre STM32
NTRIP_PORT = 80      # Port d'écoute pour les clients NTRIP
BUFFER_SIZE = 4096     # Taille du buffer de réception

# Liste des clients NTRIP connectés
ntrip_clients = set()

async def handle_stm32(reader, writer):
    """ Gère la connexion avec le STM32 et transfère les données RTCM aux clients NTRIP """
    global ntrip_clients
    addr = writer.get_extra_info('peername')
    print(f"[STM32 CONNECTÉ] {addr}")

    try:
        while True:
            data = await reader.read(BUFFER_SIZE)
            if not data:
                break  # Fin de connexion STM32

            # Transmet aux clients NTRIP
            for client in ntrip_clients.copy():
                try:
                    client.write(data)
                    await client.drain()
                except:
                    ntrip_clients.remove(client)  # Supprime les clients déconnectés

    except Exception as e:
        print(f"[ERREUR STM32] {e}")
    finally:
        writer.close()
        await writer.wait_closed()
        print(f"[STM32 DÉCONNECTÉ] {addr}")

async def handle_ntrip(reader, writer):
    """ Gère un client NTRIP et lui envoie les corrections RTCM """
    global ntrip_clients
    addr = writer.get_extra_info('peername')
    print(f"[NTRIP CONNECTÉ] {addr}")
    ntrip_clients.add(writer)

    try:
        while True:
            data = await reader.read(BUFFER_SIZE)
            if not data:
                break  # Fin de connexion client
    except:
        pass
    finally:
        print(f"[NTRIP DÉCONNECTÉ] {addr}")
        ntrip_clients.remove(writer)
        writer.close()
        await writer.wait_closed()

async def main():
    """ Lance les serveurs STM32 (TCP) et NTRIP """
    server_stm32 = await asyncio.start_server(handle_stm32, '0.0.0.0', STM32_TCP_PORT)
    server_ntrip = await asyncio.start_server(handle_ntrip, '0.0.0.0', NTRIP_PORT)

    print(f"✅ Serveur STM32 en écoute sur le port {STM32_TCP_PORT}")
    print(f"✅ Serveur NTRIP en écoute sur le port {NTRIP_PORT}")

    async with server_stm32, server_ntrip:
        await asyncio.gather(server_stm32.serve_forever(), server_ntrip.serve_forever())

# Lancer le serveur
asyncio.run(main())