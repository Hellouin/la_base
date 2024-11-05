################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LwIP/src/apps/mqtt/mqtt.c 

OBJS += \
./Core/LwIP/src/apps/mqtt/mqtt.o 

C_DEPS += \
./Core/LwIP/src/apps/mqtt/mqtt.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LwIP/src/apps/mqtt/%.o Core/LwIP/src/apps/mqtt/%.su Core/LwIP/src/apps/mqtt/%.cyclo: ../Core/LwIP/src/apps/mqtt/%.c Core/LwIP/src/apps/mqtt/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Core/LwIP/system/arch -I../LWIP/Target -I../Core/LwIP/src/include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-LwIP-2f-src-2f-apps-2f-mqtt

clean-Core-2f-LwIP-2f-src-2f-apps-2f-mqtt:
	-$(RM) ./Core/LwIP/src/apps/mqtt/mqtt.cyclo ./Core/LwIP/src/apps/mqtt/mqtt.d ./Core/LwIP/src/apps/mqtt/mqtt.o ./Core/LwIP/src/apps/mqtt/mqtt.su

.PHONY: clean-Core-2f-LwIP-2f-src-2f-apps-2f-mqtt

