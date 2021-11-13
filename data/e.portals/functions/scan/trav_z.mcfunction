#> e.portals:scan/trav_z

scoreboard players remove @s e.scanDz 1
scoreboard players operation @s e.scanDy = .radius e.scanValues
function e.portals:scan/trav_y
execute unless score @s e.scanDz matches ..0 positioned ~ ~ ~1 run function e.portals:scan/trav_z