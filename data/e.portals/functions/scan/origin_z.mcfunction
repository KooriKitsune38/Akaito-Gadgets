scoreboard players remove @s e.scanDz 1
execute if score @s e.scanDz matches ..0 positioned ~ ~ ~-1 run function e.portals:scan/origin_ze
execute unless score @s e.scanDz matches ..0 positioned ~ ~ ~-1 run function e.portals:scan/origin_z
