#!/bin/bash
#script to get values into rrd

export SHELL=/bin/bash

/usr/bin/rrdtool update /home/simon/shedometry/servertemps.rrd N:$(/home/simon/shedometry/servertemps.sh | tr '\r\n' ':' | rev | cut -c 2- | rev )

#Daaamn! rev | cut | rev makes me feel dirty....
