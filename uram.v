`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2023 11:54:03 PM
// Design Name: 
// Module Name: ultraRam
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


module uram(
    input   i_clk,
    input   i_rst,
    input   enable,
    input [71:0] i_dataA,
    input [71:0] i_dataB,
    input [22:0] addrA,
    input [22:0] addrB,
    input   i_data_valid,
    output [71:0] o_dataA,
    output [71:0] o_dataB,
    input i_rd_data
    );
    
    
    uram ultaRAM(
  .CAS_OUT_ADDR_A(),          // output wire [22 : 0] CAS_OUT_ADDR_A
  .CAS_OUT_ADDR_B(),          // output wire [22 : 0] CAS_OUT_ADDR_B
  .CAS_OUT_BWE_A(),            // output wire [8 : 0] CAS_OUT_BWE_A
  .CAS_OUT_BWE_B(),            // output wire [8 : 0] CAS_OUT_BWE_B
  .CAS_OUT_DBITERR_A(),    // output wire CAS_OUT_DBITERR_A
  .CAS_OUT_DBITERR_B(),    // output wire CAS_OUT_DBITERR_B
  .CAS_OUT_DIN_A(),            // output wire [71 : 0] CAS_OUT_DIN_A
  .CAS_OUT_DIN_B(),            // output wire [71 : 0] CAS_OUT_DIN_B
  .CAS_OUT_DOUT_A(),          // output wire [71 : 0] CAS_OUT_DOUT_A
  .CAS_OUT_DOUT_B(),          // output wire [71 : 0] CAS_OUT_DOUT_B
  .CAS_OUT_EN_A(),              // output wire CAS_OUT_EN_A
  .CAS_OUT_EN_B(),              // output wire CAS_OUT_EN_B
  .CAS_OUT_RDACCESS_A(),  // output wire CAS_OUT_RDACCESS_A
  .CAS_OUT_RDACCESS_B(),  // output wire CAS_OUT_RDACCESS_B
  .CAS_OUT_RDB_WR_A(),      // output wire CAS_OUT_RDB_WR_A
  .CAS_OUT_RDB_WR_B(),      // output wire CAS_OUT_RDB_WR_B
  .CAS_OUT_SBITERR_A(),    // output wire CAS_OUT_SBITERR_A
  .CAS_OUT_SBITERR_B(),    // output wire CAS_OUT_SBITERR_B
  .DBITERR_A(),                    // output wire DBITERR_A
  .DBITERR_B(),                    // output wire DBITERR_B
  .DOUT_A(o_dataA),                          // output wire [71 : 0] DOUT_A
  .DOUT_B(o_dataB),                          // output wire [71 : 0] DOUT_B
  .RDACCESS_A(),                  // output wire RDACCESS_A
  .RDACCESS_B(),                  // output wire RDACCESS_B
  .SBITERR_A(),                    // output wire SBITERR_A
  .SBITERR_B(),                    // output wire SBITERR_B
  .ADDR_A(addrA),                          // input wire [22 : 0] ADDR_A
  .ADDR_B(addrB),                          // input wire [22 : 0] ADDR_B
  .BWE_A(),                            // input wire [8 : 0] BWE_A
  .BWE_B(),                            // input wire [8 : 0] BWE_B
  .CAS_IN_ADDR_A(),            // input wire [22 : 0] CAS_IN_ADDR_A
  .CAS_IN_ADDR_B(),            // input wire [22 : 0] CAS_IN_ADDR_B
  .CAS_IN_BWE_A(),              // input wire [8 : 0] CAS_IN_BWE_A
  .CAS_IN_BWE_B(),              // input wire [8 : 0] CAS_IN_BWE_B
  .CAS_IN_DBITERR_A(),      // input wire CAS_IN_DBITERR_A
  .CAS_IN_DBITERR_B(),      // input wire CAS_IN_DBITERR_B
  .CAS_IN_DIN_A(),              // input wire [71 : 0] CAS_IN_DIN_A
  .CAS_IN_DIN_B(),              // input wire [71 : 0] CAS_IN_DIN_B
  .CAS_IN_DOUT_A(),            // input wire [71 : 0] CAS_IN_DOUT_A
  .CAS_IN_DOUT_B(),            // input wire [71 : 0] CAS_IN_DOUT_B
  .CAS_IN_EN_A(),                // input wire CAS_IN_EN_A
  .CAS_IN_EN_B(),                // input wire CAS_IN_EN_B
  .CAS_IN_RDACCESS_A(),    // input wire CAS_IN_RDACCESS_A
  .CAS_IN_RDACCESS_B(),    // input wire CAS_IN_RDACCESS_B
  .CAS_IN_RDB_WR_A(),        // input wire CAS_IN_RDB_WR_A
  .CAS_IN_RDB_WR_B(),        // input wire CAS_IN_RDB_WR_B
  .CAS_IN_SBITERR_A(),      // input wire CAS_IN_SBITERR_A
  .CAS_IN_SBITERR_B(),      // input wire CAS_IN_SBITERR_B
  .CLK(i_clk),                                // input wire CLK
  .DIN_A(i_dataA),                            // input wire [71 : 0] DIN_A
  .DIN_B(i_dataB),                            // input wire [71 : 0] DIN_B
  .EN_A(enable),                              // input wire EN_A
  .EN_B(enable),                              // input wire EN_B
  .INJECT_DBITERR_A(),      // input wire INJECT_DBITERR_A
  .INJECT_DBITERR_B(),      // input wire INJECT_DBITERR_B
  .INJECT_SBITERR_A(),      // input wire INJECT_SBITERR_A
  .INJECT_SBITERR_B(),      // input wire INJECT_SBITERR_B
  .OREG_CE_A(),                    // input wire OREG_CE_A
  .OREG_CE_B(),                    // input wire OREG_CE_B
  .OREG_ECC_CE_A(),            // input wire OREG_ECC_CE_A
  .OREG_ECC_CE_B(),            // input wire OREG_ECC_CE_B
  .RDB_WR_A(i_rd_data),                      // input wire RDB_WR_A
  .RDB_WR_B(i_rd_data),                      // input wire RDB_WR_B
  .RST_A(i_rst),                            // input wire RST_A
  .RST_B(i_rst),                            // input wire RST_B
  .SLEEP(),                            // input wire SLEEP
  .URAM_LOCATION(),            // input wire [21 : 0] URAM_LOCATION
  .DI(),                                  // input wire [31 : 0] DI
  .CCLK(i_clk),                              // input wire CCLK
  .VLD(i_data_valid),                                // input wire VLD
  .CFGMODE(),                        // output wire CFGMODE
  .CFGBUSY()                        // output wire CFGBUSY
);

 
    
endmodule
