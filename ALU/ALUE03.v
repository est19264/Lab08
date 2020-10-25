//Laboratorio 8 - Electrónica digital
//Diego Eestrada 19264

//Ejercicio 03
//ALU


module ALU(
    input wire [3:0]m, 
    input wire [3:0]n, 
    input wire [2:0]com,
    output reg [3:0]r); 


        always @ (m or n or com) begin

            case(com)
                3'b000: r = m & n;  
                3'b001: r = m | n; 
                3'b010: r = m + n; 
                3'b100: r = m & ~n;
                3'b101: r = m | ~n;
                3'b110: r = m - n; 
                3'b111: r = (m < n) ? 1:0; 
                default: r = 4'b0000; 
            endcase
        end
endmodule