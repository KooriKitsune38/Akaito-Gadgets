#> a.stasis:stasis_ray

# Tag
tag @s add a.usedStasis

# Add Distance
scoreboard players add @s a.stasisRayDist 1

#particle crit ^ ^ ^

# Repeat if condition met
execute if score @s a.stasisRayDist <= .maxStasisRayDist a.stasisRayDist if block ^ ^ ^ #a.gadgets:air positioned ^ ^ ^.5 run function a.stasis:stasis_ray

# Start if block not air
execute unless block ^ ^ ^ #a.stasis:exceptions run function a.stasis:start

# Reset scoreboard
scoreboard players reset @s a.stasisRayDist