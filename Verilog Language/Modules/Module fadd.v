/////////////////////////以下是学到的/////////////////////////

//就只是写个add1的低层

/////////////////////////以下是我写的/////////////////////////

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//

    wire cout1,cout2;

    add16 add16_lower_inst(
    .a    (a[15:0]    ),
    .b    (b[15:0]    ),
    .cin  (1'b0  ),
    .sum  (sum[15:0]  ),
    .cout (cout1 )
);
    add16 add16_higher_inst(
    .a    (a[31:16]    ),
    .b    (b[31:16]    ),
    .cin  (cout1  ),
    .sum  (sum[31:16]  ),
    .cout (cout2 )
);
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
// Full adder module here
    assign sum=a^b^cin;
    assign cout=(a&b)|(a&cin)|(b&cin);
endmodule
