`timescale 1ps/1ps
module testbench_btl_htn ();

reg clk, reset, start, valve;
reg [2:0] select;
reg [23:0] keyboard;
wire [2:0] gas;
wire [6:0] led11, led12, led13, led14, led15, led16, led17;
wire [6:0] led21, led22, led23, led24, led25, led26, led27;

btl_htn dut (
	// Inputs
	.clk			(clk),
	.reset		(reset),
	.start		(start),
	.valve		(valve),
	.select 		(select),
	.keyboard	(keyboard),
	//Outputs
	.gas			(gas[2:0]),
	.led11		(led11[6:0]), 
	.led12		(led12[6:0]),
	.led13		(led13[6:0]),
	.led14		(led14[6:0]), 
	.led15		(led15[6:0]),
	.led16		(led16[6:0]),
	.led17		(led17[6:0]), 
	.led21		(led21[6:0]),
	.led22		(led22[6:0]),
	.led23		(led23[6:0]), 
	.led24		(led24[6:0]),
	.led25		(led25[6:0]),
	.led26		(led26[6:0]),
	.led27		(led27[6:0]));
	
always begin 
	#10 clk <= ~clk;
	
	end
initial
	begin
	clk <= 0;
	reset <= 0;
	start <= 0; 
	valve <= 0;
	select <= 3'd0;
	#10; 
	reset <= 1;
	keyboard <= 50000;
	select <= 3'd1;
	#10;
	start <= 1; 
	valve <= 1;
	#6500;
	reset <= 0;
	#50;
	reset <= 1;
	keyboard <= 100000;
	select <= 3'd2;
	
	end

endmodule