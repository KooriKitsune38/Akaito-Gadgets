#> e.portals:start_scan

# Playsound
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ .25 2
playsound minecraft:block.lodestone.place ambient @a ~ ~ ~ 1 2

# Particles
particle reverse_portal ~ ~-.5 ~ 1 0 1 1 10 force

# Start Offset
function e.portals:scan/offset

# End Scan
#> Kill
kill @s[tag=e.scanKillMe]
#> Remove scanning tag
tag @s remove e.scanning
#> Add replacing tag
tag @s add e.replacing
#> Schedule replacing
schedule function e.portals:schedule_replace 1t