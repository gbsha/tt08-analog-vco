#!/bin/bash


modes=("schematic" "C-decoupled" "C-coupled" "full-RC")
# corners=("tt")
corners=("tt" "ss" "sf" "fs" "ff")
temperatures=("-25" "0" "27" "50" "75" "100")
# temperatures=("27")
iconts=("0.025e-3" "0.05e-3" "0.075e-3" "0.1e-3" "0.125e-3" "0.15e-3" "0.175e-3" "0.2e-3" "0.225e-3" "0.25e-3")

for mode in "${modes[@]}"; do
	echo "Running $1 simulation..."
	for corner in "${corners[@]}"; do
		for temp in "${temperatures[@]}"; do
			for icont in "${iconts[@]}"; do
				./run-sim.sh "$mode" "$corner" "$temp" "$icont"
			done
		done
	done
done
