module fifo_8bit #(
    parameter DEPTH = 64,
    parameter DATA_WIDTH = 8
)(
    input  wire clk,
    input  wire reset_n,
    input  wire wr_en,          
    input  wire rd_en,       
    input  wire [DATA_WIDTH-1:0] data_in,
    output reg  full,
    output reg  empty,
    output reg  [DATA_WIDTH-1:0] data_out
);

    // Bộ nhớ RAM
    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    reg [$clog2(DEPTH)-1:0] wr_ptr;
    reg [$clog2(DEPTH)-1:0] rd_ptr;
    
    reg [$clog2(DEPTH):0] count; 

    // --- Logic ghi (Write) ---
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            wr_ptr <= 0;
        end else if (wr_en && !full) begin
            mem[wr_ptr] <= data_in;
            wr_ptr <= wr_ptr + 1; 
        end
    end

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            rd_ptr <= 0;
            data_out <= 0;
        end else if (rd_en && !empty) begin
            data_out <= mem[rd_ptr];
            rd_ptr <= rd_ptr + 1; 
        end
    end

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            count <= 0;
        end else begin
            case ({wr_en && !full, rd_en && !empty})
                2'b10: count <= count + 1; 
                2'b01: count <= count - 1; 
                default: count <= count;
            endcase
        end
    end

    always @(*) begin
        full  = (count == DEPTH - 1);
        empty = (count == 0);
    end

endmodule



//module fifo_8bit #(
//    parameter DEPTH = 64
//)(
//    input  clk,
//    input  reset_n,
//    input  enable,
//    input  [7:0] data_in,
//    output reg full,
//    output reg empty,
//    output [7:0] data_out
//);

//reg [7:0] mem [0:DEPTH-1];
//reg [5:0] wr_ptr;

//always @(posedge clk or negedge reset_n) begin
//    if(!reset_n) begin
//        wr_ptr <= 0;
//        full <= 0;
//        empty <= 0;
//    end else if(enable && !full) begin
//        mem[wr_ptr] <= data_in;
//        wr_ptr <= wr_ptr + 1;
//    end
//end

//always@(posedge clk) begin
//    if(wr_ptr == DEPTH-1) begin
//        full <= 1;
//    end else begin
//        full <= 0;
//    end
    
//    if(wr_ptr == 0) begin
//        empty <= 1;
//    end else begin
//        empty <= 0;
//    end
//end



//assign data_out = mem[wr_ptr-1];

//endmodule

