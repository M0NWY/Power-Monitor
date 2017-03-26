#!/bin/sh

rrdtool create servertemps.rrd --step 1m \
DS:sda:GAUGE:180:-50:200 \
DS:sdb:GAUGE:180:-50:200 \
DS:sdc:GAUGE:180:-50:200 \
DS:Core0:GAUGE:180:-50:200 \
DS:Core1:GAUGE:180:-50:200 \
RRA:AVERAGE:0.5:1m:90d \
RRA:AVERAGE:0.5:60m:18M \
RRA:AVERAGE:0.5:1d:10y \
RRA:MIN:0.5:1h:90d \
RRA:MIN:0.5:1d:18M \
RRA:MIN:0.5:7d:10y \
RRA:MAX:0.5:1h:90d \
RRA:MAX:0.5:1d:18M \
RRA:MAX:0.5:7d:10y
