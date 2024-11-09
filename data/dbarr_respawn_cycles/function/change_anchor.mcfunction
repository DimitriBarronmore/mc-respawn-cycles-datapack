# set a flag so this only runs every so often
scoreboard players set FLAG_CHANGE_ANCHOR dbarr.respawncycles.VARS 1

# calculate offset x
$execute store result score VAR_TEMP_1 dbarr.respawncycles.VARS run random value 0..$(VAR_COLS)
$scoreboard players set VAR_TEMP_2 dbarr.respawncycles.VARS $(VAR_COLS)
scoreboard players operation VAR_TEMP_2 dbarr.respawncycles.VARS /= CONST_2 dbarr.respawncycles.VARS
scoreboard players operation VAR_TEMP_1 dbarr.respawncycles.VARS -= VAR_TEMP_2 dbarr.respawncycles.VARS
scoreboard players operation VAR_TEMP_1 dbarr.respawncycles.VARS *= VAR_SPREAD dbarr.respawncycles.VARS
execute store result storage dbarr.respawn_cycles:variables anchor_x int 1 run scoreboard players get VAR_TEMP_1 dbarr.respawncycles.VARS

# calculate offset z
$execute store result score VAR_TEMP_1 dbarr.respawncycles.VARS run random value 0..$(VAR_ROWS)
$scoreboard players set VAR_TEMP_2 dbarr.respawncycles.VARS $(VAR_ROWS)
scoreboard players operation VAR_TEMP_2 dbarr.respawncycles.VARS /= CONST_2 dbarr.respawncycles.VARS
scoreboard players operation VAR_TEMP_1 dbarr.respawncycles.VARS -= VAR_TEMP_2 dbarr.respawncycles.VARS
scoreboard players operation VAR_TEMP_1 dbarr.respawncycles.VARS *= VAR_SPREAD dbarr.respawncycles.VARS
execute store result storage dbarr.respawn_cycles:variables anchor_z int 1 run scoreboard players get VAR_TEMP_1 dbarr.respawncycles.VARS

scoreboard players reset VAR_TEMP_1 dbarr.respawncycles.VARS
scoreboard players reset VAR_TEMP_2 dbarr.respawncycles.VARS

# clear the flag in 5 minutes
$schedule function dbarr_respawn_cycles:remove_change_anchor_flag $(VAR_CYCLE_SECONDS)s replace