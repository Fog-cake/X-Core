`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/07 10:20:20
// Design Name: 
// Module Name: xcore_tb
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
// 
//////////////////////////////////////////////////////////////////////////////////



module xcore_tb(

    );
 
        reg clk;
        reg rst_n; 
      
        wire led_0;
        wire led_1;
        wire led_2;
        wire led_3;
      
        // RGB LEDs, 3 pins each
         wire led0_r;
         wire led0_g;
         wire led0_b;
         wire led1_r;
         wire led1_g;
         wire led1_b;
         wire led2_r;
         wire led2_g;
         wire led2_b;
         wire ck_miso;
         wire ck_mosi;
         wire ck_ss;
         wire ck_sck;
         wire jd_0;
         wire jd_1;
         wire jd_2;
         wire jd_4;
         wire jd_5;
         wire jd_6; 
         wire qspi_cs;
         wire qspi_sck;
         wire [3:0] qspi_dq;
    reg lfextclk;
      wire jtag_TDI = 1'b0;
    wire jtag_TDO;
    wire jtag_TCK = 1'b0;
    wire jtag_TMS = 1'b0;
    wire jtag_TRST = 1'b0;
  
    wire jtag_DRV_TDO = 1'b0;
   `define RAM u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_riscv_soc_top.RAM.dp_ram_i
   
    initial begin
   
         $readmemh("C:/Users/PerfxLab-ChenBotao/Desktop/xcore_generated/rv32im/DIV.elf.verilog", `RAM.mem);
     
      initial begin
                   clk = 1;
                   lfextclk = 0;
                   rst_n =0;
                   #801 rst_n = 1;
               
        end
               
        always # 20 clk = ~clk;   
   always
        begin 
           #33 lfextclk <= ~lfextclk;
        end

     e203_soc_top u_e203_soc_top(
        
        .hfextclk(clk),
        .hfxoscen(),
     
        .lfextclk(lfextclk),
        .lfxoscen(),
  
        .jtag_clk (jtag_TCK),
        .jtag_tms (jtag_TMS),
        .jtag_tdi (jtag_TDI),
        .jtag_tdo (jtag_TDO),
     
        .io_pads_gpio_0_i_ival (1'b1),
        .io_pads_gpio_0_o_oval (),
        .io_pads_gpio_0_o_oe (),
        .io_pads_gpio_0_o_ie (),
        .io_pads_gpio_0_o_pue (),
        .io_pads_gpio_0_o_ds (),
        .io_pads_gpio_1_i_ival (1'b1),
        .io_pads_gpio_1_o_oval (),
        .io_pads_gpio_1_o_oe (),
        .io_pads_gpio_1_o_ie (),
        .io_pads_gpio_1_o_pue (),
        .io_pads_gpio_1_o_ds (),
        .io_pads_gpio_2_i_ival (1'b1),
        .io_pads_gpio_2_o_oval (),
        .io_pads_gpio_2_o_oe (),
        .io_pads_gpio_2_o_ie (),
        .io_pads_gpio_2_o_pue (),
        .io_pads_gpio_2_o_ds (),
        .io_pads_gpio_3_i_ival (1'b1),
        .io_pads_gpio_3_o_oval (),
        .io_pads_gpio_3_o_oe (),
        .io_pads_gpio_3_o_ie (),
        .io_pads_gpio_3_o_pue (),
        .io_pads_gpio_3_o_ds (),
        .io_pads_gpio_4_i_ival (1'b1),
        .io_pads_gpio_4_o_oval (),
        .io_pads_gpio_4_o_oe (),
        .io_pads_gpio_4_o_ie (),
        .io_pads_gpio_4_o_pue (),
        .io_pads_gpio_4_o_ds (),
        .io_pads_gpio_5_i_ival (1'b1),
        .io_pads_gpio_5_o_oval (),
        .io_pads_gpio_5_o_oe (),
        .io_pads_gpio_5_o_ie (),
        .io_pads_gpio_5_o_pue (),
        .io_pads_gpio_5_o_ds (),
        .io_pads_gpio_6_i_ival (1'b1),
        .io_pads_gpio_6_o_oval (),
        .io_pads_gpio_6_o_oe (),
        .io_pads_gpio_6_o_ie (),
        .io_pads_gpio_6_o_pue (),
        .io_pads_gpio_6_o_ds (),
        .io_pads_gpio_7_i_ival (1'b1),
        .io_pads_gpio_7_o_oval (),
        .io_pads_gpio_7_o_oe (),
        .io_pads_gpio_7_o_ie (),
        .io_pads_gpio_7_o_pue (),
        .io_pads_gpio_7_o_ds (),
        .io_pads_gpio_8_i_ival (1'b1),
        .io_pads_gpio_8_o_oval (),
        .io_pads_gpio_8_o_oe (),
        .io_pads_gpio_8_o_ie (),
        .io_pads_gpio_8_o_pue (),
        .io_pads_gpio_8_o_ds (),
        .io_pads_gpio_9_i_ival (1'b1),
        .io_pads_gpio_9_o_oval (),
        .io_pads_gpio_9_o_oe (),
        .io_pads_gpio_9_o_ie (),
        .io_pads_gpio_9_o_pue (),
        .io_pads_gpio_9_o_ds (),
        .io_pads_gpio_10_i_ival (1'b1),
        .io_pads_gpio_10_o_oval (),
        .io_pads_gpio_10_o_oe (),
        .io_pads_gpio_10_o_ie (),
        .io_pads_gpio_10_o_pue (),
        .io_pads_gpio_10_o_ds (),
        .io_pads_gpio_11_i_ival (1'b1),
        .io_pads_gpio_11_o_oval (),
        .io_pads_gpio_11_o_oe (),
        .io_pads_gpio_11_o_ie (),
        .io_pads_gpio_11_o_pue (),
        .io_pads_gpio_11_o_ds (),
        .io_pads_gpio_12_i_ival (1'b1),
        .io_pads_gpio_12_o_oval (),
        .io_pads_gpio_12_o_oe (),
        .io_pads_gpio_12_o_ie (),
        .io_pads_gpio_12_o_pue (),
        .io_pads_gpio_12_o_ds (),
        .io_pads_gpio_13_i_ival (1'b1),
        .io_pads_gpio_13_o_oval (),
        .io_pads_gpio_13_o_oe (),
        .io_pads_gpio_13_o_ie (),
        .io_pads_gpio_13_o_pue (),
        .io_pads_gpio_13_o_ds (),
        .io_pads_gpio_14_i_ival (1'b1),
        .io_pads_gpio_14_o_oval (),
        .io_pads_gpio_14_o_oe (),
        .io_pads_gpio_14_o_ie (),
        .io_pads_gpio_14_o_pue (),
        .io_pads_gpio_14_o_ds (),
        .io_pads_gpio_15_i_ival (1'b1),
        .io_pads_gpio_15_o_oval (),
        .io_pads_gpio_15_o_oe (),
        .io_pads_gpio_15_o_ie (),
        .io_pads_gpio_15_o_pue (),
        .io_pads_gpio_15_o_ds (),
        .io_pads_gpio_16_i_ival (1'b1),
        .io_pads_gpio_16_o_oval (),
        .io_pads_gpio_16_o_oe (),
        .io_pads_gpio_16_o_ie (),
        .io_pads_gpio_16_o_pue (),
        .io_pads_gpio_16_o_ds (),
        .io_pads_gpio_17_i_ival (1'b1),
        .io_pads_gpio_17_o_oval (),
        .io_pads_gpio_17_o_oe (),
        .io_pads_gpio_17_o_ie (),
        .io_pads_gpio_17_o_pue (),
        .io_pads_gpio_17_o_ds (),
        .io_pads_gpio_18_i_ival (1'b1),
        .io_pads_gpio_18_o_oval (),
        .io_pads_gpio_18_o_oe (),
        .io_pads_gpio_18_o_ie (),
        .io_pads_gpio_18_o_pue (),
        .io_pads_gpio_18_o_ds (),
        .io_pads_gpio_19_i_ival (1'b1),
        .io_pads_gpio_19_o_oval (),
        .io_pads_gpio_19_o_oe (),
        .io_pads_gpio_19_o_ie (),
        .io_pads_gpio_19_o_pue (),
        .io_pads_gpio_19_o_ds (),
        .io_pads_gpio_20_i_ival (1'b1),
        .io_pads_gpio_20_o_oval (),
        .io_pads_gpio_20_o_oe (),
        .io_pads_gpio_20_o_ie (),
        .io_pads_gpio_20_o_pue (),
        .io_pads_gpio_20_o_ds (),
        .io_pads_gpio_21_i_ival (1'b1),
        .io_pads_gpio_21_o_oval (),
        .io_pads_gpio_21_o_oe (),
        .io_pads_gpio_21_o_ie (),
        .io_pads_gpio_21_o_pue (),
        .io_pads_gpio_21_o_ds (),
        .io_pads_gpio_22_i_ival (1'b1),
        .io_pads_gpio_22_o_oval (),
        .io_pads_gpio_22_o_oe (),
        .io_pads_gpio_22_o_ie (),
        .io_pads_gpio_22_o_pue (),
        .io_pads_gpio_22_o_ds (),
        .io_pads_gpio_23_i_ival (1'b1),
        .io_pads_gpio_23_o_oval (),
        .io_pads_gpio_23_o_oe (),
        .io_pads_gpio_23_o_ie (),
        .io_pads_gpio_23_o_pue (),
        .io_pads_gpio_23_o_ds (),
        .io_pads_gpio_24_i_ival (1'b1),
        .io_pads_gpio_24_o_oval (),
        .io_pads_gpio_24_o_oe (),
        .io_pads_gpio_24_o_ie (),
        .io_pads_gpio_24_o_pue (),
        .io_pads_gpio_24_o_ds (),
        .io_pads_gpio_25_i_ival (1'b1),
        .io_pads_gpio_25_o_oval (),
        .io_pads_gpio_25_o_oe (),
        .io_pads_gpio_25_o_ie (),
        .io_pads_gpio_25_o_pue (),
        .io_pads_gpio_25_o_ds (),
        .io_pads_gpio_26_i_ival (1'b1),
        .io_pads_gpio_26_o_oval (),
        .io_pads_gpio_26_o_oe (),
        .io_pads_gpio_26_o_ie (),
        .io_pads_gpio_26_o_pue (),
        .io_pads_gpio_26_o_ds (),
        .io_pads_gpio_27_i_ival (1'b1),
        .io_pads_gpio_27_o_oval (),
        .io_pads_gpio_27_o_oe (),
        .io_pads_gpio_27_o_ie (),
        .io_pads_gpio_27_o_pue (),
        .io_pads_gpio_27_o_ds (),
        .io_pads_gpio_28_i_ival (1'b1),
        .io_pads_gpio_28_o_oval (),
        .io_pads_gpio_28_o_oe (),
        .io_pads_gpio_28_o_ie (),
        .io_pads_gpio_28_o_pue (),
        .io_pads_gpio_28_o_ds (),
        .io_pads_gpio_29_i_ival (1'b1),
        .io_pads_gpio_29_o_oval (),
        .io_pads_gpio_29_o_oe (),
        .io_pads_gpio_29_o_ie (),
        .io_pads_gpio_29_o_pue (),
        .io_pads_gpio_29_o_ds (),
        .io_pads_gpio_30_i_ival (1'b1),
        .io_pads_gpio_30_o_oval (),
        .io_pads_gpio_30_o_oe (),
        .io_pads_gpio_30_o_ie (),
        .io_pads_gpio_30_o_pue (),
        .io_pads_gpio_30_o_ds (),
        .io_pads_gpio_31_i_ival (1'b1),
        .io_pads_gpio_31_o_oval (),
        .io_pads_gpio_31_o_oe (),
        .io_pads_gpio_31_o_ie (),
        .io_pads_gpio_31_o_pue (),
        .io_pads_gpio_31_o_ds (),
     
        .io_pads_qspi_sck_o_oval (),
        .io_pads_qspi_dq_0_i_ival (1'b1),
        .io_pads_qspi_dq_0_o_oval (),
        .io_pads_qspi_dq_0_o_oe (),
        .io_pads_qspi_dq_0_o_ie (),
        .io_pads_qspi_dq_0_o_pue (),
        .io_pads_qspi_dq_0_o_ds (),
        .io_pads_qspi_dq_1_i_ival (1'b1),
        .io_pads_qspi_dq_1_o_oval (),
        .io_pads_qspi_dq_1_o_oe (),
        .io_pads_qspi_dq_1_o_ie (),
        .io_pads_qspi_dq_1_o_pue (),
        .io_pads_qspi_dq_1_o_ds (),
        .io_pads_qspi_dq_2_i_ival (1'b1),
        .io_pads_qspi_dq_2_o_oval (),
        .io_pads_qspi_dq_2_o_oe (),
        .io_pads_qspi_dq_2_o_ie (),
        .io_pads_qspi_dq_2_o_pue (),
        .io_pads_qspi_dq_2_o_ds (),
        .io_pads_qspi_dq_3_i_ival (1'b1),
        .io_pads_qspi_dq_3_o_oval (),
        .io_pads_qspi_dq_3_o_oe (),
        .io_pads_qspi_dq_3_o_ie (),
        .io_pads_qspi_dq_3_o_pue (),
        .io_pads_qspi_dq_3_o_ds (),
        .io_pads_qspi_cs_0_o_oval (),
        .io_pads_aon_erst_n_i_ival (rst_n),//This is the real reset, active low
        .io_pads_aon_pmu_dwakeup_n_i_ival (1'b1),
     
        .io_pads_aon_pmu_vddpaden_o_oval (),
         .io_pads_aon_pmu_padrst_o_oval    (),
     
         .io_pads_bootrom_n_i_ival       (1'b0),// In Simulation we boot from ROM
         .io_pads_dbgmode0_n_i_ival       (1'b1),
         .io_pads_dbgmode1_n_i_ival       (1'b1),
         .io_pads_dbgmode2_n_i_ival       (1'b1) 
     );
   
    
 
endmodule


 