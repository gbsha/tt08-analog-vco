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
N -720 -1140 -720 -1050 {
lab=#net1}
N -720 -1480 -720 -1440 {
lab=Vp0}
N -290 -1480 -290 -1440 {
lab=Vp1}
N 140 -1480 140 -1440 {
lab=Vp2}
N 510 -1030 550 -1030 {
lab=Vn}
N 510 -950 550 -950 {
lab=Vp}
N 530 -1480 530 -1440 {
lab=Vp3}
N 530 -1140 530 -1030 {
lab=Vn}
N 140 -1140 140 -1050 {
lab=Vpin1}
N -720 -950 -720 -860 {
lab=#net2}
N -720 -560 -720 -520 {
lab=Vn0}
N -290 -1140 -290 -1050 {
lab=#net3}
N -290 -950 -290 -860 {
lab=#net4}
N -290 -560 -290 -520 {
lab=Vn1}
N 140 -950 140 -860 {
lab=Vnin1}
N 140 -560 140 -520 {
lab=Vn2}
N 530 -950 530 -860 {
lab=Vp}
N 530 -560 530 -520 {
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
C {vco_buffer.sym} -720 -1290 3 0 {name=x6}
C {devices/lab_wire.sym} -790 -1290 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -650 -1290 0 1 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -720 -1480 0 0 {name=p35 sig_type=std_logic lab=Vp0}
C {vco_buffer.sym} -290 -1290 3 0 {name=x7}
C {devices/lab_wire.sym} -360 -1290 0 0 {name=p36 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -220 -1290 0 1 {name=p37 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -290 -1480 0 0 {name=p38 sig_type=std_logic lab=Vp1}
C {vco_buffer.sym} 140 -1290 3 0 {name=x8}
C {devices/lab_wire.sym} 70 -1290 0 0 {name=p39 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 210 -1290 0 1 {name=p40 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 140 -1480 0 0 {name=p41 sig_type=std_logic lab=Vp2}
C {vco_buffer.sym} 530 -1290 3 0 {name=x9}
C {devices/lab_wire.sym} 460 -1290 0 0 {name=p42 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 600 -1290 0 1 {name=p43 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 530 -1480 0 0 {name=p44 sig_type=std_logic lab=Vp3}
C {devices/lab_pin.sym} -1080 -1050 2 1 {name=p8 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} -1080 -1010 2 1 {name=p9 sig_type=std_logic lab=Vn}
C {devices/lab_pin.sym} -1080 -930 2 1 {name=p10 sig_type=std_logic lab=Vc}
C {devices/lab_wire.sym} -500 -900 2 1 {name=p17 sig_type=std_logic lab=VSS}
C {vco_buffer.sym} -720 -710 1 0 {name=x10}
C {devices/lab_wire.sym} -650 -710 2 0 {name=p49 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -790 -710 2 1 {name=p50 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -720 -520 2 0 {name=p51 sig_type=std_logic lab=Vn0}
C {vco_buffer.sym} -290 -710 1 0 {name=x11}
C {devices/lab_wire.sym} -220 -710 2 0 {name=p52 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -360 -710 2 1 {name=p53 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -290 -520 2 0 {name=p54 sig_type=std_logic lab=Vn1}
C {vco_buffer.sym} 140 -710 1 0 {name=x12}
C {devices/lab_wire.sym} 210 -710 2 0 {name=p55 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 70 -710 2 1 {name=p56 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 140 -520 2 0 {name=p57 sig_type=std_logic lab=Vn2}
C {vco_buffer.sym} 530 -710 1 0 {name=x13}
C {devices/lab_wire.sym} 600 -710 2 0 {name=p58 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 460 -710 2 1 {name=p59 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 530 -520 2 0 {name=p60 sig_type=std_logic lab=Vn3}
C {devices/lab_wire.sym} -500 -1080 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -650 -970 2 1 {name=p21 sig_type=std_logic lab=Vb}
C {devices/lab_pin.sym} 100 -1030 3 1 {name=p22 sig_type=std_logic lab=Vpin1}
C {devices/lab_pin.sym} 100 -950 3 1 {name=p23 sig_type=std_logic lab=Vnin1}
