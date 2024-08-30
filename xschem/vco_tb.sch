v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1130 -860 -330 -460 {flags=graph
y1=-0.11
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.2370591e-05
x2=1.4844492e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color="4 5"
node="vp
vn"}
B 2 -1130 -450 -330 -50 {flags=graph
y1=-0.14
y2=1.96
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.2370591e-05
x2=1.4844492e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="9 7 7 7 7 7 7 7"
node="vp0
vp1
vp2
vp3
vn0
vn1
vn2
vn3"}
T {tcleval(Period: [to_eng [xschem raw value PERIOD 0]]
Vb: [to_eng [xschem raw value vb_avg 0]]V
Vc: [to_eng [xschem raw value vc_avg 0]]V
Vp: [to_eng [xschem raw value vp_avg 0]]V)} -270 -170 0 0 0.4 0.4 {floater=1}
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
lab=#net1}
N -250 -690 -210 -690 {
lab=#net1}
N -250 -810 -250 -770 {
lab=VDD}
N 400 -750 460 -750 {
lab=Vp}
N 400 -710 460 -710 {
lab=Vn}
N 360 -700 360 -660 {
lab=GND}
N 360 -800 360 -760 {
lab=Vout}
C {devices/launcher.sym} -180 -220 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/vco_tb.raw tran"
}
C {devices/vsource.sym} 170 -730 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 170 -660 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 250 -730 0 0 {name=V6 value=1.8 savecurrent=false}
C {devices/lab_wire.sym} 170 -800 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 250 -800 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 10 -490 0 0 {name=NGSPICE 
only_toplevel=false 
value="
.param cl=1p
.param icont=0.04m
.param WLcap=8
.param WLp=8

.ic v(Vp)=1.8 v(Vn)=0.

.control
	save all
	tran 10n 20000n
	let PERIOD=2.1e-6
	meas tran PERIOD TRIG Vp VAL=0.5 RISE=5 TARG Vp VAL=0.5 RISE=6
	meas tran vp_avg AVG vp from=1000n to=9000n

	meas tran vb_avg AVG x1.vb from=1n to=9n
	meas tran vc_avg AVG x1.vc from=1n to=9n
	remzerovec
	write vco_tb.raw
	quit
.endc
"}
C {devices/launcher.sym} -180 -270 0 0 {name=h1
descr=simulate
tclcommand="xschem netlist; xschem simulate"}
C {devices/isource.sym} -250 -740 0 0 {name=I0 value=\{icont\}}
C {devices/lab_wire.sym} -250 -810 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -60 -630 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -60 -750 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 90 -710 0 1 {name=p4 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 90 -670 0 1 {name=p6 sig_type=std_logic lab=Vn}
C {devices/vcvs.sym} 360 -730 0 1 {name=E3 value=1.0}
C {devices/lab_pin.sym} 460 -750 2 0 {name=p11 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 460 -710 2 0 {name=p13 sig_type=std_logic lab=Vn}
C {devices/gnd.sym} 360 -660 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 360 -800 2 0 {name=p7 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} -150 -1030 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt

.temp 27
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
