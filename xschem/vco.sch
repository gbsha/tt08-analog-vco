v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -780 -1030 -720 -1030 {
lab=#net1}
N -720 -1050 -720 -1030 {
lab=#net1}
N -720 -1050 -650 -1050 {
lab=#net1}
N -780 -950 -720 -950 {
lab=#net2}
N -720 -1010 -720 -950 {
lab=#net2}
N -720 -1010 -650 -1010 {
lab=#net2}
N -350 -1030 -290 -1030 {
lab=#net3}
N -290 -1050 -290 -1030 {
lab=#net3}
N -290 -1050 -220 -1050 {
lab=#net3}
N -350 -950 -290 -950 {
lab=#net4}
N -290 -1010 -290 -950 {
lab=#net4}
N -290 -1010 -220 -1010 {
lab=#net4}
N 80 -1030 140 -1030 {
lab=Vpin1}
N 140 -1050 140 -1030 {
lab=Vpin1}
N 140 -1050 210 -1050 {
lab=Vpin1}
N 80 -950 140 -950 {
lab=Vnin1}
N 140 -1010 140 -950 {
lab=Vnin1}
N 140 -1010 210 -1010 {
lab=Vnin1}
N -490 -780 -450 -780 {
lab=Icont}
C {devices/iopin.sym} -360 -620 3 0 {name=p3 lab=VDD}
C {devices/iopin.sym} -360 -500 1 0 {name=p15 lab=VSS}
C {devices/ipin.sym} -440 -560 0 0 {name=p2 lab=Icont}
C {devices/opin.sym} -300 -600 0 0 {name=p18 lab=Vp}
C {devices/opin.sym} -300 -520 0 0 {name=p5 lab=Vn}
C {devices/lab_pin.sym} -1080 -1050 2 1 {name=p8 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} -1080 -1010 2 1 {name=p9 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} -1080 -930 2 1 {name=p10 sig_type=std_logic lab=Vc}
C {devices/lab_wire.sym} -500 -900 2 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -500 -1080 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -650 -970 2 1 {name=p21 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 100 -1030 3 1 {name=p22 sig_type=std_logic lab=Vpin1}
C {devices/lab_pin.sym} 100 -950 3 1 {name=p23 sig_type=std_logic lab=Vnin1}
C {devices/lab_pin.sym} -650 -930 2 1 {name=p24 sig_type=std_logic lab=Vc}
C {devices/lab_wire.sym} -70 -900 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -70 -1080 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -220 -970 2 1 {name=p27 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} -220 -930 2 1 {name=p28 sig_type=std_logic lab=Vc}
C {devices/lab_wire.sym} 360 -900 2 1 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 360 -1080 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 210 -970 2 1 {name=p31 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 210 -930 2 1 {name=p32 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} 510 -950 0 1 {name=p33 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 510 -1030 0 1 {name=p34 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} -150 -800 2 0 {name=p19 sig_type=std_logic lab=Vb}
C {devices/lab_wire.sym} -300 -720 2 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -300 -840 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -490 -780 0 0 {name=p1 sig_type=std_logic lab=Icont}
C {devices/lab_wire.sym} -930 -900 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -150 -760 2 0 {name=p12 sig_type=std_logic lab=Vc}
C {devices/lab_wire.sym} -930 -1080 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -1080 -970 2 1 {name=p7 sig_type=std_logic lab=Vb}
C {vco_stage.sym} -930 -990 0 0 {name=x1}
C {vco_stage.sym} -500 -990 0 0 {name=x2}
C {vco_stage.sym} -70 -990 0 0 {name=x3}
C {vco_stage.sym} 360 -990 0 0 {name=x4}
C {vco_bias.sym} -300 -780 0 0 {name=x5}
