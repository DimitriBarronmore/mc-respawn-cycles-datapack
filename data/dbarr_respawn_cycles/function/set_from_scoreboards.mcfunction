$execute store result storage dbarr.respawn_cycles:variables $(name) int 1 run scoreboard players get $(name) dbarr.respawncycles.VARS
$scoreboard players operation $(name)_SAVED dbarr.respawncycles.VARS = $(name) dbarr.respawncycles.VARS