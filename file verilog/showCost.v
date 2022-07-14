module showCost(
	cost,
	start,
	led1,
	led2,
	led3,
	led4,
	led5,
	led6,
	led7
	);
	
input [23:0] cost;
input start;
output[6:0] led1, led2 ,led3, led4, led5, led6, led7;
reg [3:0] cnt1, cnt2, cnt3, cnt4, cnt5, cnt6, cnt7;

always @(*) begin
	cnt1 = cost % 10;
	cnt2 = (cost / 10) % 10;
	cnt3 = (cost / 100) % 10;
	cnt4 = (cost / 1000) % 10;
	cnt5 = (cost / 10000) % 10;
	cnt6 = (cost / 100000) % 10;
	cnt7 = (cost / 1000000) % 10;
end 	
// hien thi led 7 thanh
display ds1(.cnt  (cnt1),
				.led  (led1));			
display ds2(.cnt  (cnt2),
				.led  (led2));
display ds3(.cnt  (cnt3),
				.led  (led3));
display ds4(.cnt  (cnt4),
				.led  (led4));
display ds5(.cnt  (cnt5),
				.led  (led5));
display ds6(.cnt  (cnt6),
				.led  (led6));
display ds7(.cnt  (cnt7),
				.led  (led7));
endmodule
