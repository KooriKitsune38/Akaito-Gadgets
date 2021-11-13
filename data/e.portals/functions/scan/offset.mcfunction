#> e.portals:scan/offset

# scan Values
#> Retrieve values
scoreboard players operation @s e.scanDx = .radius e.scanValues
scoreboard players operation @s e.scanDz = .radius e.scanValues
#> Offset
scoreboard players operation @s e.scanDx /= .2 e.scanValues
scoreboard players operation @s e.scanDz /= .2 e.scanValues

# Start Scanning
execute positioned ~ ~-1 ~ run function e.portals:scan/origin_x