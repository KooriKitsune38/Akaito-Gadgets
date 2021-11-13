scoreboard players remove @s e.scanDy 1
scoreboard players operation @s e.scanDx = .radius e.scanValues
function e.portals:scan/trav_x
execute unless score @s e.scanDy matches ..0 positioned ~ ~1 ~ run function e.portals:scan/trav_y