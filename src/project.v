`default_nettype none

// just a stub to keep the Tiny Tapeout tools happy

module tt_um_magic_challenge (
    input  wire       VGND,
    input  wire       VPWR,
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    inout  wire [7:0] ua, // analog pins
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
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
endmodule
