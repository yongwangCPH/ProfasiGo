#!/bin/sh
#

bindir=/lindorffgrp-isilon/wyong/software/Phaistos/phaistos_go_model/build/bin

config=Phaistos_ProfasiGo.conf 

$bindir/phaistos --config-file=$config >out.log &
