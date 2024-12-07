################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LwIP/src/core/ipv6/dhcp6.c \
../Core/LwIP/src/core/ipv6/ethip6.c \
../Core/LwIP/src/core/ipv6/icmp6.c \
../Core/LwIP/src/core/ipv6/inet6.c \
../Core/LwIP/src/core/ipv6/ip6.c \
../Core/LwIP/src/core/ipv6/ip6_addr.c \
../Core/LwIP/src/core/ipv6/ip6_frag.c \
../Core/LwIP/src/core/ipv6/mld6.c \
../Core/LwIP/src/core/ipv6/nd6.c 

OBJS += \
./Core/LwIP/src/core/ipv6/dhcp6.o \
./Core/LwIP/src/core/ipv6/ethip6.o \
./Core/LwIP/src/core/ipv6/icmp6.o \
./Core/LwIP/src/core/ipv6/inet6.o \
./Core/LwIP/src/core/ipv6/ip6.o \
./Core/LwIP/src/core/ipv6/ip6_addr.o \
./Core/LwIP/src/core/ipv6/ip6_frag.o \
./Core/LwIP/src/core/ipv6/mld6.o \
./Core/LwIP/src/core/ipv6/nd6.o 

C_DEPS += \
./Core/LwIP/src/core/ipv6/dhcp6.d \
./Core/LwIP/src/core/ipv6/ethip6.d \
./Core/LwIP/src/core/ipv6/icmp6.d \
./Core/LwIP/src/core/ipv6/inet6.d \
./Core/LwIP/src/core/ipv6/ip6.d \
./Core/LwIP/src/core/ipv6/ip6_addr.d \
./Core/LwIP/src/core/ipv6/ip6_frag.d \
./Core/LwIP/src/core/ipv6/mld6.d \
./Core/LwIP/src/core/ipv6/nd6.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LwIP/src/core/ipv6/%.o Core/LwIP/src/core/ipv6/%.su Core/LwIP/src/core/ipv6/%.cyclo: ../Core/LwIP/src/core/ipv6/%.c Core/LwIP/src/core/ipv6/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Core/LwIP/system/arch -I../LWIP/Target -I../Core/LwIP/src/include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-LwIP-2f-src-2f-core-2f-ipv6

clean-Core-2f-LwIP-2f-src-2f-core-2f-ipv6:
	-$(RM) ./Core/LwIP/src/core/ipv6/dhcp6.cyclo ./Core/LwIP/src/core/ipv6/dhcp6.d ./Core/LwIP/src/core/ipv6/dhcp6.o ./Core/LwIP/src/core/ipv6/dhcp6.su ./Core/LwIP/src/core/ipv6/ethip6.cyclo ./Core/LwIP/src/core/ipv6/ethip6.d ./Core/LwIP/src/core/ipv6/ethip6.o ./Core/LwIP/src/core/ipv6/ethip6.su ./Core/LwIP/src/core/ipv6/icmp6.cyclo ./Core/LwIP/src/core/ipv6/icmp6.d ./Core/LwIP/src/core/ipv6/icmp6.o ./Core/LwIP/src/core/ipv6/icmp6.su ./Core/LwIP/src/core/ipv6/inet6.cyclo ./Core/LwIP/src/core/ipv6/inet6.d ./Core/LwIP/src/core/ipv6/inet6.o ./Core/LwIP/src/core/ipv6/inet6.su ./Core/LwIP/src/core/ipv6/ip6.cyclo ./Core/LwIP/src/core/ipv6/ip6.d ./Core/LwIP/src/core/ipv6/ip6.o ./Core/LwIP/src/core/ipv6/ip6.su ./Core/LwIP/src/core/ipv6/ip6_addr.cyclo ./Core/LwIP/src/core/ipv6/ip6_addr.d ./Core/LwIP/src/core/ipv6/ip6_addr.o ./Core/LwIP/src/core/ipv6/ip6_addr.su ./Core/LwIP/src/core/ipv6/ip6_frag.cyclo ./Core/LwIP/src/core/ipv6/ip6_frag.d ./Core/LwIP/src/core/ipv6/ip6_frag.o ./Core/LwIP/src/core/ipv6/ip6_frag.su ./Core/LwIP/src/core/ipv6/mld6.cyclo ./Core/LwIP/src/core/ipv6/mld6.d ./Core/LwIP/src/core/ipv6/mld6.o ./Core/LwIP/src/core/ipv6/mld6.su ./Core/LwIP/src/core/ipv6/nd6.cyclo ./Core/LwIP/src/core/ipv6/nd6.d ./Core/LwIP/src/core/ipv6/nd6.o ./Core/LwIP/src/core/ipv6/nd6.su

.PHONY: clean-Core-2f-LwIP-2f-src-2f-core-2f-ipv6

