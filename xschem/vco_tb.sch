v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1130 -860 -330 -460 {flags=graph
y1=-0.00049
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.6995862e-06
x2=1.7734355e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color="4 5"
node="x1.x6.vp
x1.x6.vn"}
B 2 -1130 -450 -330 -50 {flags=graph
y1=-0.14
y2=1.96
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.6995862e-06
x2=1.7734355e-05
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
lab=Vc}
N -250 -690 -210 -690 {
lab=Vc}
N -250 -810 -250 -770 {
lab=VDD}
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
.param icont=0.025m
.param WLcap=11
.param WLp=8
.param W=4
.param L=2
.param Lb=0.25

*.ic v(Vp)=1.8 v(Vn)=0.
.option klu
.control
	save all
	tran 10n 40000n
	let PERIOD=2.1e-6
	meas tran PERIOD TRIG x1.x6.vp VAL=0.5 RISE=5 TARG x1.x6.vp VAL=0.5 RISE=6
	meas tran vp_avg AVG x1.x6.vp from=1000n to=9000n

	meas tran vb_avg AVG vb from=1n to=9n
	meas tran vc_avg AVG vc from=1n to=9n
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
C {devices/code_shown.sym} -150 -1030 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice fs

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
C {devices/lab_wire.sym} 90 -690 0 1 {name=p4 sig_type=std_logic lab=Vb}
C {devices/lab_wire.sym} -250 -690 2 1 {name=p6 sig_type=std_logic lab=Vc}
