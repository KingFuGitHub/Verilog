`timescale 1ps/1ps
`include "TrafficLite.v"

module TrafficLite_tb;

// variables
reg EWCar;
reg NSCar;

/*
could represent physical wires, must be continuously driven
by something, and cannot store a value. Hence, they are assigned values
using continous assignment statements.
*/
wire EWLite;
wire NSLite;

// The TrafficLite function
TrafficLite uut(
    EWCar,
    NSCar,
    EWLite,
    NSLite
);

    initial begin
        $dumpfile("TrafficLite_tb.vcd");
        $dumpvars(0, TrafficLite_tb);

        EWCar = 0; NSCar = 1;
        #10;

        NSCar = 0; EWCar = 1;
        #10;

        EWCar = 0; NSCar = 1;
        #10;

        NSCar = 0; EWCar = 1;
        #10;



        EWCar = 0; NSCar = 1;
        #10;

        NSCar = 0; EWCar = 1;
        #10;

        EWCar = 0; NSCar = 1;
        #10;

        NSCar = 0; EWCar = 1;
        #10;


    end
endmodule