#> e.portals:schedule_replace

# Execute as @e e.replacing run start_scanning
execute as @e[type=marker,tag=e.replacing,tag=e.scanMarker] at @s run function e.portals:start_replacing