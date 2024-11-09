tellraw @a {"text":"Setting Respawn Cycles variables to initial values.\nThank you for using Respawn Cycles.","color":"green"}
scoreboard objectives add dbarr.respawncycles.VARS dummy
scoreboard players set VAR_ROWS dbarr.respawncycles.VARS 5
scoreboard players set VAR_COLS dbarr.respawncycles.VARS 5
scoreboard players set VAR_SPREAD dbarr.respawncycles.VARS 2000
scoreboard players set VAR_RADIUS dbarr.respawncycles.VARS 1500
scoreboard players set VAR_CYCLE_SECONDS dbarr.respawncycles.VARS 300
scoreboard players set CONST_2 dbarr.respawncycles.VARS 2
scoreboard players set RESPAWNCYCLES_FIRST_LOAD dbarr.respawncycles.VARS 1

scoreboard objectives add dbarr.respawncycles.DIED deathCount