#> e.portals:start_replacing

# Search for UUID
function a.gadgets:id.system/sort_database

# Start Offset
function e.portals:scan/offset

# End Scan
#> Kill
kill @s[tag=e.scanKillMe]
#> Swap Scan/Place tags
execute if entity @s[tag=!e.switchedSP,tag=e.scanLoc1,tag=e.placeLoc2] run function e.portals:criteria/s2p1_tags
execute if entity @s[tag=!e.switchedSP,tag=e.scanLoc2,tag=e.placeLoc1] run function e.portals:criteria/s1p2_tags
tag @s remove e.switchedSP
#> Remove replacing tag
tag @s remove e.replacing
#> Add scanning tag
tag @s add e.scanning