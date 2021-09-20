`timescale 1ns/1ns
`include "SIMPLIFY_CODE.v"

module simplify1;

    reg X;
    reg Y;
    reg Z;
    wire M;

simplify wew(X, Y, Z, M);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, simplify);

    X = 0; Y = 0; Z = 0;
    #20;

    X = 0; Y = 0; Z = 1;
    #20;

    X = 0; Y = 1; Z = 1;
    #20;

    X = 1; Y = 1; Z = 1;
    #20;

    $display("test complete 4");
end

endmodule