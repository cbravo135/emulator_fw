///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 1.8
//  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
//  /   /         Filename : trg_tx_buf_bypass.v
// /___/   /\     
// \   \  /  \ 
//  \___\/\___\
//
//
// Module TRG_TX_BUF_BYPASS (a GTX Wrapper)
// Generated by Xilinx Virtex-6 FPGA GTX Transceiver Wizard
// 
// 
// (c) Copyright 2009-2010 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


`timescale 1ns / 1ps


//***************************** Entity Declaration ****************************

(* CORE_GENERATION_INFO = "TRG_TX_BUF_BYPASS,v6_gtxwizard_v1_8,{protocol_file=Start_from_scratch}" *) module TRG_TX_BUF_BYPASS #
(
    // Simulation attributes
    parameter   WRAPPER_SIM_GTXRESET_SPEEDUP    = 0    // Set to 1 to speed up sim reset
)
(
    
    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX0  (X0Y2)

    //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    input           GTX0_RXN_IN,
    input           GTX0_RXP_IN,
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    input   [3:0]   GTX0_TXCHARISK_IN,
    //---------------- Transmit Ports - TX Data Path interface -----------------
    input   [31:0]  GTX0_TXDATA_IN,
    output          GTX0_TXOUTCLK_OUT,
    input           GTX0_TXUSRCLK_IN,
    input           GTX0_TXUSRCLK2_IN,
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    output          GTX0_TXN_OUT,
    output          GTX0_TXP_OUT,
    //------ Transmit Ports - TX Elastic Buffer and Phase Alignment Ports ------
    input           GTX0_TXDLYALIGNDISABLE_IN,
    input           GTX0_TXDLYALIGNMONENB_IN,
    output  [7:0]   GTX0_TXDLYALIGNMONITOR_OUT,
    input           GTX0_TXDLYALIGNRESET_IN,
    input           GTX0_TXENPMAPHASEALIGN_IN,
    input           GTX0_TXPMASETPHASE_IN,
    //--------------------- Transmit Ports - TX PLL Ports ----------------------
    input           GTX0_GTXTXRESET_IN,
    input           GTX0_MGTREFCLKTX_IN,
    input           GTX0_PLLTXRESET_IN,
    output          GTX0_TXPLLLKDET_OUT,
    output          GTX0_TXRESETDONE_OUT


);

//***************************** Wire Declarations *****************************

    // ground and vcc signals
    wire            tied_to_ground_i;
    wire    [63:0]  tied_to_ground_vec_i;
    wire            tied_to_vcc_i;
    wire    [63:0]  tied_to_vcc_vec_i;
 
//********************************* Main Body of Code**************************

    assign tied_to_ground_i             = 1'b0;
    assign tied_to_ground_vec_i         = 64'h0000000000000000;
    assign tied_to_vcc_i                = 1'b1;
    assign tied_to_vcc_vec_i            = 64'hffffffffffffffff;


//------------------------- GTX Instances  -------------------------------



    //_________________________________________________________________________
    //_________________________________________________________________________
    //GTX0  (X0Y2)

    TRG_TX_BUF_BYPASS_GTX #
    (
        // Simulation attributes
        .GTX_SIM_GTXRESET_SPEEDUP   (WRAPPER_SIM_GTXRESET_SPEEDUP),
        
        // Share RX PLL parameter
        .GTX_TX_CLK_SOURCE           ("TXPLL"),
        // Save power parameter
        .GTX_POWER_SAVE              (10'b0000110000)
    )
    gtx0_trg_tx_buf_bypass_i
    (
        //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        .RXN_IN                         (GTX0_RXN_IN),
        .RXP_IN                         (GTX0_RXP_IN),
        //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        .TXCHARISK_IN                   (GTX0_TXCHARISK_IN),
        //---------------- Transmit Ports - TX Data Path interface -----------------
        .TXDATA_IN                      (GTX0_TXDATA_IN),
        .TXOUTCLK_OUT                   (GTX0_TXOUTCLK_OUT),
        .TXUSRCLK_IN                    (GTX0_TXUSRCLK_IN),
        .TXUSRCLK2_IN                   (GTX0_TXUSRCLK2_IN),
        //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .TXN_OUT                        (GTX0_TXN_OUT),
        .TXP_OUT                        (GTX0_TXP_OUT),
        //------ Transmit Ports - TX Elastic Buffer and Phase Alignment Ports ------
        .TXDLYALIGNDISABLE_IN           (GTX0_TXDLYALIGNDISABLE_IN),
        .TXDLYALIGNMONENB_IN            (GTX0_TXDLYALIGNMONENB_IN),
        .TXDLYALIGNMONITOR_OUT          (GTX0_TXDLYALIGNMONITOR_OUT),
        .TXDLYALIGNRESET_IN             (GTX0_TXDLYALIGNRESET_IN),
        .TXENPMAPHASEALIGN_IN           (GTX0_TXENPMAPHASEALIGN_IN),
        .TXPMASETPHASE_IN               (GTX0_TXPMASETPHASE_IN),
        //--------------------- Transmit Ports - TX PLL Ports ----------------------
        .GTXTXRESET_IN                  (GTX0_GTXTXRESET_IN),
        .MGTREFCLKTX_IN                 ({tied_to_ground_i , GTX0_MGTREFCLKTX_IN}),
        .PLLTXRESET_IN                  (GTX0_PLLTXRESET_IN),
        .TXPLLLKDET_OUT                 (GTX0_TXPLLLKDET_OUT),
        .TXRESETDONE_OUT                (GTX0_TXRESETDONE_OUT)

    );



endmodule

    
