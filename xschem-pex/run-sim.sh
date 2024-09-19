#!/bin/bash


if [ -z "$1" ]; then
    echo "Please specify one of the following: schematic, C-decoupled, C-coupled, full-RC."
    exit 0
fi


# Prepare device netlist vco.spice

valid_args=("schematic" "C-decoupled" "C-coupled" "full-RC")
if [[ ! " ${valid_args[@]} " =~ " $1 " ]]; then
    echo "Error: Invalid argument '$1'. Please specify one of the following: C-decoupled, C-coupled, full-RC."
    exit 1
fi

if [ "$1" == "schematic" ]; then
	src_netlist="../xschem/sim/vco.spice"
else
	src_netlist="../mag/pex_$1/vco.pex.spice"
fi
	
dst_netlist="./vco.spice"
pex_signature1=".subckt vco Vn2 Vn0 Vn3 Vp1 Vp0 Icont Vp2 Vp3 Vb Vn1 VDD VSS"
pex_signature2=".subckt vco Vn2 Vn0 Vn3 Vp1 Vp0 Icont Vp2 Vp3 Vb Vn1 VSS VDD"
sch_signature=".subckt vco VDD VSS Icont Vp0 Vp1 Vp2 Vp3 Vn0 Vn1 Vn2 Vn3 Vb"

cp "$src_netlist" "$dst_netlist"


if grep -q "$pex_signature1" "$dst_netlist"; then
	sed -i "s/$pex_signature1/$sch_signature/g" "$dst_netlist"
	echo "$1 signature mismatch type 1, fixed."
elif grep -q "$pex_signature2" "$dst_netlist"; then
	sed -i "s/$pex_signature2/$sch_signature/g" "$dst_netlist"
	echo "$1 signature mismatch type 2, fixed."
else
	echo "$1 signature matches."
fi

occurences=$(grep -o "$sch_signature" "$dst_netlist" | wc -l)

if [ "$occurences" -ne 1 ]; then
	echo "Error: topcell signature occurs $occurences times."
	exit 1
fi

# prepare testbench netlist _vco_tb.spice

valid_corners=("tt" "ss" "sf" "fs" "ff")
if [[ ! " ${valid_corners[@]} " =~ " $2 " ]]; then
    echo "Error: Invalid argument '$2'. Please specify one of the following: tt, ss, sf, fs, ff"
    exit 1
fi

result_file="./results/vco_tb__$1__$2__$3__$4__.data"

if [ -e "$result_file" ]; then
    echo "$result_file exists, skipping..."
else
    echo "$result_file not found, simulating..."
    
    cp vco_tb.spice _vco_tb.spice
    sed -i "s/__CORNER__/$2/g" _vco_tb.spice
    sed -i "s/__TEMPERATURE__/$3/g" _vco_tb.spice
    sed -i "s/__ICONT__/$4/g" _vco_tb.spice

    ngspice -b _vco_tb.spice
    mv vco_tb.data $result_file
fi

