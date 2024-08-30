v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 0 60 0 {
lab=#net1}
N 360 -0 410 0 {
lab=Vout}
N 210 -140 210 -70 {
lab=VDD}
N -210 -140 210 -140 {
lab=VDD}
N -210 -140 -210 -70 {
lab=VDD}
N -210 70 -210 140 {
lab=VSS}
N -210 140 210 140 {
lab=VSS}
N 210 70 210 140 {
lab=VSS}
N -420 0 -360 -0 {
lab=Vin}
N 0 -220 0 -140 {
lab=VDD}
N 0 140 -0 200 {
lab=VSS}
C {devices/iopin.sym} 0 -220 3 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 0 200 1 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -420 0 0 0 {name=p3 lab=Vin}
C {devices/opin.sym} 410 0 0 0 {name=p4 lab=Vout}
C {vco_inverter.sym} -210 0 0 0 {name=x1}
C {vco_inverter.sym} 210 0 0 0 {name=x2}
