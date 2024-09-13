# Development Informations

## Environment

The docker image [iic-osic-tools](https://github.com/iic-jku/IIC-OSIC-TOOLS) version `2024.07` was used on a local computer.

### CACE

1. Install CACE version `2.4.14` by calling `update-cace 2.4.14` where `update-cace` is the following script:
    ```bash
    #!/bin/bash

    export PATH=/headless/.local/bin:$PATH
    export PYTHONPATH=/headless/.local/lib/python3.10/site-packages:$PYTHONPATH

    if [ -z "$1" ]; then
            pip3 install --upgrade cace
    else
            pip3 install --upgrade "cace==$1"
    fi
    ```
2. Update `xschem` to commit `652268c4` and install it to `/foss/designs/local/bin/xschem` 

    *TODO: Howto install xschem*

3. Patch CACE by changing the path from `xschem` to `/foss/designs/local/bin/xschem` in 
    ```
    /headless/.local/lib/python3.10/site-packages/cace/common/cace_regenerate.py
    ```
    The relevant section is this:
    ```python
    xschemargs = [
                '/foss/designs/local/bin/xschem', # xschem
                '-n',
                '-s',
                '-r',
                '-x',
                '-q',
                '--tcl',
                'set top_is_subckt 1',
            ]
    ```


## Schematics

Schematics were drawn using `xschem` and are placed in [`./xschem`](./xschem/). Files with suffix `_tb.sch` contain testbenches that can be run from the `xschem` GUI.

## Layout

Layout was done using `magic`. Cells were drawn in hierarchical order by the following steps:
1. Ensure all existing `OLDCELLNAME.mag` files in [`./mag`](./mag) are under version control and comitted.
2. From `xschem`: generate netlist of `CELLNAME.sch` schematic to be layouted, setting the LVS netlist flag. This generates `CELLNAME.spice` in [`./xschem/sim`](./xschem/sim/).
3. `cd ./mag/`, then start `magic`. From the menu, import spice netlist.
4. Close magic. By `git checkout -- OLDCELLNAME.mag` undo all changes that magic has done to existing `OLDCELLNAME.mag` cells.
5. Add newly created `.mag` files to version control and commit.
6. Open `CELLNAME.mag`. The cell should now contain all ports, previously layouted cells, and newly added transistors.
7. Place and wire up as in the tutorial [Analog layout of an op-amp using the Magic VLSI tool](https://youtu.be/XvBpqKwzrFY?si=_2WCLe-FPyDEbQDl).
8. Add the newly layouted cell to [`./mag/run-lvs.sh`](./mag/run-lvs.sh) and [`./mag/run-drc.sh`](./mag/run-drc.sh).

## Verification

### LVS

In [`./mag`](./mag/), run [`./run-lvs.sh`](./mag/run-lvs.sh). Uses `iic-lvs.sh` from `iic-osic-tools`.

### DRC

In [`./mag`](./mag/), run [`./run-drc.sh`](./mag/run-drc.sh). Uses `iic-drc.sh` from `iic-osic-tools`.

### PEX

TODO: Currently done manually. In [`./mag`](./mag):
```
magic tt_um_georgboecherer_vco.mag
```
In the magic tcl window:
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

### TODOs

* Use `iic-pex.sh` from `iic-osic-tools`.
* In [tt_um_georgboecherer_vco.pex.sym](./xschem/tt_um_georgboecherer_vco.pex.sym), replace absolute path `spice_sym_def=".include /foss/designs/git/gbsha/tt08-analog-vco/xschem/tt_um_georgboecherer_vco.pex.spice"
` with relative path.
* Use [CACE](https://github.com/efabless/cace) for circuit characterization.
