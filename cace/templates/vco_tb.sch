v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -700 170 -680 {
lab=GND}
N 170 -800 170 -760 {
lab=VSS}
N 250 -700 250 -680 {
lab=GND}
N 170 -680 170 -660 {
lab=GND}
N 250 -800 250 -760 {
lab=VDD}
N 170 -680 250 -680 {
lab=GND}
N -250 -710 -250 -690 {
lab=Vc}
N -250 -690 -210 -690 {
lab=Vc}
N -250 -810 -250 -770 {
lab=#net1}
N -250 -920 -250 -870 {
lab=VDD}
C {devices/vsource.sym} 170 -730 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 170 -660 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 250 -730 0 0 {name=V6 value=1.8 savecurrent=false}
C {devices/lab_wire.sym} 170 -800 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 250 -800 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 20 -490 0 0 {name=CONTROL 
only_toplevel=false 
value="
.control
	save all
	tran 10n 40000n
	
	let period=2e6
	meas tran period TRIG vp0 VAL=0.9 RISE=5 TARG vp0 VAL=0.9 RISE=6
	meas tran vb_avg AVG vb from=1n to=9n
	meas tran vc_avg AVG vc from=1n to=9n
	meas tran icont_avg AVG i(vmeas) from=1n to=9n

	let frequency = 1 / period
	echo $&icont_avg $&frequency $&vc_avg $&vb_avg > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/isource.sym} -250 -740 0 0 {name=I0 value=CACE\{icont\}}
C {devices/lab_wire.sym} -250 -920 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -60 -630 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -60 -750 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -150 -1030 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/combined/sky130.lib.spice CACE\{corner\}

.include CACE\{DUT_path\}

.temp CACE\{temperature\}

*.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

* Flag unsafe operating conditions (exceeds models' specified limits)
.option warn=1

.option klu

.option num_threads=2
"}
C {vco.sym} -60 -690 0 0 {name=x1}
C {devices/lab_wire.sym} -30 -630 3 0 {name=p8 sig_type=std_logic lab=Vp0}
C {devices/lab_wire.sym} -10 -630 3 0 {name=p9 sig_type=std_logic lab=Vp1}
C {devices/lab_wire.sym} 10 -630 3 0 {name=p10 sig_type=std_logic lab=Vp2}
C {devices/lab_wire.sym} 30 -630 3 0 {name=p12 sig_type=std_logic lab=Vp3}
C {devices/lab_wire.sym} -150 -630 3 0 {name=p14 sig_type=std_logic lab=Vn0}
C {devices/lab_wire.sym} -130 -630 3 0 {name=p16 sig_type=std_logic lab=Vn1}
C {devices/lab_wire.sym} -110 -630 3 0 {name=p17 sig_type=std_logic lab=Vn2}
C {devices/lab_wire.sym} -90 -630 3 0 {name=p18 sig_type=std_logic lab=Vn3}
C {devices/lab_wire.sym} 90 -690 0 1 {name=p4 sig_type=std_logic lab=Vb}
C {devices/lab_wire.sym} -250 -690 2 1 {name=p6 sig_type=std_logic lab=Vc}
C {devices/ammeter.sym} -250 -840 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
