module digital_dice(
    input clk,
    input rst_n,
    input roll,
    output reg [2:0] dice,
    output reg [6:0] seg
);

always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
    begin
        dice <= 3'd1;
    end
    else if (roll)
    begin
        // Count from 1 to 6
        if (dice == 3'd6)
            dice <= 3'd1;
        else
            dice <= dice + 3'd1;
    end
end

always @(*)
begin
    case(dice)
        3'd1: seg = 7'b1111001; // 1
        3'd2: seg = 7'b0100100; // 2
        3'd3: seg = 7'b0110000; // 3
        3'd4: seg = 7'b0011001; // 4
        3'd5: seg = 7'b0010010; // 5
        3'd6: seg = 7'b0000010; // 6
        default: seg = 7'b1111111;
    endcase
end

endmodule
