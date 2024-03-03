load tt_um_magic_challenge.mag
flatten tt_um_flat
load tt_um_flat
select top cell
cellname delete tt_um_magic_challenge
cellname rename tt_um_flat tt_um_magic_challenge
extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0
ext2spice extresist on
ext2spice
ext2spice -d -o tt_um_magic_challenge.sim.spice
quit -noprompt
