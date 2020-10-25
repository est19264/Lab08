//Laboratorio 8 - Electrónica digital
//Diego Eestrada 19264

//Ejercicio 02
//ROM 4kx8

module ROM_4kx8 (
    input wire [11:0] L,
    output wire [7:0]D);
    reg [7:0] memo[0:4095];

    initial begin 
        $readmemb("memo.rom", memo);
    end

    assign D = memo[L];

endmodule 

