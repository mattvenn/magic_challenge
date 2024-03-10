`default_nettype none

// just a stub to keep the Tiny Tapeout tools happy

module tt_um_magic_challenge (
    input  wire       VGND,
    input  wire       VPWR,
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    inout  wire [7:0] ua, // analog pins
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);
    
    sky130_fd_io__nand2_1 sky130_fd_io__nand2_1 
    (
        .VNB(VGND),
        .VPB(VPWR),
        .VPWR(VPWR),
        .VGND(VGND),
        .A(ui_in[0]),
        .B(ui_in[1]),
        .Y(uo_out[0])
    );

//    sky130_fd_pr__res_generic_po_CZ5NN7 a_n33_1000# a_n33_n1430#
    r r
    (
        .A(ua[0]),
        .B(ua[1]),
        .VSUBS(VGND)
    );

endmodule
