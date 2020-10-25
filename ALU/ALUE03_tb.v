module testbench();

reg [3:0]m;
reg [3:0]n;
reg [2:0]com;
wire [3:0]r;

ALU test(m, n, com, r);

initial begin
    #1
    $display("-ALU-");
    $display("m n com       r");
    $monitor("%b %b %b      %b", m, n, com, r);
        m = 4'b0000; n = 4'b0000; com = 3'b000;
    #1 m = 4'b0001; n = 4'b0001; com = 3'b000;
    #1 m = 4'b0001; n = 4'b0001; com = 3'b001;
    #1 m = 4'b0001; n = 4'b0001; com = 3'b010;
    #1 m = 4'b0001; n = 4'b0001; com = 3'b011;
    #1 m = 4'b0001; n = 4'b0001; com = 3'b100;
    #1 m = 4'b0001; n = 4'b0001; com = 3'b101;
    #1 m = 4'b1000; n = 4'b1000; com = 3'b110;
    #1 m = 4'b0001; n = 4'b0001; com = 3'b111;
end

initial 
    #21 $finish;

initial begin
   $dumpfile("ALUE03_tb.vcd");
   $dumpvars(0, testbench); 
end
endmodule