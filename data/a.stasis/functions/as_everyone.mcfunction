#> a.stasis:as_everyone

execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",tag:{a.Gadget:Stasis}}},nbt=!{Inventory:[{id:"minecraft:arrow"}]}] run give @s arrow{a.temp:1b}
clear @s[nbt=!{SelectedItem:{id:"minecraft:bow",tag:{a.Gadget:Stasis}}}] arrow{a.temp:1b}

# Used bow
execute if score @s[nbt={SelectedItem:{id:"minecraft:bow",tag:{a.Gadget:Stasis}}}] a.stasisUsedBow matches 1.. run function a.stasis:used_bow

# Stand tp
scoreboard players operation .tempUUID a.UUIDs = @s a.UUIDs
execute if entity @s[tag=a.usingStasis] anchored eyes positioned ~ ~.75 ~ as @e[type=armor_stand,tag=a.stasisStand,tag=!a.stasisLaunched] if score @s a.UUIDs = .tempUUID a.UUIDs run function a.stasis:stand/stand_tp

# Stop Condition
execute if entity @s[tag=!a.usingBow] run function a.stasis:stop_stasis

# Tag
tag @s remove a.usingBow