load $::env(PROJECT_NAME).mag
select top cell
drc euclidean on
drc style drc(full)
drc check
set drcresult [drc listall why]
quit -noprompt
