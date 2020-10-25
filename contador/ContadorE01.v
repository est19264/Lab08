//Laboratorio 8 - Electrónica digital
//Diego Eestrada 19264


//Ejercicio 01
//Modulo para el contador de 12 bits
module contador (
    input wire clk, Reset, Enabled, L,
    input wire [11:0] load,
    output reg [11:0] Numb);
    always @(posedge clk or posedge Reset or posedge L) begin
        if (Reset == 1) 
            Numb <= 12'b000000000000;
        else if (Enabled == 1) 
            Numb <= Numb + 1;
        else if (L == 1) 
            Numb <= load;
    end
endmodule
