module seven_segment(
    input [2:0] dice,
    output reg [6:0] seg
);

always @(*)
begin
    case(dice)
        1: seg = 7'b1111001; // 1
        2: seg = 7'b0100100; // 2
        3: seg = 7'b0110000; // 3
        4: seg = 7'b0011001; // 4
        5: seg = 7'b0010010; // 5
        6: seg = 7'b0000010; // 6
        default: seg = 7'b1111111;
    endcase
end

endmodule
