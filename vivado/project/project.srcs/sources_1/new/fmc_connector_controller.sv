`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 31.07.2024 21:47:43
// Design Name:
// Module Name: fmc_connector_controller
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// Voltage pins and power pins are not included in this module
//////////////////////////////////////////////////////////////////////////////////


module fmc_connector_controller(
    // Connector concrete clock signals
    input  logic clk0_p_mezzanine,                                   // Unused by AD917x
    input  logic clk0_n_mezzanine,                                   // Unused by AD917x
    input  logic clk1_p_mezzanine,                                   // Unused by AD917x
    input  logic clk1_n_mezzanine,                                   // Unused by AD917x
    input  logic clk2_p_bidirectional,                               // Unused by AD917x
    input  logic clk2_n_bidirectional,                               // Unused by AD917x
    input  logic clk3_p_bidirectional,                               // Unused by AD917x
    input  logic clk3_n_bidirectional,                               // Unused by AD917x
    input  logic clk0_p_multigigabit,                                // BR40_P
    input  logic clk0_n_multigigabit,                                // BR40_N
    input  logic clk1_p_multigigabit,                                // BR40_EXT_P
    input  logic clk1_n_multigigabit,                                // BR40_EXT_N
    // Driver select signal for bidirectional clock pins
    input  logic bidirectional_clock_driver_select,                  // Unused by AD917x
    // Low-pin count user-defined single-ended or differential signals, bank A
    // Some pins are clock capable
    input  logic low_pin_count__bank_a_port00_p_clock_capable,       // SYSREF2_P
    input  logic low_pin_count__bank_a_port00_n_clock_capable,       // SYSREF2_N
    input  logic low_pin_count__bank_a_port01_p_clock_capable,       // Unused by AD917x
    input  logic low_pin_count__bank_a_port01_n_clock_capable,       // Unused by AD917x
    input  logic low_pin_count__bank_a_port02_p,                     // SYNC1_P
    input  logic low_pin_count__bank_a_port02_n,                     // SYNC1_N
    output logic low_pin_count__bank_a_port03_p,                     // FMC_SCK
    output logic low_pin_count__bank_a_port03_n,                     // FMC_MOSI
    input  logic low_pin_count__bank_a_port04_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port04_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port05_p,                     // FMC_CS2
    input  logic low_pin_count__bank_a_port05_n,                     // FMC_SPI_EN
    input  logic low_pin_count__bank_a_port06_p,                     // FMC_TXEN_0
    input  logic low_pin_count__bank_a_port06_n,                     // FMC_TXEN_1
    input  logic low_pin_count__bank_a_port07_p,                     // FMC_PE_CTRL
    input  logic low_pin_count__bank_a_port07_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port08_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port08_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port09_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port09_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port10_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port10_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port11_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port11_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port12_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port12_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port13_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port13_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port14_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port14_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port15_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port15_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port16_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port16_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port17_p_clock_capable,       // Unused by AD917x
    input  logic low_pin_count__bank_a_port17_n_clock_capable,       // Unused by AD917x
    input  logic low_pin_count__bank_a_port18_p_clock_capable,       // Unused by AD917x
    input  logic low_pin_count__bank_a_port18_n_clock_capable,       // Unused by AD917x
    input  logic low_pin_count__bank_a_port19_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port19_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port20_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port20_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port21_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port21_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port22_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port22_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port23_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port23_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port24_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port24_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port25_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port25_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port26_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port26_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port27_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port27_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port28_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port28_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port29_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port29_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port30_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port30_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port31_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port31_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port32_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port32_n,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port33_p,                     // Unused by AD917x
    input  logic low_pin_count__bank_a_port33_n,                     // Unused by AD917x
    // High-pin count user-defined single-ended or differential signals, bank A
    // Some pins are clock capable
    input  logic high_pin_count__bank_a_port00_p_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_a_port00_n_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_a_port01_p_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_a_port01_n_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_a_port02_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port02_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port03_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port03_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port04_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port04_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port05_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port05_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port06_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port06_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port07_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port07_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port08_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port08_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port09_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port09_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port10_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port10_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port11_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port11_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port12_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port12_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port13_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port13_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port14_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port14_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port15_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port15_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port16_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port16_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port17_p_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_a_port17_n_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_a_port18_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port18_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port19_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port19_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port20_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port20_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port21_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port21_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port22_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port22_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port23_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_a_port23_n,                    // Unused by AD917x
    // High-pin count user-defined single-ended or differential signals, bank B
    // Some pins are clock capable
    input  logic high_pin_count__bank_b_port00_p_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_b_port00_n_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_b_port01_p_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_b_port01_n_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_b_port02_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port02_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port03_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port03_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port04_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port04_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port05_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port05_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port06_p_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_b_port06_n_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_b_port07_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port07_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port08_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port08_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port09_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port09_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port10_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port10_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port11_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port11_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port12_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port12_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port13_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port13_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port14_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port14_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port15_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port15_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port16_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port16_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port17_p_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_b_port17_n_clock_capable,      // Unused by AD917x
    input  logic high_pin_count__bank_b_port18_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port18_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port19_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port19_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port20_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port20_n,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port21_p,                    // Unused by AD917x
    input  logic high_pin_count__bank_b_port21_n,                    // Unused by AD917x
    // Multi-gigabit transciever data pairs, mezzanine to FPGA
    input  logic multigigabit_mezzanine2fpga_data0_p,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data0_n,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data1_p,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data1_n,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data2_p,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data2_n,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data3_p,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data3_n,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data4_p,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data4_n,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data5_p,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data5_n,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data6_p,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data6_n,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data7_p,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data7_n,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data8_p,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data8_n,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data9_p,                // Unused by AD917x
    input  logic multigigabit_mezzanine2fpga_data9_n,                // Unused by AD917x
    // Multi-gigabit transciever data pairs, FPGA to mezzanine
    output logic multigigabit_fpga2mezzanine_data0_p,                // SERDIN7_P
    output logic multigigabit_fpga2mezzanine_data0_n,                // SERDIN7_N
    output logic multigigabit_fpga2mezzanine_data1_p,                // SERDIN6_P
    output logic multigigabit_fpga2mezzanine_data1_n,                // SERDIN6_N
    output logic multigigabit_fpga2mezzanine_data2_p,                // SERDIN5_P
    output logic multigigabit_fpga2mezzanine_data2_n,                // SERDIN5_N
    output logic multigigabit_fpga2mezzanine_data3_p,                // SERDIN4_P
    output logic multigigabit_fpga2mezzanine_data3_n,                // SERDIN4_N
    output logic multigigabit_fpga2mezzanine_data4_p,                // SERDIN2_N !!!
    output logic multigigabit_fpga2mezzanine_data4_n,                // SERDIN2_P !!!
    output logic multigigabit_fpga2mezzanine_data5_p,                // SERDIN0_N !!!
    output logic multigigabit_fpga2mezzanine_data5_n,                // SERDIN0_P !!!
    output logic multigigabit_fpga2mezzanine_data6_p,                // SERDIN1_N !!!
    output logic multigigabit_fpga2mezzanine_data6_n,                // SERDIN1_P !!!
    output logic multigigabit_fpga2mezzanine_data7_p,                // SERDIN3_N !!!
    output logic multigigabit_fpga2mezzanine_data7_n,                // SERDIN3_P !!!
    output logic multigigabit_fpga2mezzanine_data8_p,                // Unused by AD917x
    output logic multigigabit_fpga2mezzanine_data8_n,                // Unused by AD917x
    output logic multigigabit_fpga2mezzanine_data9_p,                // Unused by AD917x
    output logic multigigabit_fpga2mezzanine_data9_n,                // Unused by AD917x
    // Geographic address of the module
    output logic [1:0] geographic_address,                           // [0] GA0 [1] GA1
    // JTAG signals
    output logic jtag_trst_n,                                       // Unused by AD917x
    output logic jtag_tck,                                          // Unused by AD917x
    output logic jtag_tms,                                          // Unused by AD917x
    output logic jtag_tdi,                                          // Unused by AD917x
    input  logic jtag_tdo,                                          // Unused by AD917x
    // I2C signals
    output logic i2c_scl,                                           // FMC_SCL
    output logic i2c_sda,                                           // FMC_SDA
    /////////////////////// Control and serial ports ///////////////////////////////////////
    // SPI
    input  logic spi_enable,
    input  logic spi_sclk,
    input  logic spi_mosi,
    // I2C
    input  logic i2c_scl_driver,
    input  logic i2c_sda_driver,
    // Serial port
    input  logic txen0,
    input  logic txen1,
    // Serial multi-gigabit port data
    input  logic [7:0] mgt_data
    );

    // Signal declarations
    logic unused_ok_c;

    // Internal logic

    // Interconnecting the multi-gigabit transceiver data pairs
    always_comb begin
        multigigabit_fpga2mezzanine_data0_p = mgt_data[7];
        multigigabit_fpga2mezzanine_data0_n = ~mgt_data[7];
        multigigabit_fpga2mezzanine_data1_p = mgt_data[6];
        multigigabit_fpga2mezzanine_data1_n = ~mgt_data[6];
        multigigabit_fpga2mezzanine_data2_p = mgt_data[5];
        multigigabit_fpga2mezzanine_data2_n = ~mgt_data[5];
        multigigabit_fpga2mezzanine_data3_p = mgt_data[4];
        multigigabit_fpga2mezzanine_data3_n = ~mgt_data[4];
        multigigabit_fpga2mezzanine_data4_p = ~mgt_data[2];
        multigigabit_fpga2mezzanine_data4_n = mgt_data[2];
        multigigabit_fpga2mezzanine_data5_p = ~mgt_data[0];
        multigigabit_fpga2mezzanine_data5_n = mgt_data[0];
        multigigabit_fpga2mezzanine_data6_p = ~mgt_data[1];
        multigigabit_fpga2mezzanine_data6_n = mgt_data[1];
        multigigabit_fpga2mezzanine_data7_p = ~mgt_data[3];
        multigigabit_fpga2mezzanine_data7_n = mgt_data[3];
    end

    // Assigning SPI signals
    always_comb begin
        low_pin_count__bank_a_port03_p = spi_sclk;
        low_pin_count__bank_a_port03_n = spi_mosi;
    end
endmodule
