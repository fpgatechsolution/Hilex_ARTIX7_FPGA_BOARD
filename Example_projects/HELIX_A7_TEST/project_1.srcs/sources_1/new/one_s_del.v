`timescale 1ns / 1ps
module delay_counter (
    input wire clk,      // 10 MHz clock input
    input wire reset,    // Asynchronous reset
    output reg delay_1s  // 1-second delay output
);

    // Number of clock cycles for a 1-second delay
    parameter MAX_COUNT = 10000000;  // 10 million clock cycles

    reg [23:0] count;  // 24-bit counter to count up to 10 million

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
            delay_1s <= 0;
        end else if (count == MAX_COUNT - 1) begin
            count <= 0;         // Reset the counter
            delay_1s <= 1;      // Set the 1-second delay signal high
        end else begin
            count <= count + 1;  // Increment the counter
            delay_1s <= 0;       // Keep the delay signal low until 1 second is reached
        end
    end
endmodule