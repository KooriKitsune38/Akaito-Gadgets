#> a.gadgets:gadgets/hook/remove_durability

# Retrieve Durability
execute store result score .itemDurability a.itemDurability run data get entity @s SelectedItem.tag.Damage

# Add 1
scoreboard players operation .itemDurability a.itemDurability += .1 a.itemDurability

# Store into storage
execute store result storage a.gadgets:damage Damage int 1 run scoreboard players get .itemDurability a.itemDurability

# Set durability back to item
execute unless score .itemDurability a.itemDurability matches 26.. run item modify entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{a.Gadget:Hook}}}] weapon.mainhand a.gadgets:hook/hook_damage

# If more than 30 clear item
execute if score .itemDurability a.itemDurability matches 25.. run function a.gadgets:gadgets/hook/break_hook

# Reset scoreboard
scoreboard players reset @s a.itemDurability