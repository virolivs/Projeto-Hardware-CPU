module mux_MEM_to_REG (
    input   wire    [3:0]   selector,
    input   wire    [31:0]   data_0,
    input   wire    [31:0]   data_1,
    input   wire    [31:0]   data_2,
    input   wire    [31:0]   data_3,
    input   wire    [31:0]   data_4,
    input   wire    [31:0]   data_5,
    input   wire    [31:0]   data_6,
    input   wire    [31:0]   data_7,
    input   wire    [31:0]   data_8,
    output  reg     [31:0]   data_out
);

always @(*) begin
    case (selector)
        4'b0000: data_out = data_0; // ALUOut
        4'b0001: data_out = data_1; // LS
        4'b0010: data_out = data_2; // HI
        4'b0011: data_out = data_3; // LO
        4'b0100: data_out = data_4; // Sign Extend 1 to 32
        4'b0101: data_out = data_5; // Shift Left 16 to 32
        4'b0110: data_out = data_6; // Shift Register
        4'b0111: data_out = data_7; // A
        4'b1000: data_out = data_8; // B
        4'b1001: data_out = 32'b00000000000000000000000011100011; //227
    endcase
end

endmodule