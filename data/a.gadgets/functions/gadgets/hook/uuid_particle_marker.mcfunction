#> a.gadgets:gadgets/hook/uuid_particle_marker

# Set UUID
scoreboard players operation @s a.UUIDs = @e[type=marker,limit=1,tag=a.takeUUID] a.UUIDs

# Remove Tag
tag @s remove a.notUUIDed