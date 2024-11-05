################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/LwIP/src/core/altcp.c \
../Core/Src/LwIP/src/core/altcp_alloc.c \
../Core/Src/LwIP/src/core/altcp_tcp.c \
../Core/Src/LwIP/src/core/def.c \
../Core/Src/LwIP/src/core/dns.c \
../Core/Src/LwIP/src/core/inet_chksum.c \
../Core/Src/LwIP/src/core/init.c \
../Core/Src/LwIP/src/core/ip.c \
../Core/Src/LwIP/src/core/mem.c \
../Core/Src/LwIP/src/core/memp.c \
../Core/Src/LwIP/src/core/netif.c \
../Core/Src/LwIP/src/core/pbuf.c \
../Core/Src/LwIP/src/core/raw.c \
../Core/Src/LwIP/src/core/stats.c \
../Core/Src/LwIP/src/core/sys.c \
../Core/Src/LwIP/src/core/tcp.c \
../Core/Src/LwIP/src/core/tcp_in.c \
../Core/Src/LwIP/src/core/tcp_out.c \
../Core/Src/LwIP/src/core/timeouts.c \
../Core/Src/LwIP/src/core/udp.c 

OBJS += \
./Core/Src/LwIP/src/core/altcp.o \
./Core/Src/LwIP/src/core/altcp_alloc.o \
./Core/Src/LwIP/src/core/altcp_tcp.o \
./Core/Src/LwIP/src/core/def.o \
./Core/Src/LwIP/src/core/dns.o \
./Core/Src/LwIP/src/core/inet_chksum.o \
./Core/Src/LwIP/src/core/init.o \
./Core/Src/LwIP/src/core/ip.o \
./Core/Src/LwIP/src/core/mem.o \
./Core/Src/LwIP/src/core/memp.o \
./Core/Src/LwIP/src/core/netif.o \
./Core/Src/LwIP/src/core/pbuf.o \
./Core/Src/LwIP/src/core/raw.o \
./Core/Src/LwIP/src/core/stats.o \
./Core/Src/LwIP/src/core/sys.o \
./Core/Src/LwIP/src/core/tcp.o \
./Core/Src/LwIP/src/core/tcp_in.o \
./Core/Src/LwIP/src/core/tcp_out.o \
./Core/Src/LwIP/src/core/timeouts.o \
./Core/Src/LwIP/src/core/udp.o 

C_DEPS += \
./Core/Src/LwIP/src/core/altcp.d \
./Core/Src/LwIP/src/core/altcp_alloc.d \
./Core/Src/LwIP/src/core/altcp_tcp.d \
./Core/Src/LwIP/src/core/def.d \
./Core/Src/LwIP/src/core/dns.d \
./Core/Src/LwIP/src/core/inet_chksum.d \
./Core/Src/LwIP/src/core/init.d \
./Core/Src/LwIP/src/core/ip.d \
./Core/Src/LwIP/src/core/mem.d \
./Core/Src/LwIP/src/core/memp.d \
./Core/Src/LwIP/src/core/netif.d \
./Core/Src/LwIP/src/core/pbuf.d \
./Core/Src/LwIP/src/core/raw.d \
./Core/Src/LwIP/src/core/stats.d \
./Core/Src/LwIP/src/core/sys.d \
./Core/Src/LwIP/src/core/tcp.d \
./Core/Src/LwIP/src/core/tcp_in.d \
./Core/Src/LwIP/src/core/tcp_out.d \
./Core/Src/LwIP/src/core/timeouts.d \
./Core/Src/LwIP/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/LwIP/src/core/%.o Core/Src/LwIP/src/core/%.su Core/Src/LwIP/src/core/%.cyclo: ../Core/Src/LwIP/src/core/%.c Core/Src/LwIP/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I"C:/Users/hellm/Desktop/ENSI/la_base/Soft/basile/Core/Src/LwIP/src/include" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-LwIP-2f-src-2f-core

