#! /bin/bash

rrdtool graph /var/www/shedometry/graphs/temp4h.png \
--start end-10h --width 700 --end now --slope-mode \
--no-legend --vertical-label "Degrees C" \
--alt-autoscale-max \
DEF:Power=servertemps.rrd:sdb:AVERAGE \
LINE3:Power#0000FF:"Average"
