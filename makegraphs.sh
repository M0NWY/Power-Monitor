#!/bin/bash

# 10 Min graph
rrdtool graph /var/www/currentcost/graphs/power-10min.png \
--start end-10m --width 700 --end now --slope-mode \
--no-legend --vertical-label Watts \
--alt-autoscale-max \
DEF:Power=/home/simon/shedometry/power.rrd:Power:AVERAGE \
LINE1:Power#0000FF:"Average"


# 60 min - 1h
rrdtool graph /var/www/currentcost/graphs/power-60min.png \
--start end-60m --width 700 --end now --slope-mode \
--no-legend --vertical-label Watts \
--alt-autoscale-max \
DEF:Power=/home/simon/shedometry/power.rrd:Power:AVERAGE \
LINE1:Power#0000FF:"Average"

# 6h
rrdtool graph /var/www/currentcost/graphs/power-6hour.png \
--start end-6h --width 700 --end now --slope-mode \
--no-legend --vertical-label Watts \
--alt-autoscale-max \
DEF:Power=/home/simon/shedometry/power.rrd:Power:AVERAGE \
LINE1:Power#0000FF:"Average"


# 1 day
rrdtool graph /var/www/currentcost/graphs/power-day.png \
--start end-1d --width 700 --end now --slope-mode \
--no-legend --vertical-label Watts \
--alt-autoscale-max \
DEF:Power=/home/simon/shedometry/power.rrd:Power:AVERAGE \
DEF:PowerMin=/home/simon/shedometry/power.rrd:Power:MIN \
DEF:PowerMax=/home/simon/shedometry/power.rrd:Power:MAX \
CDEF:PowerRange=PowerMax,PowerMin,- \
LINE1:PowerMin: \
AREA:PowerRange#0000FF11:"Error Range":STACK \
LINE1:PowerMin#0000FF33:"Min" \
LINE1:PowerMax#0000FF33:"Max" \
LINE1:Power#0000FF:"Average"

# 1 week
rrdtool graph /var/www/currentcost/graphs/power-week.png \
--start end-7d --width 700 --end now --slope-mode \
--no-legend --vertical-label Watts \
--alt-autoscale-max \
DEF:Power=/home/simon/shedometry/power.rrd:Power:AVERAGE \
DEF:PowerMin=/home/simon/shedometry/power.rrd:Power:MIN \
DEF:PowerMax=/home/simon/shedometry/power.rrd:Power:MAX \
CDEF:PowerRange=PowerMax,PowerMin,- \
LINE1:PowerMin: \
AREA:PowerRange#0000FF11:"Error Range":STACK \
LINE1:PowerMin#0000FF33:"Min" \
LINE1:PowerMax#0000FF33:"Max" \
LINE1:Power#0000FF:"Average"

# 1 month
rrdtool graph /var/www/currentcost/graphs/power-month.png \
--start end-30d --width 700 --end now --slope-mode \
--no-legend --vertical-label Watts \
--alt-autoscale-max \
DEF:Power=/home/simon/shedometry/power.rrd:Power:AVERAGE \
DEF:PowerMin=/home/simon/shedometry/power.rrd:Power:MIN \
DEF:PowerMax=/home/simon/shedometry/power.rrd:Power:MAX \
CDEF:PowerRange=PowerMax,PowerMin,- \
LINE1:PowerMin: \
AREA:PowerRange#0000FF11:"Error Range":STACK \
LINE1:PowerMin#0000FF33:"Min" \
LINE1:PowerMax#0000FF33:"Max" \
LINE1:Power#0000FF:"Average"

# 1 year
rrdtool graph /var/www/currentcost/graphs/power-year.png \
--start end-1y --width 700 --end now --slope-mode \
--no-legend --vertical-label Watts \
--alt-autoscale-max \
DEF:Power=/home/simon/shedometry/power.rrd:Power:AVERAGE \
DEF:PowerMin=/home/simon/shedometry/power.rrd:Power:MIN \
DEF:PowerMax=/home/simon/shedometry/power.rrd:Power:MAX \
CDEF:PowerRange=PowerMax,PowerMin,- \
LINE1:PowerMin: \
AREA:PowerRange#0000FF11:"Error Range":STACK \
LINE1:PowerMin#0000FF33:"Min" \
LINE1:PowerMax#0000FF33:"Max" \
LINE1:Power#0000FF:"Average"

# 2 year
rrdtool graph /var/www/currentcost/graphs/power-2year.png \
--start end-2y --width 700 --end now --slope-mode \
--no-legend --vertical-label Watts \
--alt-autoscale-max \
DEF:Power=/home/simon/shedometry/power.rrd:Power:AVERAGE \
DEF:PowerMin=/home/simon/shedometry/power.rrd:Power:MIN \
DEF:PowerMax=/home/simon/shedometry/power.rrd:Power:MAX \
CDEF:PowerRange=PowerMax,PowerMin,- \
LINE1:PowerMin: \
AREA:PowerRange#0000FF11:"Error Range":STACK \
LINE1:PowerMin#0000FF33:"Min" \
LINE1:PowerMax#0000FF33:"Max" \
LINE1:Power#0000FF:"Average"

# 10 year
rrdtool graph /var/www/currentcost/graphs/power-10year.png \
--start end-10y --width 700 --end now --slope-mode \
--no-legend --vertical-label Watts \
--alt-autoscale-max \
DEF:Power=/home/simon/shedometry/power.rrd:Power:AVERAGE \
DEF:PowerMin=/home/simon/shedometry/power.rrd:Power:MIN \
DEF:PowerMax=/home/simon/shedometry/power.rrd:Power:MAX \
CDEF:PowerRange=PowerMax,PowerMin,- \
LINE1:PowerMin: \
AREA:PowerRange#0000FF11:"Error Range":STACK \
LINE1:PowerMin#0000FF33:"Min" \
LINE1:PowerMax#0000FF33:"Max" \
LINE1:Power#0000FF:"Average"

