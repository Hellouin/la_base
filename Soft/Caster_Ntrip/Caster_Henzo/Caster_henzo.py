import socket

import threading

from base64 import b64encode

 

class SimpleNtripCaster:

    def __init__(self, host='0.0.0.0', port=2101):

        self.host = host

        self.port = port

        self.source_data = None

        self.source_lock = threading.Lock()

        self.clients = []

        self.auth_required = False

        self.credentials = {'user': 'password'}  # À modifier

       

    def start(self):

        # Thread pour accepter les sources RTK (votre base)

        source_thread = threading.Thread(target=self._run_source_server)

        source_thread.daemon = True

        source_thread.start()

       

        # Thread principal pour les clients NTRIP (rovers)

        self._run_client_server()

   

    def _run_source_server(self):

        """Reçoit les données RTCM de la base RTK"""

        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:

            s.bind((self.host, self.port + 1))  # Port différent pour la source

            s.listen()

            print(f"Source server listening on {self.host}:{self.port + 1}")

           

            while True:

                conn, addr = s.accept()

                print(f"Source connected from {addr}")

                try:

                    while True:

                        data = conn.recv(4096)

                        if not data:

                            break

                           

                        with self.source_lock:

                            self.source_data = data

                           

                        # Envoi aux clients connectés

                        self._broadcast_to_clients(data)

                except Exception as e:

                    print(f"Source error: {e}")

                finally:

                    conn.close()

   

    def _run_client_server(self):

        """Gère les connexions des clients NTRIP"""

        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:

            s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

            s.bind((self.host, self.port))

            s.listen()

            print(f"NTRIP caster listening on {self.host}:{self.port}")

           

            while True:

                conn, addr = s.accept()

                client_thread = threading.Thread(

                    target=self._handle_client_connection,

                    args=(conn, addr)

                )

                client_thread.daemon = True

                client_thread.start()

   

    def _handle_client_connection(self, conn, addr):

        """Gère une connexion client individuelle"""

        print(f"New client connected from {addr}")

        try:

            # Lecture de l'en-tête HTTP/NTRIP

            request = conn.recv(1024).decode('utf-8')

           

            # Vérification de l'authentification si nécessaire

            if self.auth_required and 'Authorization:' not in request:

                conn.send(b"HTTP/1.1 401 Unauthorized\r\n")

                conn.send(b"WWW-Authenticate: Basic realm=\"NTRIP Caster\"\r\n\r\n")

                conn.close()

                return

           

            # Réponse NTRIP positive

            conn.send(b"HTTP/1.1 200 OK\r\n")

            conn.send(b"Server: SimpleNtripCaster\r\n")

            conn.send(b"Content-Type: gnss/data\r\n")

            conn.send(b"Connection: close\r\n\r\n")

           

            # Ajout du client à la liste

            with self.source_lock:

                self.clients.append(conn)

           

            # Envoi des données existantes si disponibles

            if self.source_data:

                conn.send(self.source_data)

           

            # Attente passive (les données sont envoyées par _broadcast_to_clients)

            while True:

                # Vérification que la connexion est toujours active

                try:

                    conn.send(b'')  # Ping vide

                except:

                    break

               

        except Exception as e:

            print(f"Client error: {e}")

        finally:

            with self.source_lock:

                if conn in self.clients:

                    self.clients.remove(conn)

            conn.close()

            print(f"Client {addr} disconnected")

   

    def _broadcast_to_clients(self, data):

        """Envoi les données à tous les clients connectés"""

        with self.source_lock:

            for client in self.clients[:]:  # Copie de la liste

                try:

                    client.send(data)

                except:

                    self.clients.remove(client)

 

if __name__ == "__main__":

    caster = SimpleNtripCaster()

    print("Starting NTRIP caster...")

    caster.start()