module CPU_EN_GEN (ALWAYS_CPU_EN, ONCE_CPU_EN, CLK, CPU_EN_OUT);
	
	input ALWAYS_CPU_EN;
	input ONCE_CPU_EN;
	input CLK;
	
	output CPU_EN_OUT;
	reg CPU_EN_BUFF;
	reg CPU_EN_OUT;
	wire ONCE_CPU_EN_pulse;
	wire N_CPU_CLK;
	
	assign N_CPU_CLK=~CLK;
	
	initial 
	begin 
		CPU_EN_OUT = 1'b0;
		CPU_EN_BUFF = 1'b0;
	end
	
	pluse_gen ONCE_CPU_EN_pulse_gen(			.clock(N_CPU_CLK),
												.trigger(ONCE_CPU_EN),
												.load(ONCE_CPU_EN_pulse));
	
	
	always @ (posedge N_CPU_CLK)
	begin 
			CPU_EN_BUFF<=ONCE_CPU_EN_pulse;
	end
	always @ (ALWAYS_CPU_EN)
	begin 
		if ( ALWAYS_CPU_EN == 1'b1)
			CPU_EN_OUT <= 1'b1;
		else
			CPU_EN_OUT<=CPU_EN_BUFF;
	end
	
endmodule