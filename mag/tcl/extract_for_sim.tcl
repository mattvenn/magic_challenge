load $::env(PROJECT_NAME).mag
flatten tt_um_flat
load tt_um_flat
select top cell
cellname delete $::env(PROJECT_NAME)
cellname rename tt_um_flat $::env(PROJECT_NAME)
extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0
ext2spice extresist on
ext2spice
ext2spice -d -o $::env(PROJECT_NAME).sim.spice
quit -noprompt
