# Setup

Make sure the $PDK_ROOT & $PDK environment variables are setup.

# Update files for your project name

* update Makefiles to set your project name at the top of the file
* update src/project.v to match your project name

# Initialise the project

Substitute `<your project name>` for your name and run:

    make <your project name>.mag

This sets up a .mag file ready to start working. It includes all the pins for Tiny Tapeout and 2 power lines.

# Work on the project

	make magic

# Update the GDS and LEF

    make update_gds

# Run LVS

    make lvs

# Run DRC

    make drc
