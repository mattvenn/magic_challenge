load tt_um_magic_challenge.mag
select top cell
drc euclidean on
drc style drc(full)
drc check
set drcresult [drc listall why]
quit -noprompt
