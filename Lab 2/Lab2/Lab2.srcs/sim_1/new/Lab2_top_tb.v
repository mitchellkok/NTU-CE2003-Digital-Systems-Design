`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2021 22:36:57
// Design Name: 
// Module Name: Lab2_top_tb
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


module Lab2_top_tb();
    reg clk, rst, write_en, save_data, show_reg;
    reg [7:0] d_in;
    wire [7:0] d_out;
    
    Lab2_top uut (.clk(clk), .rst(rst), .write_en(write_en), .save_data(save_data), .show_reg(show_reg), .d_in(d_in), .d_out(d_out));
    
    always #5 clk = ~clk;
    
    initial
    begin
        rst = 1; clk = 0; write_en = 0; save_data = 0; show_reg = 0; d_in = 8'h00;
        #10 rst = 0;
        #10 d_in = 8'h15;
        #10 save_data = 1;
        #10 save_data = 0; d_in = 8'h01;
        #10 write_en = 1;
        #10 write_en = 0;
        #10 d_in = 8'hA3;
        #10 save_data = 1;
        #10 save_data = 0; d_in = 8'h02;
        #10 write_en = 1;
        #10 write_en = 0;
        #10 d_in = 8'h87;
        #10 save_data = 1;
        #10 save_data = 0;
        #10 d_in = 8'h01;
        #10 show_reg = 1;
        #10 d_in = 8'h01; show_reg = 0;
        #10 $finish();
    end
endmodule
