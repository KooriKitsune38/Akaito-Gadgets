#> a.stasis:start

# Tag
tag @s add a.usingStasis
tag @s add a.takeUUID

# Sound
playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ .1 2

# Spawn block item
loot spawn ~ ~ ~ mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}

# Remove block
setblock ~ ~ ~ air

# Summon Stand
summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Small:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"oak_button",Count:1b}],Tags:["a.stasisStand","a.notUUIDed"]}

# As the stand
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=a.stasisStand,tag=a.notUUIDed] at @s run function a.stasis:stand/stasis_stand

# Tag remove
tag @s remove a.takeUUID