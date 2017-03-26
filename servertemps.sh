#!/bin/bash


/usr/sbin/hddtemp -n /dev/sda /dev/sdb /dev/sdc
/usr/bin/sensors | grep -o [[:space:]][[:space:]]+[[:digit:]][[:digit:]] | grep -o [[:digit:]][[:digit:]]
