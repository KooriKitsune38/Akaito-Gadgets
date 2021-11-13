#> a.gadgets:gadgets/hook/unhook

# Hook Shoot Model
item modify entity @s weapon.mainhand a.gadgets:hook/hook_idle_main
item modify entity @s weapon.offhand a.gadgets:hook/hook_idle_off

# Effects
effect give @s slow_falling 1 0 true

# Remove Tags
tag @s remove a.goToHook
tag @s remove a.spawnedHook
tag @s add a.unHooked

# Kill Hook
#> Retrieve UUID
scoreboard players operation .killHookUUID a.UUIDs = @s a.UUIDs

#> Kill Marker
execute as @e[type=marker,tag=a.Hook] if score @s a.UUIDs = .killHookUUID a.UUIDs run kill @s

# Remove Effect
effect clear @s levitation

# Playsound
playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 1 2