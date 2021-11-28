'timescale 1ns/10ps 

module lab1_FSM_tb();

	// Step 1
	reg clk, rst, fifty, dollar, cancel;
	wire insert_coin, money_return, dispense;
	wire [1:0] st;
	 
	lab1_FSM uut (.clk(clk), .rst(rst), .fifty(fifty), .dollar(dollar), .cancel(cancel),
	 .insert_coin(insert_coin), .money_return(money_return), .dispense(dispense), .st(st));
	 
	// Step 2
	always #5 clk = ~clk;
	
	// Step 3
	initial begin
		clk = 0; rst = 0; fifty = 0; dollar = 0; cancel = 0;
		#10 rst = 1;    // to INIT (0) state
		#10 fifty = 1;    // to S50c (1) state
		#10 fifty = 0;
		#10 fifty = 1;    // to VEND (2) state
		#10 fifty = 0;
		#20 rst = 0;    // RESET, to INIT (0) state
		#10 rst = 1;
		#10 dollar = 1;    // to  VEND (2) state
		#10 dollar = 0;
		#20 rst = 0;    // RESET, to INIT (0) state
		#10 rst = 1;
		#10 fifty = 1;    // to S50c (1) state
		#10 fifty = 0;
		#10 dollar = 1;    // to RETURN (3) state
		#10 dollar = 0;    // to INIT (0) state
		#20 fifty = 1;    // to S50c (1) state
		#10 fifty = 0;
		#10 cancel = 1;    // to RETURN (3) state
		#10 cancel = 0;    // to INIT (0) state
	end

endmodule

