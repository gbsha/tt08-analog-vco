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
N 820 -1130 860 -1130 {
lab=Icont}
N -780 -1090 -780 -1050 {
lab=Vp0}
N -350 -1090 -350 -1050 {
lab=Vp1}
N 80 -1090 80 -1050 {
lab=Vp2}
N 510 -1030 550 -1030 {
lab=Vn}
N 510 -950 550 -950 {
lab=Vp}
N 510 -1090 510 -1050 {
lab=Vp3}
N -780 -930 -780 -890 {
lab=Vn0}
N -350 -930 -350 -890 {
lab=Vn1}
N 80 -930 80 -890 {
lab=Vn2}
N 510 -930 510 -890 {
lab=Vn3}
C {devices/iopin.sym} 950 -970 3 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 950 -850 1 0 {name=p15 lab=VSS}
C {devices/ipin.sym} 870 -910 0 0 {name=p2 lab=Icont}
C {devices/opin.sym} 1010 -950 0 0 {name=p18 lab=Vp}
C {devices/opin.sym} 1010 -870 0 0 {name=p5 lab=Vn}
C {devices/opin.sym} 1110 -950 0 0 {name=p45 lab=Vp0}
C {devices/opin.sym} 1110 -920 0 0 {name=p46 lab=Vp1}
C {devices/opin.sym} 1110 -890 0 0 {name=p47 lab=Vp2}
C {devices/opin.sym} 1110 -860 0 0 {name=p48 lab=Vp3}
C {devices/opin.sym} 1110 -810 0 0 {name=p61 lab=Vn0}
C {devices/opin.sym} 1110 -780 0 0 {name=p62 lab=Vn1}
C {devices/opin.sym} 1110 -750 0 0 {name=p63 lab=Vn2}
C {devices/opin.sym} 1110 -720 0 0 {name=p64 lab=Vn3}
C {devices/lab_pin.sym} -650 -930 2 1 {name=p24 sig_type=std_logic lab=Vc}
C {devices/lab_wire.sym} -70 -900 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -70 -1080 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -220 -970 2 1 {name=p27 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} -220 -930 2 1 {name=p28 sig_type=std_logic lab=Vc}
C {devices/lab_wire.sym} 360 -900 2 1 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 360 -1080 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 210 -970 2 1 {name=p31 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 210 -930 2 1 {name=p32 sig_type=std_logic lab=Vc}
C {devices/lab_pin.sym} 550 -950 0 1 {name=p33 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 550 -1030 0 1 {name=p34 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} 1160 -1150 2 0 {name=p19 sig_type=std_logic lab=Vb}
C {devices/lab_wire.sym} 1010 -1070 2 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1010 -1190 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 820 -1130 0 0 {name=p1 sig_type=std_logic lab=Icont}
C {devices/lab_wire.sym} -930 -900 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1160 -1110 2 0 {name=p12 sig_type=std_logic lab=Vc}
C {devices/lab_wire.sym} -930 -1080 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -1080 -970 2 1 {name=p7 sig_type=std_logic lab=Vb}
C {vco_stage.sym} -930 -990 0 0 {name=x1}
C {vco_stage.sym} -500 -990 0 0 {name=x2}
C {vco_stage.sym} -70 -990 0 0 {name=x3}
C {vco_stage.sym} 360 -990 0 0 {name=x4}
C {vco_bias.sym} 1010 -1130 0 0 {name=x5}
C {devices/lab_wire.sym} -780 -1090 0 0 {name=p35 sig_type=std_logic lab=Vp0}
C {devices/lab_wire.sym} -350 -1090 0 0 {name=p38 sig_type=std_logic lab=Vp1}
C {devices/lab_wire.sym} 80 -1090 0 0 {name=p41 sig_type=std_logic lab=Vp2}
C {devices/lab_wire.sym} 510 -1090 0 0 {name=p44 sig_type=std_logic lab=Vp3}
C {devices/lab_pin.sym} -1080 -1050 2 1 {name=p8 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} -1080 -1010 2 1 {name=p9 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} -1080 -930 2 1 {name=p10 sig_type=std_logic lab=Vc}
C {devices/lab_wire.sym} -500 -900 2 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -780 -890 2 0 {name=p51 sig_type=std_logic lab=Vn0}
C {devices/lab_wire.sym} -350 -890 2 0 {name=p54 sig_type=std_logic lab=Vn1}
C {devices/lab_wire.sym} 80 -890 2 0 {name=p57 sig_type=std_logic lab=Vn2}
C {devices/lab_wire.sym} 510 -890 2 0 {name=p60 sig_type=std_logic lab=Vn3}
C {devices/lab_wire.sym} -500 -1080 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -650 -970 2 1 {name=p21 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 100 -1030 3 1 {name=p22 sig_type=std_logic lab=Vpin1}
C {devices/lab_pin.sym} 100 -950 3 1 {name=p23 sig_type=std_logic lab=Vnin1}
