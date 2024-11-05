################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LwIP/src/core/ipv4/autoip.c \
../Core/LwIP/src/core/ipv4/dhcp.c \
../Core/LwIP/src/core/ipv4/etharp.c \
../Core/LwIP/src/core/ipv4/icmp.c \
../Core/LwIP/src/core/ipv4/igmp.c \
../Core/LwIP/src/core/ipv4/ip4.c \
../Core/LwIP/src/core/ipv4/ip4_addr.c \
../Core/LwIP/src/core/ipv4/ip4_frag.c 

OBJS += \
./Core/LwIP/src/core/ipv4/autoip.o \
./Core/LwIP/src/core/ipv4/dhcp.o \
./Core/LwIP/src/core/ipv4/etharp.o \
./Core/LwIP/src/core/ipv4/icmp.o \
./Core/LwIP/src/core/ipv4/igmp.o \
./Core/LwIP/src/core/ipv4/ip4.o \
./Core/LwIP/src/core/ipv4/ip4_addr.o \
./Core/LwIP/src/core/ipv4/ip4_frag.o 

C_DEPS += \
./Core/LwIP/src/core/ipv4/autoip.d \
./Core/LwIP/src/core/ipv4/dhcp.d \
./Core/LwIP/src/core/ipv4/etharp.d \
./Core/LwIP/src/core/ipv4/icmp.d \
./Core/LwIP/src/core/ipv4/igmp.d \
./Core/LwIP/src/core/ipv4/ip4.d \
./Core/LwIP/src/core/ipv4/ip4_addr.d \
./Core/LwIP/src/core/ipv4/ip4_frag.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LwIP/src/core/ipv4/%.o Core/LwIP/src/core/ipv4/%.su Core/LwIP/src/core/ipv4/%.cyclo: ../Core/LwIP/src/core/ipv4/%.c Core/LwIP/src/core/ipv4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Core/LwIP/system/arch -I../LWIP/Target -I../Core/LwIP/src/include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-LwIP-2f-src-2f-core-2f-ipv4

clean-Core-2f-LwIP-2f-src-2f-core-2f-ipv4:
	-$(RM) ./Core/LwIP/src/core/ipv4/autoip.cyclo ./Core/LwIP/src/core/ipv4/autoip.d ./Core/LwIP/src/core/ipv4/autoip.o ./Core/LwIP/src/core/ipv4/autoip.su ./Core/LwIP/src/core/ipv4/dhcp.cyclo ./Core/LwIP/src/core/ipv4/dhcp.d ./Core/LwIP/src/core/ipv4/dhcp.o ./Core/LwIP/src/core/ipv4/dhcp.su ./Core/LwIP/src/core/ipv4/etharp.cyclo ./Core/LwIP/src/core/ipv4/etharp.d ./Core/LwIP/src/core/ipv4/etharp.o ./Core/LwIP/src/core/ipv4/etharp.su ./Core/LwIP/src/core/ipv4/icmp.cyclo ./Core/LwIP/src/core/ipv4/icmp.d ./Core/LwIP/src/core/ipv4/icmp.o ./Core/LwIP/src/core/ipv4/icmp.su ./Core/LwIP/src/core/ipv4/igmp.cyclo ./Core/LwIP/src/core/ipv4/igmp.d ./Core/LwIP/src/core/ipv4/igmp.o ./Core/LwIP/src/core/ipv4/igmp.su ./Core/LwIP/src/core/ipv4/ip4.cyclo ./Core/LwIP/src/core/ipv4/ip4.d ./Core/LwIP/src/core/ipv4/ip4.o ./Core/LwIP/src/core/ipv4/ip4.su ./Core/LwIP/src/core/ipv4/ip4_addr.cyclo ./Core/LwIP/src/core/ipv4/ip4_addr.d ./Core/LwIP/src/core/ipv4/ip4_addr.o ./Core/LwIP/src/core/ipv4/ip4_addr.su ./Core/LwIP/src/core/ipv4/ip4_frag.cyclo ./Core/LwIP/src/core/ipv4/ip4_frag.d ./Core/LwIP/src/core/ipv4/ip4_frag.o ./Core/LwIP/src/core/ipv4/ip4_frag.su

.PHONY: clean-Core-2f-LwIP-2f-src-2f-core-2f-ipv4

