#> a.stasis:kill_arrow

execute store result score .tempUUID a.UUIDs run data get entity @s Owner[0]

execute if score .tempUUID a.UUIDs = @p[tag=a.checkUUID] a.UUIDs run kill @s

#execute store result score .dx a.stasisMotion run data get entity @s Motion[0]
#execute store result score .dy a.stasisMotion run data get entity @s Motion[1]
#execute store result score .dz a.stasisMotion run data get entity @s Motion[2]