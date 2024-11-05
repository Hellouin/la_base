################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LwIP/App/lwip.c 

OBJS += \
./Core/LwIP/App/lwip.o 

C_DEPS += \
./Core/LwIP/App/lwip.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LwIP/App/%.o Core/LwIP/App/%.su Core/LwIP/App/%.cyclo: ../Core/LwIP/App/%.c Core/LwIP/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Core/LwIP/system/arch -I../LWIP/Target -I../Core/LwIP/src/include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-LwIP-2f-App

clean-Core-2f-LwIP-2f-App:
	-$(RM) ./Core/LwIP/App/lwip.cyclo ./Core/LwIP/App/lwip.d ./Core/LwIP/App/lwip.o ./Core/LwIP/App/lwip.su

.PHONY: clean-Core-2f-LwIP-2f-App

