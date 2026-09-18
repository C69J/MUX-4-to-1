`timescale 1ns / 1ps

module MUX41_testbench(

    );
    reg s1,s2;
    reg I0,I1,I2,I3;
    wire y;
    
    MUX41 dut(y,I0,I1,I2,I3,s1,s2);
    integer i;
    initial
    begin
       for (i=0; i<64; i=i+1)begin
       {s1,s2,I0,I1,I2,I3}=i; #50;
    end        
    end
    
    endmodule
