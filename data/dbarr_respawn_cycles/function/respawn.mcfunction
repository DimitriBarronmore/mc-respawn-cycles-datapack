$spreadplayers $(anchor_x) $(anchor_z) 1 $(VAR_RADIUS) false @e[type=player, scores={dbarr.respawncycles.DIED=1..}]
scoreboard players reset @e[type=player] dbarr.respawncycles.DIED