scoreboard players remove @s e.scanDx 1

# Particle
particle warped_spore ~ ~ ~ 0 0 0 1 1 normal

# Place
execute if entity @s[tag=e.replacing] run function e.portals:scan/replace_locs

# Scans
execute if entity @s[tag=e.scanning] run function e.portals:scan/scan_locs

# Repeat
execute unless score @s e.scanDx matches ..0 positioned ~1 ~ ~ run function e.portals:scan/trav_x