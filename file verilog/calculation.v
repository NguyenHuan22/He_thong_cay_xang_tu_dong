module calcultion ( 
    clk,
    reset,
    keyboard,
	 select,
    lit,
    cost
    );
input clk, reset;
input [2:0] select;
input [23:0] keyboard;
output [23:0] lit, cost;
reg [23:0] lit, cost;
parameter costRon92 = 31110;
parameter costRon95 = 32370;
parameter costE5 = 31110;


always @ (*) begin
	if(~reset) begin
        cost = 24'b0;
        lit = 24'b0;
		end
	else if(select == 3'd1) begin
        cost = keyboard;
		  lit = (keyboard * 24'd1000) / costRon92;
		end
	else if(select == 3'd2) begin
        cost = keyboard;
        lit = (keyboard * 24'd1000) / costRon95;
		end
	else if(select == 3'd4) begin
        cost = keyboard;
        lit = (keyboard * 24'd1000) / costE5;
		end
	else begin
        cost = 24'b0;
        lit = 24'b0;
		end
        
end


endmodule