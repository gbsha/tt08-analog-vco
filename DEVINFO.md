# Designer Information

* [Environment](#environment)
* [Design](#design)
* [Custom Verification](#custom-verification)
* [CACE](#cace)

## Environment

The docker image [iic-osic-tools](https://github.com/iic-jku/IIC-OSIC-TOOLS) version `2024.07` is used on a personal computer.

## Design

### Schematics

Schematics were drawn using `xschem` and are placed in [`./xschem`](./xschem/). Files with suffix `_tb.sch` contain testbenches that can be run from the `xschem` GUI.

### Layout

Layout was done using `magic`. Cells were drawn in hierarchical order by the following steps:
1. Ensure all existing `OLDCELLNAME.mag` files in [`./mag`](./mag) are under version control and comitted.
2. From `xschem`: generate netlist of `CELLNAME.sch` schematic to be layouted, setting the LVS netlist flag. This generates `CELLNAME.spice` in [`./xschem/sim`](./xschem/sim/).
3. `cd ./mag/`, then start `magic`. From the menu, import spice netlist.
4. Close magic. By `git checkout -- OLDCELLNAME.mag` undo all changes that magic has done to existing `OLDCELLNAME.mag` cells.
5. Add newly created `.mag` files to version control and commit.
6. Open `CELLNAME.mag`. The cell should now contain all ports, previously layouted cells, and newly added transistors.
7. Place and wire up as in the tutorial [Analog layout of an op-amp using the Magic VLSI tool](https://youtu.be/XvBpqKwzrFY?si=_2WCLe-FPyDEbQDl).
8. Add the newly layouted cell to [`./mag/run-lvs.sh`](./mag/run-lvs.sh) and [`./mag/run-drc.sh`](./mag/run-drc.sh).

## Custom Verification

### LVS

In [`./mag`](./mag/), run [`./run-lvs.sh`](./mag/run-lvs.sh). Uses `iic-lvs.sh` from [`osic-multitool`](https://github.com/iic-jku/osic-multitool) included in `iic-osic-tools`.

### DRC

In [`./mag`](./mag/), run [`./run-drc.sh`](./mag/run-drc.sh). Uses `iic-drc.sh` from [`osic-multitool`](https://github.com/iic-jku/osic-multitool) included in `iic-osic-tools`.

### PEX

#### 1. Update `iic-pex.sh`

* Download [this](https://github.com/iic-jku/osic-multitool/blob/2cc13d0c2fab4cbf1a0362a31064ef3f2cddf9b5/iic-pex.sh) version of `iic-pex.sh` from [`osic-multitool`](https://github.com/iic-jku/osic-multitool) and store it as `iic-pex-2cc13d0.sh` in a folder in your `PATH` and make it executable, i.e.,
    ```
    cd folder/in/your/PATH
    chmod +x iic-pex-2cc13d0.sh
    ```
*Remarks:*
* The suffix `2cc13d0` refers to the corrsponding github commit.
* (only if you use `iic-osic-tools`) I have a permant folder `/foss/designs/bin`, which I add to `PATH` by appending to `/headless/.bashrc` the line
    ```
    export PATH=$PATH:/foss/designs/bin
    ```

#### 2. Generate Netlists

Done with [mag/run-pex.sh](./mag/run-pex.sh). Running
```
cd mag
./run-pex.sh
```
will generate the netlists
```
mag/pex_C-decoupled/vco.pex.spice
mag/pex_C-coupled/vco.pex.spice
mag/pex_full-RC/vco.pex.spice
```
These netlists will be used for postlayout simulation.

As reference, you also need to generate the schematic netlist. Open the schematic in xschem:
```
cd ./xschem
xschem vco.sch
```
In the menu, activate the flag `Simulation -> LVS -> LVS netlist`. If you have updated your xschem to commit `f850877` or later, activate the flag `Simulation -> LVS -> Top level is a .subckt` instead. Then click the menu button `Netlist`. This will generate the netlist
```
xschem/sim/vco.spice
```
which will be used for schematic simulation.

#### 3. Run Simulation
Done with [xschem-pex/run-campaign.sh](./xschem-pex/run-campaign.sh). Execute
```
cd xschem-pex
./run-campaign.sh
```
**Attention**: This simulates a lot (currently 1200) configurations, sweeping pex modes, corners, temperature, and bias current values. You may want to edit `run-campaign.sh` to first use shorter value ranges.

The results are stored in `xschem-pex/results`.

#### 4. Visualize Results

Done with [xschem-pex/aggregate-results.py](./xschem-pex/aggregate_results.py) and [xschem-pex/plot_results.py](./xschem-pex/plot_results.py) (thanks ChatGPT for the assistance :) Run
```
cd xschem-pex
python aggregate-results.py
python plot_results.py
```
This generates [./xschem-pex/vco_characterization.csv](./xschem-pex/vco_characterization.csv) and [./xschem-pex/vco_characterization.svg](./xschem-pex/vco_characterization.svg).

#### 5. Issues

Currently, the toplevel subcircuits `vco` in the netlists
```
xschem/sim/vco.spice
mag/pex_C-decoupled/vco.pex.spice
mag/pex_C-coupled/vco.pex.spice
mag/pex_full-RC/vco.pex.spice
```
have different pin orders for different pex modes, i.e., `C-decoupled` and `C-coupled` netlists are different from the schematic netlist `xschem/sim/vco.spice`, and `full-RC` is different both from `C-decoupled` and `C-coupled` netlists and the schematic netlist. This is currently fixed in [`xschem-pex/run-sim.sh`](./xschem-pex/run-sim.sh) by searching for the different pin orders and substituting them by the schematic pin order.


## CACE

### Update CACE

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

3. Ensure the updated `xschem` is used by adding
    ```bash
    export PATH=/foss/designs/local/bin:$PATH
    ```
    to `~/.bashrc`. Note that the newly added path is *prepended*, not appended to PATH. This way, the newly added path is checked first, so in our case, the updated xschem is found first and used. Check whether `which xschem` returns the newly added path.

### Run CACE

CACE is configured in [`./cace/tt08-analog-vco.yaml`](./cace/tt08-analog-vco.yaml).

Run [`run-cace.sh`](./run-cace.sh). Currently, this will do LVS, DRC, area check, and run simulation for the netlist sources `schematic` and `layout`. Not supported yet for simulation are `pex` and `rcx`.
