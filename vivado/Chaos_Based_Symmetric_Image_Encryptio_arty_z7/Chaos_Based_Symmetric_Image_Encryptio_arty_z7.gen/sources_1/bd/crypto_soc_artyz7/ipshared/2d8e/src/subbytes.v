module subbytes#(
    parameter SBOX_WIDTH = 8,
    parameter SBOX_DEPTH = 256,
    parameter DATA_WIDTH = 128
)(
    input clk,
    input reset_n,

    // Interface nạp S-box (Ghi)
    input sbox_valid, 
    input [SBOX_WIDTH-1:0] sbox_out,

    // Interface xử lý dữ liệu (Đọc)
    input tvalid,
    input [DATA_WIDTH-1:0] in,       

    output reg valid,
    output reg [DATA_WIDTH-1:0] out       
);

    localparam NUM_BYTES = DATA_WIDTH / 8;

    reg [7:0] index;
    reg sbox_ready;

//    (* ram_style = "distributed" *) reg [7:0] sbox_slice [0:NUM_BYTES-1][0:255];

    reg [7:0] sbox_slice [0:NUM_BYTES-1][0:255];
    integer i;
    genvar g;

    // 1. CONTROL LOGIC (CÓ RESET)
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            index <= 0;
            sbox_ready <= 0;
        end else if (sbox_valid && !sbox_ready) begin
            index <= index + 1;
            if (index == SBOX_DEPTH - 1) sbox_ready <= 1;
        end
    end

    // 2. MEMORY WRITE 
    generate
        for (g = 0; g < NUM_BYTES; g = g + 1) begin : MEM_WRITE
            always @(posedge clk) begin
                if (sbox_valid && !sbox_ready) begin
                    sbox_slice[g][index] <= sbox_out;
                end
            end
        end
    endgenerate

    // 3. MEMORY
    wire [7:0] ram_read_data [0:NUM_BYTES-1];

    generate
        for (g = 0; g < NUM_BYTES; g = g + 1) begin : MEM_ASYNC_READ
            assign ram_read_data[g] = sbox_slice[g][in[g*8 +: 8]];
        end
    endgenerate

    // 4. OUTPUT REGISTER 
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            valid <= 0;
            out <= 0;
        end else begin
            if (tvalid && sbox_ready) valid <= 1;
            else valid <= 0;

            if (tvalid && sbox_ready) begin
                for (i = 0; i < NUM_BYTES; i = i + 1) begin
                    out[i*8 +: 8] <= ram_read_data[i];
                end
            end
        end
    end

endmodule


//module subbytes#(
//    parameter SBOX_WIDTH = 8,
//    parameter SBOX_DEPTH = 256,
//    parameter DATA_WIDTH = 128
//)(
//    input clk,
//    input reset_n,

//    // Interface nạp S-box (Ghi)
//    input sbox_valid, 
//    input [SBOX_WIDTH-1:0] sbox_out,

//    // Interface xử lý dữ liệu (Đọc)
//    input tvalid,
//    input [DATA_WIDTH-1:0] in,      

//    output reg valid,
//    output reg [DATA_WIDTH-1:0] out      
//);

//    // Tính số lượng bản sao cần thiết (16 bản cho 128-bit)
//    localparam NUM_BYTES = DATA_WIDTH / 8;

//    reg [7:0] index;
//    reg sbox_ready;

//    // --------------------------------------------------------
//    // KỸ THUẬT SLICING: Tạo 16 mảng nhớ riêng biệt
//    // Mỗi mảng chỉ phục vụ 1 byte của đầu vào -> Không bị nghẽn cổng
//    // --------------------------------------------------------
//    (* ram_style = "distributed" *) reg [7:0] sbox_slice [0:NUM_BYTES-1][0:255];

//    integer i;
//    genvar g;

//    // 1. CONTROL LOGIC (Nạp S-box)
//    always @(posedge clk or negedge reset_n) begin
//        if (!reset_n) begin
//            index <= 0;
//            sbox_ready <= 0;
//        end else if (sbox_valid && !sbox_ready) begin
//            index <= index + 1;
//            if (index == SBOX_DEPTH - 1) sbox_ready <= 1;
//        end
//    end

//    // 2. MEMORY WRITE (Ghi đồng thời vào tất cả các bản sao)
//    generate
//        for (g = 0; g < NUM_BYTES; g = g + 1) begin : MEM_WRITE
//            always @(posedge clk) begin
//                if (sbox_valid && !sbox_ready) begin
//                    sbox_slice[g][index] <= sbox_out;
//                end
//            end
//        end
//    endgenerate

//    // 3. MEMORY READ (Mỗi byte đọc từ bản sao của riêng nó)
//    generate
//        for (g = 0; g < NUM_BYTES; g = g + 1) begin : MEM_READ
//            always @(posedge clk) begin
//                if (tvalid && sbox_ready) begin
//                    // Byte thứ 'g' chỉ đọc từ 'sbox_slice[g]'
//                    // Đây là truy cập 1 cổng -> Vivado cực thích điều này -> LUTRAM 100%
//                    out[g*8 +: 8] <= sbox_slice[g][in[g*8 +: 8]];
//                end
//            end
//        end
//    endgenerate

//    // 4. Valid signal logic
//    always @(posedge clk or negedge reset_n) begin
//        if (!reset_n) valid <= 0;
//        else if (tvalid && sbox_ready) valid <= 1;
//        else valid <= 0;
//    end

//endmodule

//module subbytes#(
//	parameter SBOX_WIDTH = 8,
//	parameter SBOX_DEPTH = 256,
//	parameter DATA_WIDTH = 128
//)(
//	input clk,
//	input reset_n,

//	input sbox_valid, 
//	input [SBOX_WIDTH-1:0]  sbox_out,

//	input tvalid,
//	input [DATA_WIDTH-1:0] in,     

//	output reg valid,
//	output reg [DATA_WIDTH-1:0] out     
//);

//// 256-byte S-box memory
//reg [SBOX_WIDTH-1:0] sbox_mem [0:SBOX_DEPTH-1];
//reg [7:0] index;
//reg sbox_ready;

//integer i;
//// =======================================
//// PHASE 1 : BUILDING SBOX
//// =======================================
//always @(posedge clk or negedge reset_n) begin
//    	if (!reset_n) begin
//        	index <= 0;
//        	sbox_ready <= 0;
//    	end else if (sbox_valid && !sbox_ready) begin
//        	sbox_mem[index] <= sbox_out;
//        	index <= index + 1;

//        	if (index == SBOX_DEPTH - 1) sbox_ready <= 1;
//    end
//end
//// =======================================
//// PHASE 2 : LOOKUP 128-bit
//// =======================================
//always @(posedge clk or negedge reset_n) begin
//	if (!reset_n) begin
//		valid 	<= 0;
//		out 	<= 0;
//	end else if (tvalid && sbox_ready) begin
//		valid <= 1;
//		for (i = 0; i < DATA_WIDTH/8; i = i + 1) out[i*8 +: 8] <= sbox_mem[in[i*8 +: 8]];
//	end else begin
//		valid <= 0;
//        out     <= out;
//	end
//end

//endmodule
