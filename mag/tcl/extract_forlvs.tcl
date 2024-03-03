box 0 0 0 0
load tt_um_magic_challenge.mag
extract do local
extract all
ext2spice lvs
ext2spice cthresh infinite
ext2spice short resistor
ext2spice -d -o tt_um_magic_challenge.lvs.spice
quit -noprompt
