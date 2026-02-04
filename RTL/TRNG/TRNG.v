module TRNG_top(
    input  wire clk,
    input  wire reset_n,
    input  wire read_req,      // THÊM: Tín hiệu yêu cầu đọc từ bên ngoài
    output wire [7:0] random_byte,
    output wire data_ready     // THÊM: Báo cho bên ngoài biết có dữ liệu để đọc
);

    // Khai báo dây nối nội bộ
    wire raw_bit;       // Bit thô từ Ring Oscillator
    wire pp_bit;        // Bit đã xử lý từ Von Neumann
    wire vn_valid;      // Tín hiệu Valid từ Von Neumann
    
    wire fifo_full;
    wire fifo_empty;
    
    // Các tín hiệu điều khiển từ Control Logic
    wire enable_ro;
    wire enable_pp;
    wire enable_shift;
    wire enable_fifo;
    wire [2:0] delay_cfg;
    wire ctrl_bit_select; // (Tùy chọn dùng hoặc không)

    // Dữ liệu từ Shift Register sang FIFO
    wire [7:0] shift_data;

    // --------------------------------------------------------
    // 1. TRNG CORE (Ring Oscillators)
    // --------------------------------------------------------
    // Giả sử trng_core bọc module RingOscillator bên trong
    trng_core core(
        .clk(clk),
        .enable(enable_ro),
        .delay_cfg(delay_cfg), 
        .raw_bit(raw_bit)
    );

    // --------------------------------------------------------
    // 2. POST-PROCESSING (Von Neumann)
    // --------------------------------------------------------
    Von_Neumann_Corrector vn(
        .clk(clk),
        .reset_n(reset_n),
        .enable(enable_pp),
        .raw_bit(raw_bit),
        .valid(vn_valid),       // Khi tìm được bit -> valid lên 1
        .processed_bit(pp_bit)
    );

    // --------------------------------------------------------
    // 3. SHIFT REGISTER (Gom 8 bit thành 1 byte)
    // --------------------------------------------------------
    shift_reg_8 shreg(
        .clk(clk),
        .reset_n(reset_n),
        .enable(enable_shift),
        .bit_in(pp_bit),
        .data_out(shift_data)
    );

    // --------------------------------------------------------
    // 4. FIFO (Bộ đệm đầu ra)
    // --------------------------------------------------------
    fifo_8bit #(
        .DEPTH(64),
        .DATA_WIDTH(8)
    ) fifo (
        .clk(clk),
        .reset_n(reset_n),
        .wr_en(enable_fifo),    // Điều khiển bởi Control Logic
        .rd_en(read_req),       // Điều khiển bởi người dùng bên ngoài
        .data_in(shift_data),   // Sửa tên port cho khớp với module FIFO chuẩn
        .full(fifo_full),
        .empty(fifo_empty),
        .data_out(random_byte)  // Sửa tên port cho khớp
    );

    // Output báo trạng thái cho người dùng
    assign data_ready = !fifo_empty; 

    // --------------------------------------------------------
    // 5. CONTROL LOGIC (Bộ não điều khiển)
    // --------------------------------------------------------
    control_logic ctrl(
        .clk(clk),
        .reset_n(reset_n),
        
        // Status Inputs
        .raw_bit(raw_bit),
        .pp_done(vn_valid),     // SỬA LỖI: Nối vn_valid vào pp_done
        .pp_valid(vn_valid),    // SỬA LỖI: Nối vn_valid vào pp_valid
        .fifo_full(fifo_full),
        .fifo_empty(fifo_empty), // Nối thêm nếu control logic cần

        // Control Outputs
        .delay_cfg(delay_cfg),
        .enable_ro(enable_ro),
        .enable_pp(enable_pp),
        .enable_shift(enable_shift),
        .enable_fifo(enable_fifo),
        .bit_select(ctrl_bit_select)
    );

endmodule

//module TRNG_top(
//    input  clk,
//    input  reset_n,
//    output [7:0] random_byte
//);

//wire raw_bit;
//wire pp_bit;
//wire pp_valid;
//wire fifo_full;
//wire fifo_empty;

//wire enable_ro, enable_pp, enable_shift, enable_fifo;
//wire [2:0] delay_cfg;
//wire [7:0] shift_data;

//trng_core core(
//    .clk(clk),
//    .enable(enable_ro),
//    .delay_cfg(delay_cfg),
//    .raw_bit(raw_bit)
//);

//Von_Neumann_Corrector vn(
//    .clk(clk),
//    .reset_n(reset_n),
//    .enable(enable_pp),
//    .raw_bit(raw_bit),
//    .valid(pp_valid),
//    .processed_bit(pp_bit)
//);

//shift_reg_8 shreg(
//    .clk(clk),
//    .reset_n(reset_n),
//    .enable(enable_shift),
//    .bit_in(pp_bit),
//    .data_out(shift_data)
//);

//fifo_8bit fifo(
//    .clk(clk),
//    .reset_n(reset_n),
//    .wr_en(enable_fifo),
//    .din(shift_data),
//    .full(fifo_full),
//    .dout(random_byte)
//);

//control_logic ctrl(
//    .clk(clk),
//    .reset_n(reset_n),
//    .raw_bit(raw_bit),
//    .pp_done(pp_done),
//    .pp_valid(pp_valid),
//    .fifo_full(fifo_full),
//    .delay_cfg(delay_cfg),
//    .enable_ro(enable_ro),
//    .enable_pp(enable_pp),
//    .enable_shift(enable_shift),
//    .enable_fifo(enable_fifo)
//);

//endmodule

