module btl_htn(
	clk,
	reset,
	start,
	valve,
	select,
	keyboard,
	gas,
	led11, led12, led13, led14, led15, led16, led17, led21, led22, led23, led24, led25, led26, led27
	);
input clk, reset, start, valve;
input [2:0] select;
input [23:0] keyboard;
output [2:0] gas;
output [6:0] led11, led12, led13, led14, led15, led16, led17;
output [6:0] led21, led22, led23, led24, led25, led26, led27;

wire [23:0] cost, lit;
wire [23:0] keyboard;
wire [2:0] select;
// 
//calculation        
//
calcultion cal (
	// Inputs
	.clk			(clk),
	.reset		(reset),
	.keyboard	(keyboard),
	.select  	(select),
	// Outputs
	.cost			(cost),
	.lit			(lit));

//
// pump_gas
//
pump_gas pum (
	// Inputs
	.clk			(clk),
	.reset		(reset),
	.lit			(lit),
	.select 		(select),
	.start		(start),
	.valve		(valve),
	// Outputs
	.gas			(gas));
	
//
// showCost
//
showCost sCost (
	// Inputs
	.start		(start),
	.cost			(cost),
	// Outputs
	.led1			(led11),
	.led2			(led12),
	.led3			(led13),
	.led4			(led14),
	.led5			(led15),
	.led6			(led16),
	.led7			(led17));
	
//
// showLit
//
showLit sLit (
	// Inputs
	.start		(start),
	.lit			(lit),
	// Outputs
	.led1			(led21),
	.led2			(led22),
	.led3			(led23),
	.led4			(led24),
	.led5			(led25),
	.led6			(led26),
	.led7			(led27));
endmodule