#> a.gadgets:gadgets/hook/uuid_particle_marker

# Set UUID
scoreboard players operation @s a.UUIDs = @e[type=marker,tag=a.takeUUID,limit=1] a.UUIDs

# Remove Tag
tag @s remove a.notUUIDed