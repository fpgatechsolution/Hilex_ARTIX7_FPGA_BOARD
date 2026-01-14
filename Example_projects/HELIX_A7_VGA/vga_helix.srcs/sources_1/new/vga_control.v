`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2026 12:04:03 PM
// Design Name: 
// Module Name: vga_control
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


module vga_controller(
    input  wire pixel_clk,   // 85.50 MHz clock
    input  wire reset,
    output wire hsync,
    output wire vsync,
    output wire video_on,
    output wire [11:0] x,
    output wire [11:0] y
);

    // ----------------------------
    // CVT-RB Timing Parameters
    // ----------------------------
    localparam HD  = 1366;  // Active area
    localparam HFP =   48;  // Front porch
    localparam HSW =   32;  // Sync width
    localparam HBP =   80;  // Back porch
    localparam HTOT = HD + HFP + HSW + HBP; // 1526

    localparam VD  =  768;  // Active area
    localparam VFP =    3;  // Front porch
    localparam VSW =    5;  // Sync width
    localparam VBP =   14;  // Back porch
    localparam VTOT = VD + VFP + VSW + VBP; // 790

    // ----------------------------
    // Counters
    // ----------------------------
    reg [11:0] h_count = 0;
    reg [11:0] v_count = 0;

    always @(posedge pixel_clk or posedge reset)
    begin
        if (reset) begin
            h_count <= 0;
            v_count <= 0;
        end else begin
            if (h_count == HTOT - 1) begin
                h_count <= 0;
                if (v_count == VTOT - 1)
                    v_count <= 0;
                else
                    v_count <= v_count + 1;
            end else begin
                h_count <= h_count + 1;
            end
        end
    end

    // ----------------------------
    // Sync pulses
    // ----------------------------
    wire hsync_active = (h_count >= (HD + HFP)) &&
                        (h_count <  (HD + HFP + HSW));

    wire vsync_active = (v_count >= (VD + VFP)) &&
                        (v_count <  (VD + VFP + VSW));

    assign hsync = ~hsync_active; // Negative polarity
    assign vsync =  vsync_active; // Positive polarity

    // ----------------------------
    // Active video region
    // ----------------------------
    assign video_on = (h_count < HD) && (v_count < VD);

    // ----------------------------
    // Pixel position
    // ----------------------------
    assign x = h_count;
    assign y = v_count;

endmodule
