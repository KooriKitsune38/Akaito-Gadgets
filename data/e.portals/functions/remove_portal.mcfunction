#> e.portals:remove_portal

# Search for UUID
function a.gadgets:id.system/sort_database

# Replace Loc2
execute if entity @s[tag=e.scanLoc1] run function e.portals:start_scan

# Playsound
playsound block.beacon.deactivate ambient @a ~ ~ ~ 1 .7

# Kill @s
kill @s[tag=e.scanLoc2]
tag @s[tag=e.scanLoc1] add e.scanKillMe