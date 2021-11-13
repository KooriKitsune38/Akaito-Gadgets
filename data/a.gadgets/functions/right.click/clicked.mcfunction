#> a.gadgets:right.click/clicked

# Reset Scoreboard
scoreboard players reset @s a.rightClick

# Sort NBT
#> Hook
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{a.Gadget:Hook}}}] run function a.gadgets:gadgets/hook/used_hook
#> Portal
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{a.Gadget:EPortal,Damage:0}}}] run function e.portals:scan/init
#> Stasis Gun
#execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{a.Gadget:Stasis}}}] anchored eyes run function a.stasis:used_stasis