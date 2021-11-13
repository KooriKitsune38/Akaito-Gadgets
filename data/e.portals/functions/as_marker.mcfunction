#> e.portals:as_marker

# Closed Portal
execute if entity @s[tag=e.scanLoc2] run particle electric_spark ~ ~ ~ .5 .5 .5 0 1 force

# Opened Portal
execute if entity @s[tag=e.scanLoc1] align xyz positioned ~.5 ~ ~.5 run function e.portals:particles/particles