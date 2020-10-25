//Ejercicio 01: Contador
//Diego Estrada 19264

module testbench();
    reg clk, Reset, Enabled, L;
    reg [11:0] load;
    wire [11:0] Numb;

always 
 #1 clk = ~clk; 

//Se llama al contador de 12 bits
contador c1(clk, Reset, Enabled, L, load, Numb);

initial begin
    #2
    $display("\n");
    $display("Ejercicio 01");
    $display("clk Reset Enabled L load  Numb");
    $monitor("%b  %b  %b  %b  %b   %b", clk, Reset, Enabled, L, load, Numb);

    clk = 0; Reset = 0; Enabled = 0; L = 0; load = 12'b000000000000;

    #3 Reset = 0;
    #1 Reset = 1;
    #1 Reset = 0;
    #5 L = 1; load = 12'b101010101010;
    #1 L = 0; Enabled = 1;
    #1 Enabled = 1;

end 


initial
    #100 $finish;

initial begin
    $dumpfile("contador_tb.vcd");
    $dumpvars(0, testbench);

end 

endmodule
