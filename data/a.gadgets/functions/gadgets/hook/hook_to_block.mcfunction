#> a.gadgets:gadgets/hook/hook_to_block

# Summon Marker Particles
summon marker ^ ^ ^.05 {Tags:[a.Hook,a.notUUIDed,a.hookParticles]}

# Tag @s
tag @s add a.takeUUID

# Set UUID
execute as @e[type=marker,limit=1,sort=nearest,distance=..1,tag=a.hookParticles,tag=a.notUUIDed] run function a.gadgets:gadgets/hook/uuid_particle_marker

# Remove tag
tag @s remove a.takeUUID

# If block under it, stop
#execute unless block ~ ~1 ~ #a.gadgets:air unless block ~ ~-1 ~ #a.gadgets:air run function a.gadgets:gadgets/hook/hook_stop

# Go down
#> 1 block
execute align xz if block ~ ~-.9 ~ #a.gadgets:air unless block ~ ~-1.9 ~ #a.gadgets:air run tp @s ~.5 ~-.9 ~.5
#> 2 blocks
execute align xz if block ~ ~-.9 ~ #a.gadgets:air if block ~ ~-1.9 ~ #a.gadgets:air run tp @s ~.5 ~-1.9 ~.5