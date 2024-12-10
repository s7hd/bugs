`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 09:38:31 AM
// Design Name: 
// Module Name: tb_mux2x1
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


module tb_mux2x1;
    logic S ;  
    logic in1 ;
    logic in2 ; 
    logic out ;
    
    mux2x1 DUT (.*);
    initial begin 
    S =0; in1=1; in2=0; #5;
    S =1; in1=1; in2=0; #5;
    $finish;
    end 
endmodule
