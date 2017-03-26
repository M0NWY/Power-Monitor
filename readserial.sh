#!/usr/bin/perl -w

# Reads data from a Current Cost device via serial port.

use strict;
use Device::SerialPort qw( :PARAM :STAT 0.07 );

my $PORT = "/dev/ttyUSB1";

my $ob = Device::SerialPort->new($PORT);
$ob->baudrate(9600);
$ob->write_settings;

open(SERIAL, "+>$PORT");
while (my $line = <SERIAL>) {
    if ($line =~ m!<OEM>(.*?),!) {
        my $watts = ($1 * 0.7);
        #my $temp = $2;
        system("echo $watts > /dev/shm/power");
        system("rrdtool update /home/simon/shedometry/power.rrd N:$watts");
    }
}
