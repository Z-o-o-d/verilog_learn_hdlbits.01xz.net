/////////////////////////以下是学到的/////////////////////////


/////////////////////////以下是我写的/////////////////////////

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire cout;
add16 add16_1 (
    .a    (a[15:0]    ),
    .b    (b[15:0]    ),
    .cin    (0    ),
    .cout   (cout   ),
    .sum (sum[15:0] )
);

add16 add16_2 (
    .a    (a[31:16]    ),
    .b    (b[31:16]    ),
    .cin    (cout    ),
    .cout   (   ),
    .sum (sum[31:16] )
);

endmodule



