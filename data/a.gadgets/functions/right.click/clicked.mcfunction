#> a.gadgets:right.click/clicked

# Reset Scoreboard
scoreboard players reset @s a.rightClick

# Sort NBT
#> Hook
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{a.Gadget:Hook}}}] run function a.gadgets:gadgets/hook/used_hook