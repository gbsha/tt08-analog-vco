# 

## Development Environment

The docker image `iic-osic-tools` version `2024.07` is used, with a few modifications.

### xschem

`xschem` is compiled and installed to `/foss/designs/local/bin/xschem`, for enabling the newly added option `top_is_subckt`.

### CACE Version

```
export PATH=/headless/.local/bin:$PATH
export PYTHONPATH=/headless/.local/lib/python3.10/site-packages:$PYTHONPATH
pip3 install --upgrade cace==2.4.0
```
### CACE patch
 In 
```
/headless/.local/lib/python3.10/site-packages/cace/common/cace_regenerate.py
```
Modify `xschemargs` in the function `regenerate_schematic_netlist` to
```
xschemargs = [
            '/foss/designs/local/bin/xschem', # xschem
            '-n',
            '-s',
            '-r',
            '-x',
            '-q',
            '--tcl',
            'set top_is_subckt 1', # 'set lvs_netlist 1',
        ]
```
The original values are commented out.

## Verification

### LVS

#### Layout

In magic:
```
extract no capacitance
extract all
ext2spice lvs
ext2spice
```

#### Schematic
```
xschem -n -s -x -q tt_um_georgboecherer_vco.sch -N tt_um_georgboecherer_vco.spice -o ./ --tcl 'set top_is_subckt 1'
```

#### Netgen

Start `netgen`, then:
```
lvs tt_um_georgboecherer_vco.spice ../xschem/tt_um_georgboecherer_vco.spice ""
```
Without the `""`, netgen errs with `Error:  Setup file setup.tcl does not exist.`
