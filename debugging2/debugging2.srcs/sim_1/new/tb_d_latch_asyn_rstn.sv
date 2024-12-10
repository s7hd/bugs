`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 10:15:42 AM
// Design Name: 
// Module Name: tb_d_latch_asyn_rstn
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


module tb_d_latch_asyn_rstn;
    logic clk=0;    
    logic D;      
    logic reset_n;
    logic Q;
    logic Qn; 
        
    d_latch_asyn_rstn DUT (.*);
    always #5 clk=~clk;  
    
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
