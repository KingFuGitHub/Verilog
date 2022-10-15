
// removed clock
module TrafficLite(EWCar, NSCar, EWLite, NSLite);

input EWCar, NSCar;
output EWLite, NSLite;

reg state;
initial state = 0; // set initial state

// following two assignments set the output, which is based only on the state variable.
assign NSLite = ~state; // NSLite on if state = 0
assign EWLite = state; // EWLite on if state = 1

always @(*) // all state updates on a positive

    case(state)
        0: state = EWCar; // change state only if EWCAR
        1: state = NSCar; // change state only if NSCar
    endcase

endmodule