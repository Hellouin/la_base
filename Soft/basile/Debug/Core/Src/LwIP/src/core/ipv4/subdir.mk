################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/LwIP/src/core/ipv4/autoip.c \
../Core/Src/LwIP/src/core/ipv4/dhcp.c \
../Core/Src/LwIP/src/core/ipv4/etharp.c \
../Core/Src/LwIP/src/core/ipv4/icmp.c \
../Core/Src/LwIP/src/core/ipv4/igmp.c \
../Core/Src/LwIP/src/core/ipv4/ip4.c \
../Core/Src/LwIP/src/core/ipv4/ip4_addr.c \
../Core/Src/LwIP/src/core/ipv4/ip4_frag.c 

OBJS += \
./Core/Src/LwIP/src/core/ipv4/autoip.o \
./Core/Src/LwIP/src/core/ipv4/dhcp.o \
./Core/Src/LwIP/src/core/ipv4/etharp.o \
./Core/Src/LwIP/src/core/ipv4/icmp.o \
./Core/Src/LwIP/src/core/ipv4/igmp.o \
./Core/Src/LwIP/src/core/ipv4/ip4.o \
./Core/Src/LwIP/src/core/ipv4/ip4_addr.o \
./Core/Src/LwIP/src/core/ipv4/ip4_frag.o 

C_DEPS += \
./Core/Src/LwIP/src/core/ipv4/autoip.d \
./Core/Src/LwIP/src/core/ipv4/dhcp.d \
./Core/Src/LwIP/src/core/ipv4/etharp.d \
./Core/Src/LwIP/src/core/ipv4/icmp.d \
./Core/Src/LwIP/src/core/ipv4/igmp.d \
./Core/Src/LwIP/src/core/ipv4/ip4.d \
./Core/Src/LwIP/src/core/ipv4/ip4_addr.d \
./Core/Src/LwIP/src/core/ipv4/ip4_frag.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/LwIP/src/core/ipv4/%.o Core/Src/LwIP/src/core/ipv4/%.su Core/Src/LwIP/src/core/ipv4/%.cyclo: ../Core/Src/LwIP/src/core/ipv4/%.c Core/Src/LwIP/src/core/ipv4/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I"C:/Users/hellm/Desktop/ENSI/la_base/Soft/basile/Core/Src/LwIP/src/include" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-LwIP-2f-src-2f-core-2f-ipv4

clean-Core-2f-Src-2f-LwIP-2f-src-2f-core-2f-ipv4:
	-$(RM) ./Core/Src/LwIP/src/core/ipv4/autoip.cyclo ./Core/Src/LwIP/src/core/ipv4/autoip.d ./Core/Src/LwIP/src/core/ipv4/autoip.o ./Core/Src/LwIP/src/core/ipv4/autoip.su ./Core/Src/LwIP/src/core/ipv4/dhcp.cyclo ./Core/Src/LwIP/src/core/ipv4/dhcp.d ./Core/Src/LwIP/src/core/ipv4/dhcp.o ./Core/Src/LwIP/src/core/ipv4/dhcp.su ./Core/Src/LwIP/src/core/ipv4/etharp.cyclo ./Core/Src/LwIP/src/core/ipv4/etharp.d ./Core/Src/LwIP/src/core/ipv4/etharp.o ./Core/Src/LwIP/src/core/ipv4/etharp.su ./Core/Src/LwIP/src/core/ipv4/icmp.cyclo ./Core/Src/LwIP/src/core/ipv4/icmp.d ./Core/Src/LwIP/src/core/ipv4/icmp.o ./Core/Src/LwIP/src/core/ipv4/icmp.su ./Core/Src/LwIP/src/core/ipv4/igmp.cyclo ./Core/Src/LwIP/src/core/ipv4/igmp.d ./Core/Src/LwIP/src/core/ipv4/igmp.o ./Core/Src/LwIP/src/core/ipv4/igmp.su ./Core/Src/LwIP/src/core/ipv4/ip4.cyclo ./Core/Src/LwIP/src/core/ipv4/ip4.d ./Core/Src/LwIP/src/core/ipv4/ip4.o ./Core/Src/LwIP/src/core/ipv4/ip4.su ./Core/Src/LwIP/src/core/ipv4/ip4_addr.cyclo ./Core/Src/LwIP/src/core/ipv4/ip4_addr.d ./Core/Src/LwIP/src/core/ipv4/ip4_addr.o ./Core/Src/LwIP/src/core/ipv4/ip4_addr.su ./Core/Src/LwIP/src/core/ipv4/ip4_frag.cyclo ./Core/Src/LwIP/src/core/ipv4/ip4_frag.d ./Core/Src/LwIP/src/core/ipv4/ip4_frag.o ./Core/Src/LwIP/src/core/ipv4/ip4_frag.su

.PHONY: clean-Core-2f-Src-2f-LwIP-2f-src-2f-core-2f-ipv4

