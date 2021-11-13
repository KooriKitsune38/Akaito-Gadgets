#> a.stasis:launch_stand

# Tag
tag @s remove a.usingStasis
tag @s add a.takeRot

# Sounds
stopsound @s player entity.arrow.shoot
playsound block.beacon.power_select player @a ^ ^ ^ .5 2

# Take UUID
scoreboard players operation .tempUUID a.UUIDs = @s a.UUIDs

# Send stand to space
execute as @e[type=armor_stand,tag=a.stasisStand,tag=!a.stasisLaunched] if score @s a.UUIDs = .tempUUID a.UUIDs at @s rotated as @p[tag=a.takeRot] run function a.stasis:stand/stand_motion

# Tag
tag @s remove a.takeRot