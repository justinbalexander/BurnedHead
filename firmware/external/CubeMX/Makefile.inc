CFLAGS_DEFS := -DSTM32F767xx

module_includes := Core/Inc \
Drivers/CMSIS/Device/ST/STM32F7xx/Include \
Drivers/CMSIS/Include \
Drivers/STM32F7xx_HAL_Driver/Inc \
Utilities/JPEG

module_objects := Core/Src/main.o \
Core/Src/stm32f7xx_hal_msp.o \
Core/Src/stm32f7xx_it.o \
Core/Src/system_stm32f7xx.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_can.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cec.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cortex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cryp.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cryp_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dac.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dac_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dfsdm.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma2d.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dsi.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_eth.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_exti.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hash.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hash_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hcd.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2s.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_irda.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_iwdg.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_jpeg.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_lptim.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_mdios.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_mmc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_nand.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_nor.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pcd.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pcd_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_qspi.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rng.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sd.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sdram.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_smartcard.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_smartcard_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_smbus.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spdifrx.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sram.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart_ex.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_usart.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_wwdg.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_adc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_crc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_dac.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_dma2d.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_dma.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_exti.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_fmc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_gpio.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_i2c.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_lptim.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_pwr.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_rcc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_rng.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_rtc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_sdmmc.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_spi.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_tim.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_usart.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_usb.o \
Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_utils.o \

# Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_msp_template.o \
# Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_timebase_rtc_alarm_template.o \
# Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_timebase_rtc_wakeup_template.o \
# Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_timebase_tim_template.o \

module_dir := $(call GetCurrentMakefileDirectory)

module_objects := $(addprefix $(module_dir)/,$(module_objects))
module_includes := $(addprefix $(module_dir)/,$(module_includes))

$(call MakeObjectsDependOnCurrentMakefile, $(module_objects))

objects += $(module_objects)
CFLAGS_INC += $(addprefix -I, $(module_includes))
