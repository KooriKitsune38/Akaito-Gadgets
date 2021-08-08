#> a.gadgets:gadgets/hook/hook_stop

# Search player
#> Retrieve UUID
scoreboard players operation .searchHookPlayerUUID a.UUIDs = @s a.UUIDs

#> Search Player
execute as @a[tag=a.spawnedHook] if score @s a.UUIDs = .searchHookPlayerUUID a.UUIDs at @s run function a.gadgets:gadgets/hook/unhook