#!/bin/bash

iic-lvs.sh -s ../xschem/sim/vco_inverter.spice -l vco_inverter.mag -c vco_inverter -w ./lvs
iic-lvs.sh -s ../xschem/sim/vco_buffer.spice -l vco_buffer.mag -c vco_buffer -w ./lvs
iic-lvs.sh -s ../xschem/sim/vco_stage_half.spice -l vco_stage_half.mag -c vco_stage_half -w ./lvs
iic-lvs.sh -s ../xschem/sim/vco_stage.spice -l vco_stage.mag -c vco_stage -w ./lvs
iic-lvs.sh -s ../xschem/sim/vco_core.spice -l vco_core.mag -c vco_core -w ./lvs

