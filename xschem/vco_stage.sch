v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 180 80 180 {
lab=Vds_m5}
N 0 180 0 220 {
lab=Vds_m5}
N 0 280 0 340 {
lab=VSS}
N -220 340 300 340 {
lab=VSS}
N -100 250 -40 250 {
lab=Vc}
N -170 -170 -150 -170 {
lab=Vb}
N -270 -260 220 -260 {
lab=VDD}
N -170 -10 -150 -10 {
lab=Vb}
N 0 250 0 340 {
lab=VSS}
N 150 -30 210 -30 {
lab=Vnout}
N 150 -190 210 -190 {
lab=Vpout}
N -0 -260 -0 -220 {
lab=VDD}
N -170 10 -150 10 {
lab=Vpout}
N -170 -150 -150 -150 {
lab=Vnout}
N -170 -190 -150 -190 {
lab=Vp}
N -170 -30 -150 -30 {
lab=Vn}
N 150 -150 210 -150 {
lab=Vpbuf}
N 150 10 210 10 {
lab=Vnbuf}
C {devices/iopin.sym} -270 -260 0 1 {name=p11 lab=VDD}
C {devices/iopin.sym} -220 340 0 1 {name=p1 lab=VSS}
C {devices/ipin.sym} -170 -190 0 0 {name=p4 lab=Vp}
C {devices/ipin.sym} -170 -30 0 0 {name=p6 lab=Vn}
C {devices/ipin.sym} -170 -170 2 1 {name=p2 lab=Vb}
C {devices/ipin.sym} -100 250 0 0 {name=p5 lab=Vc}
C {devices/opin.sym} 210 -190 0 0 {name=p8 lab=Vpout}
C {devices/opin.sym} 210 -30 0 0 {name=p7 lab=Vnout}
C {devices/opin.sym} 210 -150 0 0 {name=p18 lab=Vpbuf}
C {devices/opin.sym} 210 10 0 0 {name=p19 lab=Vnbuf}
C {devices/lab_pin.sym} -170 -10 2 1 {name=p10 sig_type=std_logic lab=Vb}
C {vco_stage_half.sym} 0 -170 0 0 {name=x1}
C {vco_stage_half.sym} 0 -10 0 0 {name=x2}
C {devices/lab_pin.sym} 0 -120 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 40 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 -60 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 150 -10 0 1 {name=p14 sig_type=std_logic lab=Vds_m5}
C {devices/lab_pin.sym} 150 -170 0 1 {name=p15 sig_type=std_logic lab=Vds_m5}
C {devices/lab_pin.sym} -170 10 2 1 {name=p16 sig_type=std_logic lab=Vpout}
C {devices/lab_pin.sym} -170 -150 2 1 {name=p17 sig_type=std_logic lab=Vnout}
C {sky130_fd_pr/nfet_01v8.sym} -20 250 0 0 {name=M5
L=2
W=4
nf=2
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
C {devices/lab_pin.sym} 80 180 0 1 {name=p9 sig_type=std_logic lab=Vds_m5}
