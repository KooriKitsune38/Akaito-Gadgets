#> a.stasis:stand/stasis_stand

# Set UUID
scoreboard players operation @s a.UUIDs = @p[tag=a.takeUUID,limit=1] a.UUIDs

# Tag
tag @s remove a.notUUIDed

# Place block id onto head
data modify entity @s ArmorItems[3].id set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item.id

# Kill item
kill @e[type=item,distance=..1,limit=1,sort=nearest]

# If button, kill
execute if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:oak_button"}]}] run kill @s