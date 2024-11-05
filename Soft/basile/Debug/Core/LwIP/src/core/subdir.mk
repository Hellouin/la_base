################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LwIP/src/core/altcp.c \
../Core/LwIP/src/core/altcp_alloc.c \
../Core/LwIP/src/core/altcp_tcp.c \
../Core/LwIP/src/core/def.c \
../Core/LwIP/src/core/dns.c \
../Core/LwIP/src/core/inet_chksum.c \
../Core/LwIP/src/core/init.c \
../Core/LwIP/src/core/ip.c \
../Core/LwIP/src/core/mem.c \
../Core/LwIP/src/core/memp.c \
../Core/LwIP/src/core/netif.c \
../Core/LwIP/src/core/pbuf.c \
../Core/LwIP/src/core/raw.c \
../Core/LwIP/src/core/stats.c \
../Core/LwIP/src/core/sys.c \
../Core/LwIP/src/core/tcp.c \
../Core/LwIP/src/core/tcp_in.c \
../Core/LwIP/src/core/tcp_out.c \
../Core/LwIP/src/core/timeouts.c \
../Core/LwIP/src/core/udp.c 

OBJS += \
./Core/LwIP/src/core/altcp.o \
./Core/LwIP/src/core/altcp_alloc.o \
./Core/LwIP/src/core/altcp_tcp.o \
./Core/LwIP/src/core/def.o \
./Core/LwIP/src/core/dns.o \
./Core/LwIP/src/core/inet_chksum.o \
./Core/LwIP/src/core/init.o \
./Core/LwIP/src/core/ip.o \
./Core/LwIP/src/core/mem.o \
./Core/LwIP/src/core/memp.o \
./Core/LwIP/src/core/netif.o \
./Core/LwIP/src/core/pbuf.o \
./Core/LwIP/src/core/raw.o \
./Core/LwIP/src/core/stats.o \
./Core/LwIP/src/core/sys.o \
./Core/LwIP/src/core/tcp.o \
./Core/LwIP/src/core/tcp_in.o \
./Core/LwIP/src/core/tcp_out.o \
./Core/LwIP/src/core/timeouts.o \
./Core/LwIP/src/core/udp.o 

C_DEPS += \
./Core/LwIP/src/core/altcp.d \
./Core/LwIP/src/core/altcp_alloc.d \
./Core/LwIP/src/core/altcp_tcp.d \
./Core/LwIP/src/core/def.d \
./Core/LwIP/src/core/dns.d \
./Core/LwIP/src/core/inet_chksum.d \
./Core/LwIP/src/core/init.d \
./Core/LwIP/src/core/ip.d \
./Core/LwIP/src/core/mem.d \
./Core/LwIP/src/core/memp.d \
./Core/LwIP/src/core/netif.d \
./Core/LwIP/src/core/pbuf.d \
./Core/LwIP/src/core/raw.d \
./Core/LwIP/src/core/stats.d \
./Core/LwIP/src/core/sys.d \
./Core/LwIP/src/core/tcp.d \
./Core/LwIP/src/core/tcp_in.d \
./Core/LwIP/src/core/tcp_out.d \
./Core/LwIP/src/core/timeouts.d \
./Core/LwIP/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LwIP/src/core/%.o Core/LwIP/src/core/%.su Core/LwIP/src/core/%.cyclo: ../Core/LwIP/src/core/%.c Core/LwIP/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Core/LwIP/system/arch -I../LWIP/Target -I../Core/LwIP/src/include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-LwIP-2f-src-2f-core

clean-Core-2f-LwIP-2f-src-2f-core:
	-$(RM) ./Core/LwIP/src/core/altcp.cyclo ./Core/LwIP/src/core/altcp.d ./Core/LwIP/src/core/altcp.o ./Core/LwIP/src/core/altcp.su ./Core/LwIP/src/core/altcp_alloc.cyclo ./Core/LwIP/src/core/altcp_alloc.d ./Core/LwIP/src/core/altcp_alloc.o ./Core/LwIP/src/core/altcp_alloc.su ./Core/LwIP/src/core/altcp_tcp.cyclo ./Core/LwIP/src/core/altcp_tcp.d ./Core/LwIP/src/core/altcp_tcp.o ./Core/LwIP/src/core/altcp_tcp.su ./Core/LwIP/src/core/def.cyclo ./Core/LwIP/src/core/def.d ./Core/LwIP/src/core/def.o ./Core/LwIP/src/core/def.su ./Core/LwIP/src/core/dns.cyclo ./Core/LwIP/src/core/dns.d ./Core/LwIP/src/core/dns.o ./Core/LwIP/src/core/dns.su ./Core/LwIP/src/core/inet_chksum.cyclo ./Core/LwIP/src/core/inet_chksum.d ./Core/LwIP/src/core/inet_chksum.o ./Core/LwIP/src/core/inet_chksum.su ./Core/LwIP/src/core/init.cyclo ./Core/LwIP/src/core/init.d ./Core/LwIP/src/core/init.o ./Core/LwIP/src/core/init.su ./Core/LwIP/src/core/ip.cyclo ./Core/LwIP/src/core/ip.d ./Core/LwIP/src/core/ip.o ./Core/LwIP/src/core/ip.su ./Core/LwIP/src/core/mem.cyclo ./Core/LwIP/src/core/mem.d ./Core/LwIP/src/core/mem.o ./Core/LwIP/src/core/mem.su ./Core/LwIP/src/core/memp.cyclo ./Core/LwIP/src/core/memp.d ./Core/LwIP/src/core/memp.o ./Core/LwIP/src/core/memp.su ./Core/LwIP/src/core/netif.cyclo ./Core/LwIP/src/core/netif.d ./Core/LwIP/src/core/netif.o ./Core/LwIP/src/core/netif.su ./Core/LwIP/src/core/pbuf.cyclo ./Core/LwIP/src/core/pbuf.d ./Core/LwIP/src/core/pbuf.o ./Core/LwIP/src/core/pbuf.su ./Core/LwIP/src/core/raw.cyclo ./Core/LwIP/src/core/raw.d ./Core/LwIP/src/core/raw.o ./Core/LwIP/src/core/raw.su ./Core/LwIP/src/core/stats.cyclo ./Core/LwIP/src/core/stats.d ./Core/LwIP/src/core/stats.o ./Core/LwIP/src/core/stats.su ./Core/LwIP/src/core/sys.cyclo ./Core/LwIP/src/core/sys.d ./Core/LwIP/src/core/sys.o ./Core/LwIP/src/core/sys.su ./Core/LwIP/src/core/tcp.cyclo ./Core/LwIP/src/core/tcp.d ./Core/LwIP/src/core/tcp.o ./Core/LwIP/src/core/tcp.su ./Core/LwIP/src/core/tcp_in.cyclo ./Core/LwIP/src/core/tcp_in.d ./Core/LwIP/src/core/tcp_in.o ./Core/LwIP/src/core/tcp_in.su ./Core/LwIP/src/core/tcp_out.cyclo ./Core/LwIP/src/core/tcp_out.d ./Core/LwIP/src/core/tcp_out.o ./Core/LwIP/src/core/tcp_out.su ./Core/LwIP/src/core/timeouts.cyclo ./Core/LwIP/src/core/timeouts.d ./Core/LwIP/src/core/timeouts.o ./Core/LwIP/src/core/timeouts.su ./Core/LwIP/src/core/udp.cyclo ./Core/LwIP/src/core/udp.d ./Core/LwIP/src/core/udp.o ./Core/LwIP/src/core/udp.su

.PHONY: clean-Core-2f-LwIP-2f-src-2f-core

