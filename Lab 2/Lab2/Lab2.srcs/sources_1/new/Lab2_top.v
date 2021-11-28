`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2021 13:17:52
// Design Name: 
// Module Name: Lab2_top
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


module Lab2_top(
    input clk,
    input rst,
    input write_en,
    input save_data,
    input show_reg,
    input [7:0] d_in,
    output [7:0] d_out
    );
    
    reg [7:0] reg_d;    // internal register
    wire [7:0] mem_d;
    
    //----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
    Lab2_mem U1 (
      .a(d_in[5:0]),    // input wire [5 : 0] a
      .d(reg_d),         // input wire [7 : 0] d
      .clk(clk),        // input wire clk
      .we(write_en),    // input wire we
      .spo(mem_d)       // output wire [7 : 0] spo
    );
    // INST_TAG_END ------ End INSTANTIATION Template ---------
    
    always @ (posedge clk)
    begin
        if (rst) reg_d = 8'h00;
        else if (save_data) reg_d = d_in;
    end

    assign d_out = show_reg ? mem_d : reg_d;
   
endmodule
