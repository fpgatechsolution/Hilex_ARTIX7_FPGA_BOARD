`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2026 12:03:40 PM
// Design Name: 
// Module Name: vga_test
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


module vga_test(
    input  wire clk_100MHz,
    input  wire reset,
    input wire [11:0]  sw,     // color from switches
    output wire hsync,
    output wire vsync,
    output wire [11:0] rgb
);

    // ==========================
    //  Pixel Clock (85.5 MHz)
    // ==========================

    wire pixel_clk;
    wire lock;

    // You must generate this module using Vivado
    clk_wiz_0 instance_name(
        .clk_in1(clk_100MHz),
        .clk_out1(pixel_clk),   // 85.5 MHz
        .reset(reset),
        .locked(lock)
    );


    // ==========================
    // VGA Controller
    // ==========================

    wire video_on;
    wire [11:0] x;
    wire [11:0] y;

    vga_controller vga(
        .pixel_clk(pixel_clk),
        .reset(~lock),     // hold reset until PLL is stable
        .video_on(video_on),
        .hsync(hsync),
        .vsync(vsync),
        .x(x),
        .y(y)
    );

    // ==========================
    // RGB Output
    // ==========================

   reg [11:0] rgb_reg;
 
   
    always @(posedge pixel_clk or posedge reset)
    begin
        if (reset)
            rgb_reg <= 12'h0;
        else
            rgb_reg <= sw;
    end

    assign rgb = (video_on) ? rgb_reg : 12'h0;

endmodule

