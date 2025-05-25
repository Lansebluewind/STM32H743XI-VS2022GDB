@echo off
REM Run this file to build the project outside of the IDE.
REM WARNING: if using a different machine, copy the .rsp files together with this script.
echo main.cpp
C:\SysGCC\arm-eabi\bin\arm-none-eabi-g++.exe @"VisualGDB/Debug/main.gcc.rsp" || exit 1
echo system_stm32h7xx.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/system_stm32h7xx.gcc.rsp" || exit 1
echo bsp_debug_usart.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/USER/Debug_usart/bsp_debug_usart.gcc.rsp" || exit 1
echo mystdio.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/USER/Debug_usart/mystdio.gcc.rsp" || exit 1
echo stm32h7xx_it.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/USER/stm32h7xx_it.gcc.rsp" || exit 1
echo SystemClock_config.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/USER/SystemClock_config/SystemClock_config.gcc.rsp" || exit 1
echo bsp_SysTick.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/USER/Systick_delay/bsp_SysTick.gcc.rsp" || exit 1
echo startup_stm32h743xx.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/StartupFiles/startup_stm32h743xx.gcc.rsp" || exit 1
echo stm32h7xx_hal.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal.gcc.rsp" || exit 1
echo stm32h7xx_hal_adc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_adc.gcc.rsp" || exit 1
echo stm32h7xx_hal_adc_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_adc_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_cec.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_cec.gcc.rsp" || exit 1
echo stm32h7xx_hal_comp.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_comp.gcc.rsp" || exit 1
echo stm32h7xx_hal_cordic.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_cordic.gcc.rsp" || exit 1
echo stm32h7xx_hal_cortex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_cortex.gcc.rsp" || exit 1
echo stm32h7xx_hal_crc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_crc.gcc.rsp" || exit 1
echo stm32h7xx_hal_crc_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_crc_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_cryp.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_cryp.gcc.rsp" || exit 1
echo stm32h7xx_hal_cryp_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_cryp_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_dac.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dac.gcc.rsp" || exit 1
echo stm32h7xx_hal_dac_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dac_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_dcmi.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dcmi.gcc.rsp" || exit 1
echo stm32h7xx_hal_dfsdm.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dfsdm.gcc.rsp" || exit 1
echo stm32h7xx_hal_dfsdm_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dfsdm_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_dma.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dma.gcc.rsp" || exit 1
echo stm32h7xx_hal_dma2d.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dma2d.gcc.rsp" || exit 1
echo stm32h7xx_hal_dma_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dma_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_dsi.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dsi.gcc.rsp" || exit 1
echo stm32h7xx_hal_dts.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dts.gcc.rsp" || exit 1
echo stm32h7xx_hal_eth.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_eth.gcc.rsp" || exit 1
echo stm32h7xx_hal_eth_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_eth_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_exti.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.gcc.rsp" || exit 1
echo stm32h7xx_hal_fdcan.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_fdcan.gcc.rsp" || exit 1
echo stm32h7xx_hal_flash.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash.gcc.rsp" || exit 1
echo stm32h7xx_hal_flash_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_fmac.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_fmac.gcc.rsp" || exit 1
echo stm32h7xx_hal_gfxmmu.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_gfxmmu.gcc.rsp" || exit 1
echo stm32h7xx_hal_gpio.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_gpio.gcc.rsp" || exit 1
echo stm32h7xx_hal_hash.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_hash.gcc.rsp" || exit 1
echo stm32h7xx_hal_hash_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_hash_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_hcd.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_hcd.gcc.rsp" || exit 1
echo stm32h7xx_hal_hrtim.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_hrtim.gcc.rsp" || exit 1
echo stm32h7xx_hal_hsem.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_hsem.gcc.rsp" || exit 1
echo stm32h7xx_hal_i2c.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_i2c.gcc.rsp" || exit 1
echo stm32h7xx_hal_i2c_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_i2c_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_i2s.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_i2s.gcc.rsp" || exit 1
echo stm32h7xx_hal_i2s_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_i2s_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_irda.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_irda.gcc.rsp" || exit 1
echo stm32h7xx_hal_iwdg.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_iwdg.gcc.rsp" || exit 1
echo stm32h7xx_hal_jpeg.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_jpeg.gcc.rsp" || exit 1
echo stm32h7xx_hal_lptim.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_lptim.gcc.rsp" || exit 1
echo stm32h7xx_hal_ltdc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_ltdc.gcc.rsp" || exit 1
echo stm32h7xx_hal_ltdc_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_ltdc_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_mdios.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_mdios.gcc.rsp" || exit 1
echo stm32h7xx_hal_mdma.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_mdma.gcc.rsp" || exit 1
echo stm32h7xx_hal_mmc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_mmc.gcc.rsp" || exit 1
echo stm32h7xx_hal_mmc_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_mmc_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_nand.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_nand.gcc.rsp" || exit 1
echo stm32h7xx_hal_nor.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_nor.gcc.rsp" || exit 1
echo stm32h7xx_hal_opamp.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_opamp.gcc.rsp" || exit 1
echo stm32h7xx_hal_opamp_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_opamp_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_ospi.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_ospi.gcc.rsp" || exit 1
echo stm32h7xx_hal_otfdec.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_otfdec.gcc.rsp" || exit 1
echo stm32h7xx_hal_pcd.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pcd.gcc.rsp" || exit 1
echo stm32h7xx_hal_pcd_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pcd_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_pssi.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pssi.gcc.rsp" || exit 1
echo stm32h7xx_hal_pwr.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pwr.gcc.rsp" || exit 1
echo stm32h7xx_hal_pwr_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pwr_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_qspi.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_qspi.gcc.rsp" || exit 1
echo stm32h7xx_hal_ramecc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_ramecc.gcc.rsp" || exit 1
echo stm32h7xx_hal_rcc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rcc.gcc.rsp" || exit 1
echo stm32h7xx_hal_rcc_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rcc_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_rng.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rng.gcc.rsp" || exit 1
echo stm32h7xx_hal_rng_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rng_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_rtc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rtc.gcc.rsp" || exit 1
echo stm32h7xx_hal_rtc_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rtc_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_sai.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sai.gcc.rsp" || exit 1
echo stm32h7xx_hal_sai_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sai_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_sd.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sd.gcc.rsp" || exit 1
echo stm32h7xx_hal_sdio.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sdio.gcc.rsp" || exit 1
echo stm32h7xx_hal_sdram.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sdram.gcc.rsp" || exit 1
echo stm32h7xx_hal_sd_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sd_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_smartcard.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_smartcard.gcc.rsp" || exit 1
echo stm32h7xx_hal_smartcard_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_smartcard_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_smbus.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_smbus.gcc.rsp" || exit 1
echo stm32h7xx_hal_smbus_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_smbus_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_spdifrx.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_spdifrx.gcc.rsp" || exit 1
echo stm32h7xx_hal_spi.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_spi.gcc.rsp" || exit 1
echo stm32h7xx_hal_spi_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_spi_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_sram.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sram.gcc.rsp" || exit 1
echo stm32h7xx_hal_swpmi.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_swpmi.gcc.rsp" || exit 1
echo stm32h7xx_hal_tim.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_tim.gcc.rsp" || exit 1
echo stm32h7xx_hal_tim_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_tim_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_uart.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_uart.gcc.rsp" || exit 1
echo stm32h7xx_hal_uart_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_uart_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_usart.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_usart.gcc.rsp" || exit 1
echo stm32h7xx_hal_usart_ex.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_usart_ex.gcc.rsp" || exit 1
echo stm32h7xx_hal_wwdg.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_wwdg.gcc.rsp" || exit 1
echo stm32h7xx_ll_usb.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_usb.gcc.rsp" || exit 1
echo stm32h7xx_ll_adc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_adc.gcc.rsp" || exit 1
echo stm32h7xx_ll_bdma.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_bdma.gcc.rsp" || exit 1
echo stm32h7xx_ll_comp.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_comp.gcc.rsp" || exit 1
echo stm32h7xx_ll_cordic.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_cordic.gcc.rsp" || exit 1
echo stm32h7xx_ll_crc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_crc.gcc.rsp" || exit 1
echo stm32h7xx_ll_crs.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_crs.gcc.rsp" || exit 1
echo stm32h7xx_ll_dac.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_dac.gcc.rsp" || exit 1
echo stm32h7xx_ll_delayblock.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_delayblock.gcc.rsp" || exit 1
echo stm32h7xx_ll_dma.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_dma.gcc.rsp" || exit 1
echo stm32h7xx_ll_dma2d.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_dma2d.gcc.rsp" || exit 1
echo stm32h7xx_ll_exti.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_exti.gcc.rsp" || exit 1
echo stm32h7xx_ll_fmac.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_fmac.gcc.rsp" || exit 1
echo stm32h7xx_ll_fmc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_fmc.gcc.rsp" || exit 1
echo stm32h7xx_ll_gpio.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_gpio.gcc.rsp" || exit 1
echo stm32h7xx_ll_hrtim.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_hrtim.gcc.rsp" || exit 1
echo stm32h7xx_ll_i2c.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_i2c.gcc.rsp" || exit 1
echo stm32h7xx_ll_lptim.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_lptim.gcc.rsp" || exit 1
echo stm32h7xx_ll_lpuart.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_lpuart.gcc.rsp" || exit 1
echo stm32h7xx_ll_mdma.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_mdma.gcc.rsp" || exit 1
echo stm32h7xx_ll_opamp.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_opamp.gcc.rsp" || exit 1
echo stm32h7xx_ll_pwr.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_pwr.gcc.rsp" || exit 1
echo stm32h7xx_ll_rcc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_rcc.gcc.rsp" || exit 1
echo stm32h7xx_ll_rng.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_rng.gcc.rsp" || exit 1
echo stm32h7xx_ll_rtc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_rtc.gcc.rsp" || exit 1
echo stm32h7xx_ll_sdmmc.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_sdmmc.gcc.rsp" || exit 1
echo stm32h7xx_ll_spi.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_spi.gcc.rsp" || exit 1
echo stm32h7xx_ll_swpmi.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_swpmi.gcc.rsp" || exit 1
echo stm32h7xx_ll_tim.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_tim.gcc.rsp" || exit 1
echo stm32h7xx_ll_usart.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_usart.gcc.rsp" || exit 1
echo stm32h7xx_ll_utils.c
C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe @"VisualGDB/Debug/__BSP_ROOT__/STM32H7xxxx/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_utils.gcc.rsp" || exit 1
echo Linking VisualGDB/Debug/test...
C:\SysGCC\arm-eabi\bin\arm-none-eabi-g++.exe @VisualGDB/Debug/test.link.rsp || exit 1
C:\SysGCC\arm-eabi\bin\arm-none-eabi-objcopy.exe @VisualGDB/Debug/test.mkbin.rsp || exit 1
