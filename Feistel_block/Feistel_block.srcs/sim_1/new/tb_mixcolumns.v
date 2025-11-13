`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 03:17:18 PM
// Design Name: 
// Module Name: tb_mixcolumns
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



module tb_mixcolumns;
    reg  [127:0] state_in;
    wire [127:0] state_out;

    // DUT
    mixcolumns uut (
        .state_in(state_in),
        .state_out(state_out)
    );

    initial begin
        $display("==== AES MixColumns Test ====");
        
        // Test vector từ chuẩn AES FIPS-197
        // Input column: [db, 13, 53, 45]  → Output: [8e, 4d, a1, bc]
        // Toàn state (4 cột)
        state_in = 128'hd4bf5d30_e0b452ae_b84111f1_1e2798e5;
        #10;
        $display("Input : %h", state_in);
        $display("Output: %h", state_out);

        // Expected result (theo FIPS-197)
        // Output = 046681e5_e0cb199a_48f8d37a_2806264c
        if (state_out === 128'h046681e5_e0cb199a_48f8d37a_2806264c)
            $display("✅ PASS");
        else
            $display("❌ FAIL - got %h", state_out);

        $finish;
    end

endmodule