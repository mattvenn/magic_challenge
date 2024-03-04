# Export
load $::env(PROJECT_NAME).mag
gds write ../gds/$::env(PROJECT_NAME).gds
lef write ../lef/$::env(PROJECT_NAME).lef -pinonly
quit -noprompt
