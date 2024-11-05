################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/LwIP/src/netif/bridgeif.c \
../Core/Src/LwIP/src/netif/bridgeif_fdb.c \
../Core/Src/LwIP/src/netif/ethernet.c \
../Core/Src/LwIP/src/netif/lowpan6.c \
../Core/Src/LwIP/src/netif/lowpan6_ble.c \
../Core/Src/LwIP/src/netif/lowpan6_common.c \
../Core/Src/LwIP/src/netif/slipif.c \
../Core/Src/LwIP/src/netif/zepif.c 

OBJS += \
./Core/Src/LwIP/src/netif/bridgeif.o \
./Core/Src/LwIP/src/netif/bridgeif_fdb.o \
./Core/Src/LwIP/src/netif/ethernet.o \
./Core/Src/LwIP/src/netif/lowpan6.o \
./Core/Src/LwIP/src/netif/lowpan6_ble.o \
./Core/Src/LwIP/src/netif/lowpan6_common.o \
./Core/Src/LwIP/src/netif/slipif.o \
./Core/Src/LwIP/src/netif/zepif.o 

C_DEPS += \
./Core/Src/LwIP/src/netif/bridgeif.d \
./Core/Src/LwIP/src/netif/bridgeif_fdb.d \
./Core/Src/LwIP/src/netif/ethernet.d \
./Core/Src/LwIP/src/netif/lowpan6.d \
./Core/Src/LwIP/src/netif/lowpan6_ble.d \
./Core/Src/LwIP/src/netif/lowpan6_common.d \
./Core/Src/LwIP/src/netif/slipif.d \
./Core/Src/LwIP/src/netif/zepif.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/LwIP/src/netif/%.o Core/Src/LwIP/src/netif/%.su Core/Src/LwIP/src/netif/%.cyclo: ../Core/Src/LwIP/src/netif/%.c Core/Src/LwIP/src/netif/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I"C:/Users/hellm/Desktop/ENSI/la_base/Soft/basile/Core/Src/LwIP/src/include" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-LwIP-2f-src-2f-netif

clean-Core-2f-Src-2f-LwIP-2f-src-2f-netif:
	-$(RM) ./Core/Src/LwIP/src/netif/bridgeif.cyclo ./Core/Src/LwIP/src/netif/bridgeif.d ./Core/Src/LwIP/src/netif/bridgeif.o ./Core/Src/LwIP/src/netif/bridgeif.su ./Core/Src/LwIP/src/netif/bridgeif_fdb.cyclo ./Core/Src/LwIP/src/netif/bridgeif_fdb.d ./Core/Src/LwIP/src/netif/bridgeif_fdb.o ./Core/Src/LwIP/src/netif/bridgeif_fdb.su ./Core/Src/LwIP/src/netif/ethernet.cyclo ./Core/Src/LwIP/src/netif/ethernet.d ./Core/Src/LwIP/src/netif/ethernet.o ./Core/Src/LwIP/src/netif/ethernet.su ./Core/Src/LwIP/src/netif/lowpan6.cyclo ./Core/Src/LwIP/src/netif/lowpan6.d ./Core/Src/LwIP/src/netif/lowpan6.o ./Core/Src/LwIP/src/netif/lowpan6.su ./Core/Src/LwIP/src/netif/lowpan6_ble.cyclo ./Core/Src/LwIP/src/netif/lowpan6_ble.d ./Core/Src/LwIP/src/netif/lowpan6_ble.o ./Core/Src/LwIP/src/netif/lowpan6_ble.su ./Core/Src/LwIP/src/netif/lowpan6_common.cyclo ./Core/Src/LwIP/src/netif/lowpan6_common.d ./Core/Src/LwIP/src/netif/lowpan6_common.o ./Core/Src/LwIP/src/netif/lowpan6_common.su ./Core/Src/LwIP/src/netif/slipif.cyclo ./Core/Src/LwIP/src/netif/slipif.d ./Core/Src/LwIP/src/netif/slipif.o ./Core/Src/LwIP/src/netif/slipif.su ./Core/Src/LwIP/src/netif/zepif.cyclo ./Core/Src/LwIP/src/netif/zepif.d ./Core/Src/LwIP/src/netif/zepif.o ./Core/Src/LwIP/src/netif/zepif.su

.PHONY: clean-Core-2f-Src-2f-LwIP-2f-src-2f-netif

