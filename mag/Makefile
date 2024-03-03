PROJECT_NAME := tt_um_magic_challenge
.PHONY: lvs magic

magic:
	magic -rcfile sky130A.magicrc $(PROJECT_NAME).mag

tt_block_1x2_pg_ana.def:
	# https://github.com/TinyTapeout/tt-support-tools/blob/tt06/def/analog/tt_block_1x2_pg_ana.def
	wget https://raw.githubusercontent.com/TinyTapeout/tt-support-tools/tt06/def/analog/tt_block_1x2_pg_ana.def

$(PROJECT_NAME).mag: tt_block_1x2_pg_ana.def
	magic -rcfile sky130A.magicrc -noconsole -dnull tcl/tt-analog-draw.tcl

$(PROJECT_NAME).lvs.spice: $(PROJECT_NAME).mag
	magic -noconsole -dnull tcl/extract_forlvs.tcl
	rm -f *.ext

drc:
	magic -noconsole -dnull tcl/drc.tcl
	
extract_sim:
	magic -noconsole -dnull tcl/extract_forsim.tcl
	rm -f *.ext

extractr2r_sim:
	magic -noconsole -dnull tcl/extract_r2r_forsim.tcl
	rm -f *.ext

lvs.report: $(PROJECT_NAME).lvs.spice ../src/project.v
	netgen -batch source tcl/lvs_netgen.tcl

lvs: lvs.report
	@propOk=1; match=0; \
    if grep -q "match uniquely" lvs.report; then \
        match=1; \
    fi; \
    if grep -q "Property errors were found" lvs.report || grep -q "failed pin matching" lvs.report; then \
        propOk=0; \
    fi; \
    if grep -q "Final result: Netlists do not match" lvs.report; then \
        match=0; \
    fi; \
    if grep -q "Final result: Circuits match uniquely" lvs.report; then \
        match=1; \
    fi; \
	if [ $$match -eq 1 ] && [ $$propOk -eq 1 ]; then \
        echo "LVS OK"; \
    else \
        echo "LVS FAIL: match $$match properties $$propOk"; \
    fi

update_gds:
	mkdir -p ../gds ../lef
	magic -noconsole -dnull tcl/update_gds_lef.tcl

clean:
	rm -f lvs.report $(PROJECT_NAME).lvs.spice
