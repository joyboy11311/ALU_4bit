module alu_4bit (
	input [3:0] A,
	input [3:0] B,
	input [2:0] opcode,
	output reg [3:0] result,
	output reg carry_out,
	output reg zero_flag
);

	always @(*) begin
		carry_out = 0;
		case (opcode)
			3'b000: result = A & B; //AND
			3'b001: result = A | B; //OR
			3'b010: {carry_out, result} = A + B; // ADD
			3'b011: result = A - B; //SUB
			3'b100: result = A ^ B; //XOR
			3'b101: result = ~A; //NOT A
			3'b110: result = A + 1; //INC A
			3'b111: result = A - 1; //DEC A
			default: result = 4'b0000;
		endcase
		zero_flag = (result==0);
	end
endmodule
