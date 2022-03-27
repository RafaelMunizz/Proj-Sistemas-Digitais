// Code your testbench here
// or browse Examples

module Test_TB();

  logic clock;
  logic [3:0] saida;
  logic [3:0] entrada;
  logic reset, load, up_down;

  Contador4B Test(.clock(clock),
                  .reset(reset),
                  .load(load),
                  .up_down(up_down),
                  .entrada(entrada),
                  .contador(saida));
  
    
       
	//sinal de clock
   always 
     #50
     clock <= ~clock; 

   initial begin
     
     $dumpfile("dump.vcd");
 	 $dumpvars(1);
     
     //Início
     clock <= 1'b1;
     reset <= 1'b0;
     load <= 1'b0;
     up_down <= 1'b1;
     entrada <= 4'd10;
     
     #200 
     reset <= 1;
     
     #600
     up_down <= 0;
     
     #700
     load <= 1;
     #50
     load <= 0;
     
     #1250
     reset <= 0;
     
     #300
     up_down <= 1;
     
     #500
     reset <= 1;
     
     #400
     entrada <= 4'd5;
     
     #700
     load <= 1;
     #50
     load <= 0;
     
     #800
     up_down <= 0;
     
     #550
     reset <= 0;
     
     #200 
     $finish;
     
   end
endmodule
