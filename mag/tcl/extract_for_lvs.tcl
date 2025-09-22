# Load the cell
set project [lindex $argv $argc-1]
box 0 0 0 0
load $project.mag
extract do local
extract unique notopports
extract all

# Convert to spice
ext2spice lvs
ext2spice cthresh infinite
ext2spice short resistor
ext2spice -d -o $project.lvs.spice

# Save any warnings
feedback save $project.fb.txt

# Done
quit -noprompt
