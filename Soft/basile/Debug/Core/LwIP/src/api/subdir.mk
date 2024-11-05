################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LwIP/src/api/api_lib.c \
../Core/LwIP/src/api/api_msg.c \
../Core/LwIP/src/api/err.c \
../Core/LwIP/src/api/if_api.c \
../Core/LwIP/src/api/netbuf.c \
../Core/LwIP/src/api/netdb.c \
../Core/LwIP/src/api/netifapi.c \
../Core/LwIP/src/api/sockets.c \
../Core/LwIP/src/api/tcpip.c 

OBJS += \
./Core/LwIP/src/api/api_lib.o \
./Core/LwIP/src/api/api_msg.o \
./Core/LwIP/src/api/err.o \
./Core/LwIP/src/api/if_api.o \
./Core/LwIP/src/api/netbuf.o \
./Core/LwIP/src/api/netdb.o \
./Core/LwIP/src/api/netifapi.o \
./Core/LwIP/src/api/sockets.o \
./Core/LwIP/src/api/tcpip.o 

C_DEPS += \
./Core/LwIP/src/api/api_lib.d \
./Core/LwIP/src/api/api_msg.d \
./Core/LwIP/src/api/err.d \
./Core/LwIP/src/api/if_api.d \
./Core/LwIP/src/api/netbuf.d \
./Core/LwIP/src/api/netdb.d \
./Core/LwIP/src/api/netifapi.d \
./Core/LwIP/src/api/sockets.d \
./Core/LwIP/src/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LwIP/src/api/%.o Core/LwIP/src/api/%.su Core/LwIP/src/api/%.cyclo: ../Core/LwIP/src/api/%.c Core/LwIP/src/api/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Core/LwIP/system/arch -I../LWIP/Target -I../Core/LwIP/src/include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-LwIP-2f-src-2f-api

clean-Core-2f-LwIP-2f-src-2f-api:
	-$(RM) ./Core/LwIP/src/api/api_lib.cyclo ./Core/LwIP/src/api/api_lib.d ./Core/LwIP/src/api/api_lib.o ./Core/LwIP/src/api/api_lib.su ./Core/LwIP/src/api/api_msg.cyclo ./Core/LwIP/src/api/api_msg.d ./Core/LwIP/src/api/api_msg.o ./Core/LwIP/src/api/api_msg.su ./Core/LwIP/src/api/err.cyclo ./Core/LwIP/src/api/err.d ./Core/LwIP/src/api/err.o ./Core/LwIP/src/api/err.su ./Core/LwIP/src/api/if_api.cyclo ./Core/LwIP/src/api/if_api.d ./Core/LwIP/src/api/if_api.o ./Core/LwIP/src/api/if_api.su ./Core/LwIP/src/api/netbuf.cyclo ./Core/LwIP/src/api/netbuf.d ./Core/LwIP/src/api/netbuf.o ./Core/LwIP/src/api/netbuf.su ./Core/LwIP/src/api/netdb.cyclo ./Core/LwIP/src/api/netdb.d ./Core/LwIP/src/api/netdb.o ./Core/LwIP/src/api/netdb.su ./Core/LwIP/src/api/netifapi.cyclo ./Core/LwIP/src/api/netifapi.d ./Core/LwIP/src/api/netifapi.o ./Core/LwIP/src/api/netifapi.su ./Core/LwIP/src/api/sockets.cyclo ./Core/LwIP/src/api/sockets.d ./Core/LwIP/src/api/sockets.o ./Core/LwIP/src/api/sockets.su ./Core/LwIP/src/api/tcpip.cyclo ./Core/LwIP/src/api/tcpip.d ./Core/LwIP/src/api/tcpip.o ./Core/LwIP/src/api/tcpip.su

.PHONY: clean-Core-2f-LwIP-2f-src-2f-api

