#> a.gadgets:gadgets/hook/hook_part_ray

# Display particles
particle dust 0.373 0.373 0.373 .4 ~ ~ ~ 0 0 0 0 1 force

# If no air, unhook
execute positioned ^ ^ ^-.2 unless block ~ ~ ~ #a.gadgets:air run function a.gadgets:gadgets/hook/unhook

# Repeat function
execute unless entity @e[type=marker,tag=a.hookParticles,distance=...2] positioned ^ ^ ^.2 run function a.gadgets:gadgets/hook/hook_part_ray