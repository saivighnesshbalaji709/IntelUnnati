module fsm_tb();

 reg in, clk, rst;
 wire out;
 
  fsm duv(
                            .IN(in),
                            .CLK(clk),
                            .RST(rst),
                            .OUT(out)
                             );
  initial
   begin
    in = 0;
    // Reset Generation
    @(posedge clk);
    rst = 1;
    #15 @(posedge clk);
    rst = 0; 
    #5 @(posedge clk) in = 1;
    #10 @(posedge clk) in = 1;
    #10 @(posedge clk) in = 0;
    #10 @(posedge clk) in = 0;
    #10 @(posedge clk) in = 1;
    #10 @(posedge clk) in = 0;
    #10 @(posedge clk) in = 0;
    #10 @(posedge clk) in = 1;
    #10 @(posedge clk) in = 1;
    #10 @(posedge clk) in = 1;
    #10 @(posedge clk) in = 1;
    #10 @(posedge clk) in = 1;
    #10 @(posedge clk) in = 0;
    #10 @(posedge clk) in = 0;
   end

  initial
   begin 
    // Clock Generation
    clk = 0;
    forever
     #10 clk = ~clk;
   end

  initial
   begin
    #380;
    $finish();
   end

endmodule 
