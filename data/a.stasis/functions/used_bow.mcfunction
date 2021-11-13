#> a.stasis:used_bow

# Reset Scoreboard
scoreboard players reset @s a.stasisUsedBow

# Tag
tag @s remove a.usedStasis
tag @s add a.checkUUID

# Sounds
stopsound @s player entity.arrow.shoot

# Kill Arrow
execute as @e[type=arrow,limit=1,sort=nearest] run function a.stasis:kill_arrow

# Tag
tag @s remove a.checkUUID

# Launch Stand
execute anchored eyes if entity @s[tag=a.usingStasis] run function a.stasis:launch_stand