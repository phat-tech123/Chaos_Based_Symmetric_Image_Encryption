module TO_tb;

reg in;
reg enable;

wire out;
RO #(.chainLength(4)) ro_1 (.in(in), .enable(enable), .out(out));

initial begin
    in = 0;
    forever #5 in = ~in;
end


initial begin
    enable = 0;
    
    #23 enable = 1;
    
    # 500 enable = 0;
end

endmodule
