#!/bin/bash

rm -rf ./netlist/*
rm -rf ./docs/vco*
cace -s schematic -p frequency -j 2
cace -s layout -p netgen_lvs magic_drc klayout_drc_feol klayout_drc_beol klayout_drc_full magic_area frequency -j 2
cace -s pex -p netgen_lvs magic_drc klayout_drc_feol klayout_drc_beol klayout_drc_full magic_area -j 2
cace -s rcx -p netgen_lvs magic_drc klayout_drc_feol klayout_drc_beol klayout_drc_full magic_area -j 2

