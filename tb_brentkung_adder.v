`timescale 1ns/1ns
module tb_brentkung_adder;
reg [31:0]a,b;
reg cin;
wire [31:0]sum;
wire carry;
bruntkung_adder a1(a,b,cin,sum,carry);

initial
 begin
 $monitor($time,"a is %d and b is %d and sum is %d,carry is %b ",a,b,sum,carry);
 #10 a=32'hAAAA88AB ;b=32'h BC010B78;cin=1'b0;
 #100 a=32'hAAAA88AB;b=32'h 90000000;
end
endmodule
