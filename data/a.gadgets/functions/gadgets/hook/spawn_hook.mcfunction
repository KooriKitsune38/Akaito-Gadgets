#> a.gadgets:gadgets/hook/spawn_hook

# Hook Shoot Model
item modify entity @s weapon.mainhand a.gadgets:hook/hook_shoot_main
item modify entity @s weapon.offhand a.gadgets:hook/hook_shoot_off

# Playsound
playsound entity.fishing_bobber.throw player @a ~ ~ ~

# Tag Player
tag @s add a.spawnedHook
tag @s add a.takeUUID

# Remove Durability
#> Add usage
scoreboard players add @s[gamemode=!creative] a.itemDurability 1
#> If more than 5 usages remove 1 durability
execute if score @s a.itemDurability matches 5.. run function a.gadgets:gadgets/hook/remove_durability

# Spawn Marker
summon marker ^ ^ ^ {Tags:[a.Hook,a.notUUIDed]}

# Set UUID
execute rotated as @s positioned ^ ^ ^ as @e[type=marker,distance=..2,limit=1,sort=nearest,tag=a.Hook,tag=a.notUUIDed] run function a.gadgets:gadgets/hook/uuid_marker

# Remove Tag
tag @s remove a.takeUUID