module display (
	cnt,
	led
	);
input [3:0] cnt;
output [6:0] led;
reg [6:0] led;

parameter zero = 7'b0000001;
parameter one = 7'b0110000;
parameter two = 7'b0010010;
parameter three = 7'b0000110;
parameter four = 7'b1001100;
parameter five = 7'b0100100;
parameter six = 7'b0100000;
parameter seven = 7'b0001111;
parameter eight = 7'b0000000;
parameter nine = 7'b0001000;

always @ (*) begin
	case(cnt)
		0: led = zero;
		1: led = one;
		2: led = two;
		3: led = three;
		4: led = four;
		5: led = five;
		6: led = six;
		7: led = seven;
		8: led = eight;
		default: led = nine;
	endcase
end
endmodule	
	