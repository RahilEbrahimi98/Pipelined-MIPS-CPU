`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:16:22 07/03/2019
// Design Name:   Controller
// Module Name:   E:/University/MEMARI/project5/project/CONTROL_TEST2.v
// Project Name:  project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CONTROL_TEST2;

	// Inputs
	reg Clk;
	reg [5:0] Op;
	reg [5:0] Func;
	reg INT;
	reg NMI;
	reg INT_FLAG;

	// Outputs
	wire PCWrite;
	wire lorD;
	wire MemWrite;
	wire [1:0] MemtoReg;
	wire IRWrite;
	wire [2:0] PCSrc;
	wire [1:0] ALUOp;
	wire [1:0] ALUSrcB;
	wire ALUSrcA;
	wire RegWrite;
	wire [1:0] RegDst;
	wire Branch;
	wire [1:0] BRANCH_EQ_NQ;

	// Instantiate the Unit Under Test (UUT)
	Controller uut (
		.Clk(Clk), 
		.Op(Op), 
		.Func(Func), 
		.PCWrite(PCWrite), 
		.INT(INT), 
		.NMI(NMI), 
		.INT_FLAG(INT_FLAG), 
		.lorD(lorD), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg), 
		.IRWrite(IRWrite), 
		.PCSrc(PCSrc), 
		.ALUOp(ALUOp), 
		.ALUSrcB(ALUSrcB), 
		.ALUSrcA(ALUSrcA), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.Branch(Branch), 
		.BRANCH_EQ_NQ(BRANCH_EQ_NQ)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Op = 0;
		Func = 0;
		INT = 0;
		NMI = 0;
		INT_FLAG = 0;
            
	

		// Wait 100 ns for global reset to finish
		#200;
	NMI=1;
	#50;
	NMI=0;
	#450;
	NMI=1;
	INT=1;
	#50;
	NMI=0;
	INT=0;
		// Add stimulus here

	end
	always 
	#100 Clk=~Clk;
		// Add stimulus here

endmodule

