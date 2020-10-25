//Ejercicio 02: ROM 4kx8
//Diego Estrada 19264

module testbench ();

    reg [11:0]L;
    wire [7:0]D;

    ROM_4kx8 r(L, D);

initial begin
    #1
    $display("___ROM 4kx8___");
    $display("Localidad Lectura");
    $monitor("%b $b", L, D);

    #5 L = 12'b000000000000;
    #5 L = 12'b000000000001;
    #5 L = 12'b000000000010;
    #5 L = 12'b000000000011;
    #5 L = 12'b000000000100;
    #5 L = 12'b000000000101;
    #5 L = 12'b000000000110;
    #5 L = 12'b000000000111;
    #5 L = 12'b000000001000;
    #5 L = 12'b000000001001;
    #5 L = 12'b000000001010;

end

initial 
    #100 $finish;
initial begin
   $dumpfile("RomE02_tb.vcd");
   $dumpvars(0, testbench); 
end
endmodule