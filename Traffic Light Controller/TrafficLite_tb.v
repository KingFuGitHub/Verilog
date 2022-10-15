`timescale 1ps/1ps
`include "TrafficLite.v"

module TrafficLite_tb;

reg EWCar;
reg NSCar;
reg Clock;

wire EWLite;
wire NSLite;

TrafficLite uut(
    EWCar,
    NSCar,
    EWLite,
    NSLite,
    Clock
);

    initial begin
        $dumpfile("TrafficLite_tb.vcd");
        $dumpvars(0, TrafficLite_tb);

        EWCar = 0;
        #30;

        NSCar = 1;
        #30;

        EWCar = 1;
        #30;

        NSCar = 0;
        #30;
    end
endmodule