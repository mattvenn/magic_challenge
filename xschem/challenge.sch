v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 300 430 1100 830 {flags=graph
y1=-0.0011
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="5 4"
node="in
out"}
N 0 -60 0 -30 {
lab=in}
N -0 280 90 280 {
lab=VDD}
N 0 430 90 430 {
lab=VSS}
N -80 -0 -20 -0 {
lab=VSS}
N 0 30 0 110 {
lab=#net1}
N -0 170 -0 200 {
lab=#net2}
N -80 200 -0 200 {
lab=#net2}
N -80 200 -80 280 {
lab=#net2}
N -80 280 -40 280 {
lab=#net2}
N 0 250 80 250 {
lab=VDD}
N 80 250 80 280 {
lab=VDD}
N -0 310 -0 350 {
lab=out}
N -70 350 -70 430 {
lab=#net2}
N -70 430 -40 430 {
lab=#net2}
N -0 460 90 460 {
lab=VSS}
N 90 430 90 460 {
lab=VSS}
N 0 380 0 400 {
lab=out}
N 0 380 160 380 {
lab=out}
N -70 280 -70 350 {
lab=#net2}
N 0 350 0 380 {
lab=out}
C {sky130_fd_pr/res_high_po_0p35.sym} 0 0 0 0 {name=R1
L=60
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/iopin.sym} 160 380 0 0 {name=p2 lab=out}
C {devices/iopin.sym} -170 -100 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} -170 -70 0 0 {name=p5 lab=VSS}
C {devices/iopin.sym} 0 -60 2 0 {name=p6 lab=in}
C {sky130_fd_pr/cap_mim_m3_1.sym} 0 140 0 0 {name=C1 model=cap_mim_m3_1 W=20 L=20 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} -20 430 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -20 280 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 90 280 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 90 430 2 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -80 0 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/code.sym} 200 -50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 410 -70 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} 300 170 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=false 
value="
vvss vss 0 0
vvdd vdd 0 1.8
vin in 0 pulse 0 1.8 5n 1n 1n 50n 100n
.control
     tran 10p 200n
    write challenge.raw
    
.endc
"}
