#!/bin/bash

iic-pex-2cc13d0.sh -m 1 -s 1 -w ./pex_C-decoupled/ -d -n vco vco.mag
iic-pex-2cc13d0.sh -m 2 -s 1 -w ./pex_C-coupled/ -d -n vco vco.mag
iic-pex-2cc13d0.sh -m 3 -s 1 -w ./pex_full-RC/ -d -n vco vco.mag

