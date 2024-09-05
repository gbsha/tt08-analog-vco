#!/bin/bash

iic-drc.sh -b -w ./drc vco_inverter 
iic-drc.sh -b -w ./drc vco_buffer
iic-drc.sh -b -w ./drc vco_stage_half
iic-drc.sh -b -w ./drc vco_stage
iic-drc.sh -b -w ./drc vco_core
iic-drc.sh -b -w ./drc vco_bias
iic-drc.sh -b -w ./drc vco

