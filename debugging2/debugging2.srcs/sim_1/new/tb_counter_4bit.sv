`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 11:10:51 AM
// Design Name: 
// Module Name: tb_counter_4bit
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


module tb_counter_4bit;
    logic clk=0;            
    logic reset_n;        
    logic load;           
    logic [3:0] load_data;
    logic [3:0] count;
    
    counter_4bit DUT (.*);
    always #5 clk=~clk;
    
    initial begin 
    reset_n=1; load=0; #5;
    reset_n=0; load=0; #5;
    reset_n=1; load=0; #5;
    load_data=3; #5;
    load_data=2; #5;
    #1000;
    $finish;
    end   
endmodule
