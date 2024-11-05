################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LwIP/Target/ethernetif.c 

OBJS += \
./Core/LwIP/Target/ethernetif.o 

C_DEPS += \
./Core/LwIP/Target/ethernetif.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LwIP/Target/%.o Core/LwIP/Target/%.su Core/LwIP/Target/%.cyclo: ../Core/LwIP/Target/%.c Core/LwIP/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Core/LwIP/system/arch -I../LWIP/Target -I../Core/LwIP/src/include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-LwIP-2f-Target

clean-Core-2f-LwIP-2f-Target:
	-$(RM) ./Core/LwIP/Target/ethernetif.cyclo ./Core/LwIP/Target/ethernetif.d ./Core/LwIP/Target/ethernetif.o ./Core/LwIP/Target/ethernetif.su

.PHONY: clean-Core-2f-LwIP-2f-Target

