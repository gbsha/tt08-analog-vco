# 

## Development Environment

The docker image `iic-osic-tools` version `2024.07` is used.

## Verification

### LVS

In `./mag`, run `./run-lvs.sh`.

### DRC

In `./mag`, run `./run-drc.sh`.

### PEX

TODO: Currently done manually. In ./mag:
```
magic tt_um_georgboecherer_vco.mag
```
In magic:
```
extract do resistance
extract do capacitance
extract do coupling
extract all
ext2spice subcircuit on
ext2spice hierarchy on
ext2spice lvs
ext2spice cthresh 0.01
ext2spice rthresh 100    
ext2spice
```
* Copy `./mag/tt_um_georgboecherer_vco.spice` to `./xschem/tt_um_georgboecherer_vco.pex.spice`.
* In `./xschem/tt_um_georgboecherer_vco.pex.spice`, change topcell name from `tt_um_georg.boecherer_vco` to `tt_um_georgboecherer_vco.pex`
* Test with `xschem tt_tb.sch`.
