execute if entity @e[type=player, scores={dbarr.respawncycles.DIED=1..}] run function dbarr_respawn_cycles:death_trigger with storage dbarr.respawn_cycles:variables

execute unless score VAR_ROWS dbarr.respawncycles.VARS = VAR_ROWS_SAVED dbarr.respawncycles.VARS run function dbarr_respawn_cycles:set_from_scoreboards {"name":VAR_ROWS}
execute unless score VAR_COLS dbarr.respawncycles.VARS = VAR_COLS_SAVED dbarr.respawncycles.VARS run function dbarr_respawn_cycles:set_from_scoreboards {"name":VAR_COLS}
execute unless score VAR_RADIUS dbarr.respawncycles.VARS = VAR_RADIUS_SAVED dbarr.respawncycles.VARS run function dbarr_respawn_cycles:set_from_scoreboards {"name":VAR_RADIUS}
execute unless score VAR_CYCLE_SECONDS dbarr.respawncycles.VARS = VAR_CYCLE_SECONDS_SAVED dbarr.respawncycles.VARS run function dbarr_respawn_cycles:set_from_scoreboards {"name":VAR_CYCLE_SECONDS}


