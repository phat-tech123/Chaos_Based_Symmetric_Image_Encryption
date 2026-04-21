module RO#(
    parameter chainLength = 4
)(
    input wire in,
    input wire enable,
    input wire [2:0] pdl,
    output wire out
);

    localparam I_AND = 16'h8888;// Sửa dòng này:
    (* DONT_TOUCH = "yes", mark_debug = "true" *) wire z1, z2, z3;

    LUT4 #(.INIT(I_AND)) LUT4_and (
        .O(z0), .I0(in), .I1(enable), .I2(0), .I3(0)
    );

    localparam I_NOT = 16'h5555;
    (* DONT_TOUCH = "yes" *) wire z1, z2, z3;

    LUT4 #(.INIT(I_NOT)) LUT4_not1 (.O(z1), .I0(z0), .I1(pdl[0]), .I2(pdl[1]), .I3(pdl[2]));
    LUT4 #(.INIT(I_NOT)) LUT4_not2 (.O(z2), .I0(z1), .I1(pdl[2]), .I2(pdl[0]), .I3(pdl[1]));
    LUT4 #(.INIT(I_NOT)) LUT4_not3 (.O(z3), .I0(z2), .I1(pdl[1]), .I2(pdl[2]), .I3(pdl[0]));

    assign out = z3;
endmodule

//module RO#(
//	parameter chainLength = 4
//)(
//    input wire in,
//    input wire enable,
//    input wire [2:0] pdl,
//    output wire out
//);

//localparam I_AND = 16'h8888;
//wire z0;

//LUT4 #(
//  .INIT(I_AND)  
//) LUT4_and (
//  .O(z0), 
//  .I0(in),
//  .I1(enable), 
//  .I2(0), 
//  .I3(0)  
//);


//localparam I_NOT = 16'h5555;
//wire z1, z2, z3;

//LUT4 #(
//  .INIT(I_NOT)  
//) LUT4_not1 (
//  .O(z1), 
//  .I0(z0),
//  .I1(pdl[0]), 
//  .I2(pdl[1]), 
//  .I3(pdl[2])  
//);

//LUT4 #(
//  .INIT(I_NOT)  
//) LUT4_not2 (
//  .O(z2), 
//  .I0(z1),
//  .I1(pdl[2]), 
//  .I2(pdl[0]), 
//  .I3(pdl[1])  
//);

//LUT4 #(
//  .INIT(I_NOT)  
//) LUT4_not3 (
//  .O(z3), 
//  .I0(z2),
//  .I1(pdl[1]), 
//  .I2(pdl[2]), 
//  .I3(pdl[0])  
//);

//assign out = z3;
//endmodule