clean-Core-2f-Src-2f-LwIP-2f-src-2f-core:
	-$(RM) ./Core/Src/LwIP/src/core/altcp.cyclo ./Core/Src/LwIP/src/core/altcp.d ./Core/Src/LwIP/src/core/altcp.o ./Core/Src/LwIP/src/core/altcp.su ./Core/Src/LwIP/src/core/altcp_alloc.cyclo ./Core/Src/LwIP/src/core/altcp_alloc.d ./Core/Src/LwIP/src/core/altcp_alloc.o ./Core/Src/LwIP/src/core/altcp_alloc.su ./Core/Src/LwIP/src/core/altcp_tcp.cyclo ./Core/Src/LwIP/src/core/altcp_tcp.d ./Core/Src/LwIP/src/core/altcp_tcp.o ./Core/Src/LwIP/src/core/altcp_tcp.su ./Core/Src/LwIP/src/core/def.cyclo ./Core/Src/LwIP/src/core/def.d ./Core/Src/LwIP/src/core/def.o ./Core/Src/LwIP/src/core/def.su ./Core/Src/LwIP/src/core/dns.cyclo ./Core/Src/LwIP/src/core/dns.d ./Core/Src/LwIP/src/core/dns.o ./Core/Src/LwIP/src/core/dns.su ./Core/Src/LwIP/src/core/inet_chksum.cyclo ./Core/Src/LwIP/src/core/inet_chksum.d ./Core/Src/LwIP/src/core/inet_chksum.o ./Core/Src/LwIP/src/core/inet_chksum.su ./Core/Src/LwIP/src/core/init.cyclo ./Core/Src/LwIP/src/core/init.d ./Core/Src/LwIP/src/core/init.o ./Core/Src/LwIP/src/core/init.su ./Core/Src/LwIP/src/core/ip.cyclo ./Core/Src/LwIP/src/core/ip.d ./Core/Src/LwIP/src/core/ip.o ./Core/Src/LwIP/src/core/ip.su ./Core/Src/LwIP/src/core/mem.cyclo ./Core/Src/LwIP/src/core/mem.d ./Core/Src/LwIP/src/core/mem.o ./Core/Src/LwIP/src/core/mem.su ./Core/Src/LwIP/src/core/memp.cyclo ./Core/Src/LwIP/src/core/memp.d ./Core/Src/LwIP/src/core/memp.o ./Core/Src/LwIP/src/core/memp.su ./Core/Src/LwIP/src/core/netif.cyclo ./Core/Src/LwIP/src/core/netif.d ./Core/Src/LwIP/src/core/netif.o ./Core/Src/LwIP/src/core/netif.su ./Core/Src/LwIP/src/core/pbuf.cyclo ./Core/Src/LwIP/src/core/pbuf.d ./Core/Src/LwIP/src/core/pbuf.o ./Core/Src/LwIP/src/core/pbuf.su ./Core/Src/LwIP/src/core/raw.cyclo ./Core/Src/LwIP/src/core/raw.d ./Core/Src/LwIP/src/core/raw.o ./Core/Src/LwIP/src/core/raw.su ./Core/Src/LwIP/src/core/stats.cyclo ./Core/Src/LwIP/src/core/stats.d ./Core/Src/LwIP/src/core/stats.o ./Core/Src/LwIP/src/core/stats.su ./Core/Src/LwIP/src/core/sys.cyclo ./Core/Src/LwIP/src/core/sys.d ./Core/Src/LwIP/src/core/sys.o ./Core/Src/LwIP/src/core/sys.su ./Core/Src/LwIP/src/core/tcp.cyclo ./Core/Src/LwIP/src/core/tcp.d ./Core/Src/LwIP/src/core/tcp.o ./Core/Src/LwIP/src/core/tcp.su ./Core/Src/LwIP/src/core/tcp_in.cyclo ./Core/Src/LwIP/src/core/tcp_in.d ./Core/Src/LwIP/src/core/tcp_in.o ./Core/Src/LwIP/src/core/tcp_in.su ./Core/Src/LwIP/src/core/tcp_out.cyclo ./Core/Src/LwIP/src/core/tcp_out.d ./Core/Src/LwIP/src/core/tcp_out.o ./Core/Src/LwIP/src/core/tcp_out.su ./Core/Src/LwIP/src/core/timeouts.cyclo ./Core/Src/LwIP/src/core/timeouts.d ./Core/Src/LwIP/src/core/timeouts.o ./Core/Src/LwIP/src/core/timeouts.su ./Core/Src/LwIP/src/core/udp.cyclo ./Core/Src/LwIP/src/core/udp.d ./Core/Src/LwIP/src/core/udp.o ./Core/Src/LwIP/src/core/udp.su

.PHONY: clean-Core-2f-Src-2f-LwIP-2f-src-2f-core

