################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/LwIP/src/api/api_lib.c \
../Core/Src/LwIP/src/api/api_msg.c \
../Core/Src/LwIP/src/api/err.c \
../Core/Src/LwIP/src/api/if_api.c \
../Core/Src/LwIP/src/api/netbuf.c \
../Core/Src/LwIP/src/api/netdb.c \
../Core/Src/LwIP/src/api/netifapi.c \
../Core/Src/LwIP/src/api/sockets.c \
../Core/Src/LwIP/src/api/tcpip.c 

OBJS += \
./Core/Src/LwIP/src/api/api_lib.o \
./Core/Src/LwIP/src/api/api_msg.o \
./Core/Src/LwIP/src/api/err.o \
./Core/Src/LwIP/src/api/if_api.o \
./Core/Src/LwIP/src/api/netbuf.o \
./Core/Src/LwIP/src/api/netdb.o \
./Core/Src/LwIP/src/api/netifapi.o \
./Core/Src/LwIP/src/api/sockets.o \
./Core/Src/LwIP/src/api/tcpip.o 

C_DEPS += \
./Core/Src/LwIP/src/api/api_lib.d \
./Core/Src/LwIP/src/api/api_msg.d \
./Core/Src/LwIP/src/api/err.d \
./Core/Src/LwIP/src/api/if_api.d \
./Core/Src/LwIP/src/api/netbuf.d \
./Core/Src/LwIP/src/api/netdb.d \
./Core/Src/LwIP/src/api/netifapi.d \
./Core/Src/LwIP/src/api/sockets.d \
./Core/Src/LwIP/src/api/tcpip.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/LwIP/src/api/%.o Core/Src/LwIP/src/api/%.su Core/Src/LwIP/src/api/%.cyclo: ../Core/Src/LwIP/src/api/%.c Core/Src/LwIP/src/api/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I"C:/Users/hellm/Desktop/ENSI/la_base/Soft/basile/Core/Src/LwIP/src/include" -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-LwIP-2f-src-2f-api

clean-Core-2f-Src-2f-LwIP-2f-src-2f-api:
	-$(RM) ./Core/Src/LwIP/src/api/api_lib.cyclo ./Core/Src/LwIP/src/api/api_lib.d ./Core/Src/LwIP/src/api/api_lib.o ./Core/Src/LwIP/src/api/api_lib.su ./Core/Src/LwIP/src/api/api_msg.cyclo ./Core/Src/LwIP/src/api/api_msg.d ./Core/Src/LwIP/src/api/api_msg.o ./Core/Src/LwIP/src/api/api_msg.su ./Core/Src/LwIP/src/api/err.cyclo ./Core/Src/LwIP/src/api/err.d ./Core/Src/LwIP/src/api/err.o ./Core/Src/LwIP/src/api/err.su ./Core/Src/LwIP/src/api/if_api.cyclo ./Core/Src/LwIP/src/api/if_api.d ./Core/Src/LwIP/src/api/if_api.o ./Core/Src/LwIP/src/api/if_api.su ./Core/Src/LwIP/src/api/netbuf.cyclo ./Core/Src/LwIP/src/api/netbuf.d ./Core/Src/LwIP/src/api/netbuf.o ./Core/Src/LwIP/src/api/netbuf.su ./Core/Src/LwIP/src/api/netdb.cyclo ./Core/Src/LwIP/src/api/netdb.d ./Core/Src/LwIP/src/api/netdb.o ./Core/Src/LwIP/src/api/netdb.su ./Core/Src/LwIP/src/api/netifapi.cyclo ./Core/Src/LwIP/src/api/netifapi.d ./Core/Src/LwIP/src/api/netifapi.o ./Core/Src/LwIP/src/api/netifapi.su ./Core/Src/LwIP/src/api/sockets.cyclo ./Core/Src/LwIP/src/api/sockets.d ./Core/Src/LwIP/src/api/sockets.o ./Core/Src/LwIP/src/api/sockets.su ./Core/Src/LwIP/src/api/tcpip.cyclo ./Core/Src/LwIP/src/api/tcpip.d ./Core/Src/LwIP/src/api/tcpip.o ./Core/Src/LwIP/src/api/tcpip.su

.PHONY: clean-Core-2f-Src-2f-LwIP-2f-src-2f-api

