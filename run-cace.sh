#!/bin/bash

rm -rf ./netlist/*
rm -rf ./docs/vco*
cace -s layout -p netgen_lvs magic_drc klayout_drc_feol klayout_drc_beol klayout_drc_full magic_area
cace -s pex -p netgen_lvs magic_drc klayout_drc_feol klayout_drc_beol klayout_drc_full magic_area
cace -s rcx -p netgen_lvs magic_drc klayout_drc_feol klayout_drc_beol klayout_drc_full magic_area
cace -s schematic -p frequency -j 2
cace -s layout -p frequency -j 2
