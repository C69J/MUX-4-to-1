`timescale 1ns / 1ps

module MUX41(
    input I0,I1,I2,I3,
    input s1,s2,
    output reg y
    );
    
    always @(*)
    begin
      case({s1,s2})
      2'b00:y=I0;
      2'b01:y=I1;
      2'b10:y=I2;
      2'b11:y=I3;
      default: y=1'b0;
       endcase 
     end
       
endmodule
