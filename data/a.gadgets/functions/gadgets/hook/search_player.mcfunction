#> a.gadgets:gadgets/hook/search_player

execute if entity @s[tag=a.hookParticles] if block ~ ~.5 ~ #a.gadgets:air if block ~ ~-.5 ~ #a.gadgets:air if block ~.5 ~ ~ #a.gadgets:air if block ~-.5 ~ ~ #a.gadgets:air if block ~ ~ ~.5 #a.gadgets:air if block ~ ~ ~-.5 #a.gadgets:air run function a.gadgets:gadgets/hook/hook_stop

# add tag
tag @s add a.hookChecking

# Retrieve UUID
scoreboard players operation .hookUUID a.UUIDs = @s a.UUIDs

# Search player
#> Distance Max
execute as @a[distance=55..] if score @s a.UUIDs = .hookUUID a.UUIDs at @s run function a.gadgets:gadgets/hook/unhook
#> Tp
execute if entity @s[tag=!a.hookParticles] as @a[tag=a.goToHook] if score @s a.UUIDs = .hookUUID a.UUIDs at @s unless entity @e[type=marker,tag=a.Hook,distance=...5] if block ~ ~ ~ #a.gadgets:air if block ^ ^ ^.7 #a.gadgets:air facing entity @e[tag=a.hookChecking,tag=!a.hookParticles,limit=1] eyes run function a.gadgets:gadgets/hook/hook_tp
#> Particles and Stop
execute if entity @s[tag=a.hookParticles] as @a[tag=a.spawnedHook] if score @s a.UUIDs = .hookUUID a.UUIDs at @s positioned ~ ~1.4 ~ facing entity @e[tag=a.hookChecking,tag=a.hookParticles,limit=1] eyes run function a.gadgets:gadgets/hook/hook_part_ray

# remove tag
tag @s remove a.hookChecking