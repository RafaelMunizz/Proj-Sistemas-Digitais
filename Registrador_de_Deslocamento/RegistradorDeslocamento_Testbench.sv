// Code your testbench here
// or browse Examples

module Test_RDP();

  logic PL_, clock1, clock2, Q7, Q7_, DS, 
  		P0, P1, P2, P3, P4, P5, P6, P7;
  reg [7:0] registrador;

  RDP Test(.PL_(PL_),
           .clock1(clock1),
           .clock2(clock2), 
           .P0(P0), .P1(P1), 
           .P2(P2), .P3(P3), 
           .P4(P4), .P5(P5), 
           .P6(P6), .P7(P7),
           .Q7(Q7), .Q7_(Q7_),
           .DS(DS), .registrador(registrador));


  initial begin

    $dumpfile("dump.vcd");
    $dumpvars
    (0, clock1, clock2, PL_, DS, registrador, Q7, Q7_);

    // Início
    
    // 8'b00101010
    P0 <= 1'd0;
    P1 <= 1'd0;
    P2 <= 1'd1;
    P3 <= 1'd0;
    P4 <= 1'd1;
    P5 <= 1'd0;
    P6 <= 1'd1;
    P7 <= 1'd0;
    
    DS <= 1'b1;
    
    PL_ <= ~(1'b1);
    
    clock1 <= 1'bx;
    clock2 <= 1'bx;
   
    	//#######  REPETIÇÃO 1  #######//

    //PL_ = 0, CLK1 = 0, CLK2 = 0
    #100
    PL_ <= ~(0);
    clock1 <= 1'b0;
    clock2 <= 1'b0;
    
    // 1° teste = Subida de CLK2 com CLK1 em LOW
    
    #100
    clock2 <= 1'b1;
    
    #100
    clock2 <= 1'b0;
    
    #100
    DS <= ~(0); //Alteração DS
    
    // 2° teste = Subida de CLK2 com CLK1 em HIGH
    
    #100
    clock1 <= 1'b1;
   
    #100
    clock2 <= 1'b1;
    
    #100
    clock1 <= 1'b0;
    
    #100
    DS <= ~(1); //Alteração DS
    
    // 3° teste = Subida de CLK1 com CLK2 em LOW
    
    clock2 <= 1'b0;
    
    #100
    clock1 <= 1'b1;
    
    // 4° teste = Subida de CLK1 com CLK2 em HIGH
   
    #100
    clock1 <= 1'b0;
    
    #100
    clock2 <= 1'b1; 
    
    #100
    DS <= ~(0); //Alteração PL_
        
    #100
    clock1 <= 1'b1;
    
    #100
    clock1 <= 1'b0;
    clock2 <= 1'b0;
    
    	//#######  REPETIÇÃO 2  #######//
   
        
    // Pausa do clock 
    #100
    PL_ <= ~(1);
    clock1 <= 1'bx;
    clock2 <= 1'bx;
    #300
    PL_ <= ~(0);
    
    //PL_ = 1, CLK1 = 0, CLK2 = 0
   
    clock1 <= 1'b0;
    clock2 <= 1'b0;
    
    // 1° teste = Subida de CLK2 com CLK1 em LOW
    
    #100
    clock2 <= 1'b1;
    
    #100
    clock2 <= 1'b0;
    
    #100
    DS <= ~(0); //Alteração DS
    
    // 2° teste = Subida de CLK2 com CLK1 em HIGH
    
    #100
    clock1 <= 1'b1;
   
    #100
    clock2 <= 1'b1;
    
    #100
    clock1 <= 1'b0;
    
    #100
    DS <= ~(1); //Alteração DS
    
    // 3° teste = Subida de CLK1 com CLK2 em LOW
 
    clock2 <= 1'b0;
    
    #100
    clock1 <= 1'b1;
    
    // 4° teste = Subida de CLK1 com CLK2 em HIGH
   
    #100
    clock1 <= 1'b0;
    
    #100
    clock2 <= 1'b1; 
    
    #100
    DS <= ~(0); //Alteração PL_
        
    #100
    clock1 <= 1'b1;
    
    #100
    clock1 <= 1'b0;
    clock2 <= 1'b0;
    
        //#######  REPETIÇÃO 3  #######//
    
     // Pausa do clock 
    #100
    PL_ <= ~(1);
    clock1 <= 1'bx;
    clock2 <= 1'bx;
    #300
    PL_ <= ~(0);
    
    //PL_ = 0, CLK1 = 0, CLK2 = 0
    clock1 <= 1'b0;
    clock2 <= 1'b0;
    
    // 1° teste = Subida de CLK2 com CLK1 em LOW
    
    #100
    clock2 <= 1'b1;
    
    #100
    clock2 <= 1'b0;
    
    #100
    DS <= ~(0); //Alteração DS
    
    // 2° teste = Subida de CLK2 com CLK1 em HIGH
    
    #100
    clock1 <= 1'b1;
   
    #100
    clock2 <= 1'b1;
    
    #100
    clock1 <= 1'b0;
    
    #100
    DS <= ~(1); //Alteração DS
    
    // 3° teste = Subida de CLK1 com CLK2 em LOW
    
    clock2 <= 1'b0;
    
    #100
    clock1 <= 1'b1;
    
    // 4° teste = Subida de CLK1 com CLK2 em HIGH
   
    #100
    clock1 <= 1'b0;
    
    #100
    clock2 <= 1'b1; 
    
    #100
    DS <= ~(0); //Alteração DS
        
    #100
    clock1 <= 1'b1;
    
    #100
    clock1 <= 1'b0;
    clock2 <= 1'b0;
     
    // Final
    #100
    PL_ <= ~(1'b1);
    clock1 <= 1'bx;
    clock2 <= 1'bx;
    
    #100
    PL_ <= ~(1'b0);
    
    #500
    $finish;

  end
endmodule
