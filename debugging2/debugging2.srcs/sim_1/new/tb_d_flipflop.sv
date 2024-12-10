`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 10:43:47 AM
// Design Name: 
// Module Name: tb_d_flipflop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_d_flipflop;
    logic clk=0; 
    logic D; 
    logic reset_n;
    logic Q;
    logic Qn1,Qn2;
    
    d_flipflop DUT (.*);
    always #5 clk =~clk;
    
    initial begin
    D=0; reset_n=1; #5;
    D=0; reset_n=0; #5;
    D=1; reset_n=1; #5;
    D=1; reset_n=1; #5;
    D=1; reset_n=1; #5;
    D=0; reset_n=1; #5;

    $finish;
    end  
endmodule
