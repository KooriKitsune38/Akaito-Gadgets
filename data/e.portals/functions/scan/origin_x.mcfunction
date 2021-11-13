scoreboard players remove @s e.scanDx 1
execute if score @s e.scanDx matches ..0 positioned ~-1 ~ ~ run function e.portals:scan/origin_z
execute unless score @s e.scanDx matches ..0 positioned ~-1 ~ ~ run function e.portals:scan/origin_x