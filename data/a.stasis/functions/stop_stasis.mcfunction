#> a.stasis:stop_stasis

# Tag
tag @s remove a.usingStasis
tag @s remove a.usedStasis

# Remove tag for them stands
execute as @e[type=armor_stand,tag=a.stasisStand,tag=!a.stasisLaunched] if score @s a.UUIDs = .tempUUID a.UUIDs run tag @s add a.stasisLaunched