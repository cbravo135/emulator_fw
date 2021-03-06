///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 1.8
//  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
//  /   /         Filename : double_reset.v
// /___/   /\           --workaround from core_project examples--
// \   \  /  \
//  \___\/\___\
//
//
// Module DOUBLE_RESET
// Generated by Xilinx Virtex-6 FPGA GTX Transceiver Wizard
//
`define DLY #1

//    --workaround from core_project examples--
module DOUBLE_RESET (
    input  	CLK,
    input  	PLLLKDET,
    output  GTXTEST_DONE,
    output 	GTXTEST_BIT1
);

reg       	    plllkdet_sync;
reg             plllkdet_r;
reg   [10:0]    reset_dly_ctr;
reg        	    reset_dly_done;
reg   [3:0]	    testdone_f;


always @(posedge CLK)
begin
    plllkdet_r    	<= `DLY PLLLKDET;
    plllkdet_sync 	<= `DLY plllkdet_r;
end

assign GTXTEST_BIT1  = reset_dly_done;
assign GTXTEST_DONE  = (reset_dly_ctr == 11'd0)? testdone_f[0] : 1'b0;

always @(posedge CLK)
begin
    if (!plllkdet_sync)
        reset_dly_ctr 	<= `DLY 11'h7FF;
    else if (reset_dly_ctr != 11'h000)
        reset_dly_ctr 	<= `DLY reset_dly_ctr - 1'b1;
end

always @(posedge CLK)
begin
    if (!plllkdet_sync)
        reset_dly_done 	<= `DLY 1'b0;
    else if (reset_dly_ctr[10] == 1'b0)
        reset_dly_done 	<= `DLY reset_dly_ctr[8];
end

always @(posedge CLK)
begin
    if (reset_dly_ctr != 11'd0)
        testdone_f     	<= `DLY 4'b1111;
    else
        testdone_f     	<= `DLY {1'b0, testdone_f[3:1]};
end

endmodule
