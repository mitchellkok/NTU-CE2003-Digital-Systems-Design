module lab1_FSM (input clk, rst, fifty, dollar, cancel, 
	output reg insert_coin, money_return, dispense, reg [1:0] st);
	
	// Step 1, 2 & 3
	reg [1:0] nst;
	parameter INIT = 2'b00, S50c = 2'b01, VEND = 2'b10, RETURN = 2'b11;
	
	// Step 4
	always @ (posedge clk)
	begin
		if (rst) st <= INIT;
		else st <= nst;
	end
	
	// Step 5
	always @* 
	begin 
		nst = st; //assign state so no need to write else statements
		insert_coin = 1'b0;
		money_return = 1'b0;
		dispense = 1'b0;
		
		case(st)
			INIT: 
			begin	// don't need for execution of single statement
				if (fifty) nst = S50c;
				if (dollar) nst = VEND;
				insert_coin = 1'b1;
			end
			
			S50c:
			begin
				if (cancel || dollar) nst = RETURN;
				if (fifty) nst = VEND;
				insert_coin = 1'b1;
			end
			
			VEND:
				dispense = 1'b1;
			
			RETURN:
			begin
				nst = INIT;
				money_return = 1'b1;
			end
		endcase
	end
		
endmodule
				
				
			
					
	
