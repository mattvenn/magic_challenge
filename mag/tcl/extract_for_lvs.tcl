box 0 0 0 0
load $::env(PROJECT_NAME).mag
extract do local
extract all
ext2spice lvs
ext2spice cthresh infinite
ext2spice short resistor
ext2spice -d -o $::env(PROJECT_NAME).lvs.spice
quit -noprompt
