`timescale 1ns / 1ps



module trial();

reg [31:0] a;
initial begin
    a = ((3.14*100)/180*100*30*100)/100;
    $display("Result is %b and %d",a,a);
end
endmodule
