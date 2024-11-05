################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LwIP/src/netif/bridgeif.c \
../Core/LwIP/src/netif/bridgeif_fdb.c \
../Core/LwIP/src/netif/ethernet.c \
../Core/LwIP/src/netif/lowpan6.c \
../Core/LwIP/src/netif/lowpan6_ble.c \
../Core/LwIP/src/netif/lowpan6_common.c \
../Core/LwIP/src/netif/slipif.c \
../Core/LwIP/src/netif/zepif.c 

OBJS += \
./Core/LwIP/src/netif/bridgeif.o \
./Core/LwIP/src/netif/bridgeif_fdb.o \
./Core/LwIP/src/netif/ethernet.o \
./Core/LwIP/src/netif/lowpan6.o \
./Core/LwIP/src/netif/lowpan6_ble.o \
./Core/LwIP/src/netif/lowpan6_common.o \
./Core/LwIP/src/netif/slipif.o \
./Core/LwIP/src/netif/zepif.o 

C_DEPS += \
./Core/LwIP/src/netif/bridgeif.d \
./Core/LwIP/src/netif/bridgeif_fdb.d \
./Core/LwIP/src/netif/ethernet.d \
./Core/LwIP/src/netif/lowpan6.d \
./Core/LwIP/src/netif/lowpan6_ble.d \
./Core/LwIP/src/netif/lowpan6_common.d \
./Core/LwIP/src/netif/slipif.d \
./Core/LwIP/src/netif/zepif.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LwIP/src/netif/%.o Core/LwIP/src/netif/%.su Core/LwIP/src/netif/%.cyclo: ../Core/LwIP/src/netif/%.c Core/LwIP/src/netif/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Core/LwIP/system/arch -I../LWIP/Target -I../Core/LwIP/src/include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-LwIP-2f-src-2f-netif

clean-Core-2f-LwIP-2f-src-2f-netif:
	-$(RM) ./Core/LwIP/src/netif/bridgeif.cyclo ./Core/LwIP/src/netif/bridgeif.d ./Core/LwIP/src/netif/bridgeif.o ./Core/LwIP/src/netif/bridgeif.su ./Core/LwIP/src/netif/bridgeif_fdb.cyclo ./Core/LwIP/src/netif/bridgeif_fdb.d ./Core/LwIP/src/netif/bridgeif_fdb.o ./Core/LwIP/src/netif/bridgeif_fdb.su ./Core/LwIP/src/netif/ethernet.cyclo ./Core/LwIP/src/netif/ethernet.d ./Core/LwIP/src/netif/ethernet.o ./Core/LwIP/src/netif/ethernet.su ./Core/LwIP/src/netif/lowpan6.cyclo ./Core/LwIP/src/netif/lowpan6.d ./Core/LwIP/src/netif/lowpan6.o ./Core/LwIP/src/netif/lowpan6.su ./Core/LwIP/src/netif/lowpan6_ble.cyclo ./Core/LwIP/src/netif/lowpan6_ble.d ./Core/LwIP/src/netif/lowpan6_ble.o ./Core/LwIP/src/netif/lowpan6_ble.su ./Core/LwIP/src/netif/lowpan6_common.cyclo ./Core/LwIP/src/netif/lowpan6_common.d ./Core/LwIP/src/netif/lowpan6_common.o ./Core/LwIP/src/netif/lowpan6_common.su ./Core/LwIP/src/netif/slipif.cyclo ./Core/LwIP/src/netif/slipif.d ./Core/LwIP/src/netif/slipif.o ./Core/LwIP/src/netif/slipif.su ./Core/LwIP/src/netif/zepif.cyclo ./Core/LwIP/src/netif/zepif.d ./Core/LwIP/src/netif/zepif.o ./Core/LwIP/src/netif/zepif.su

.PHONY: clean-Core-2f-LwIP-2f-src-2f-netif

