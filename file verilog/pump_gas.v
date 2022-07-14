module pump_gas(
    start,
    valve,
    lit,
	 select,
    clk,
	 reset,
    gas
    );
    
input [23:0] lit;
input [2:0] select;
input clk, reset, start, valve;
output reg[2:0] gas;

parameter power = 5;
reg [24:0] count;
reg [24:0] num_clk;


always @(posedge clk or negedge reset) begin
	count = lit / power;
	if(~reset) begin
		  num_clk <= 24'b0;
		  end
	else if (select == 3'd1) begin
		if(start && valve) begin
			num_clk <= num_clk + 1'b1;
			if(num_clk <= count) gas = 3'b001;
			else gas = 3'b000;
			end
		else gas = 3'b000;
		end
	else if (select == 3'd2) begin
		if(start && valve) begin
			num_clk <= num_clk + 1'b1;
			if(num_clk < count) gas = 3'b010;
			else gas = 3'b000;
			end
		else gas = 3'b000;
		end
	else if (select == 3'd4) begin
		if(start && valve) begin
			num_clk <= num_clk + 1'b1;
			if(num_clk < count) gas = 3'b100;
			else gas = 3'b000;
			end
		else gas = 3'b000;
		end
	else gas = 3'b000;	
	
end

endmodule