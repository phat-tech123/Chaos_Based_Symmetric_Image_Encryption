`timescale 1ns/1ps

module sbox_tb;

reg clk;
reg reset_n;
reg tvalid;
reg [7:0] V;

wire valid;
wire [7:0] V_out;
wire done_sbox;

sbox DUT(
    .clk(clk),
    .reset_n(reset_n),
    .tvalid(tvalid),
    .V(V),
    .valid(valid),
    .V_out(V_out),
    .done_sbox(done_sbox)
);

// Clock
always #1 clk = ~clk;

integer i;
initial begin
    forever begin
        #100000;
        $display("Time now = %0t", $time);
    end
end

initial begin
    clk = 0;
    reset_n = 0;
    tvalid = 0;
    V = 0;

    // Reset
    #2;
    reset_n = 1;

    // Feed values from 255 → 0
    for(i = 255; i >= 0; i = i - 1) begin
        @(posedge clk);
        tvalid = 1;
        V = i;

        @(posedge clk);
        if(valid)
            $display("Inserted: %0d", V_out);
    end

    tvalid = 0;

    // Wait a bit
    #5000;

//    $finish;
end

endmodule

