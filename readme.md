# Respawn Cycles

This datapack makes it so that whenever a player respawns, they'll appear somewhere around one of several consistent points of interest set around the world. The goal is to make death more interesting by spawning the player in consistent areas spread long distances apart, meaning that the player may find old bases from previous lives. Players who want a consistently locatable base must follow a compass to the world spawn, or follow a lodestone compass they've created.

It's recommended to use this datapack with the keepInventory gamerule enabled or a gravestone and death compass mod/datapack installed in order to allow players to have a chance to keep their items after death. In addition, the Distant Horizons mod can be used in combination with beacons to consistently locate an area from roughly 1500-2000 blocks away.

The anchor points players can spawn around are laid out along a configurable grid centered on 0,0. By default the grid is 5x5 large, with points spread 2000 blocks apart. When the player dies, a random point on this grid is chosen. For five minutes (configurable) from an initial death this point will remain consistent, allowing players who die at roughly the same time to more consistently respawn nearby each other and players who die repeatedly to remain in the same area for a time. Players are placed at a random location within 1500 blocks (configurable) of the currently saved point.

Running the function `dbarr_respawn_cycles:configure` allows you to configure:
- The number of X-Axis Columns in the grid.
- The number of Y-Axis Rows in the grid.
- The distance in blocks between points in the grid.
- The radius in which a player can spawn around a point.
- The length in seconds a point will remain consistent.

Running the function `dbarr_respawn_cycles:reset` will reset these values to their default states.