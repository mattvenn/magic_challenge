# Setup

Make sure $PDK_ROOT, $PDK env vars are setup and magicrc symlink is correct:

    ln -s $PDK_ROOT/sky130A/libs.tech/magic/sky130A.magicrc 

# Change Makefiles

* update Makefiles to set your project name
* update all the tcl scripts in ./mag/tcl to the name of your project
* update src/project.v to match your project name

# Initialise the project

Substitute for your name and run:

    make <your project name>.mag

This sets up a .mag file ready to start working. It includes all the pins for Tiny Tapeout and 2 power lines.

# Work on the project

	make magic

# Update the GDS and LEF

    make update_gds

# Run LVS

Requires a

    make lvs
