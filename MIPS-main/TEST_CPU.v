`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:36:04 07/03/2019
// Design Name:   CPU
// Module Name:   E:/University/MEMARI/project5/project/TEST_CPU.v
// Project Name:  project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_CPU;

	// Inputs
	reg CLK;
	reg INT;
	reg NMI;
	reg INT_FLAG;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.CLK(CLK), 
		.INT(INT), 
		.NMI(NMI), 
		.INT_FLAG(INT_FLAG)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		INT = 0;
		NMI = 0;
		INT_FLAG = 0;

		// Wait 100 ns for global reset to finish
		#100;
		INT=1;

		// Add stimulus here

	end
   always 	
	#100 CLK=~CLK;   
endmodule

