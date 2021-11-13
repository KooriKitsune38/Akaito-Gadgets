#> a.gadgets:gadgets/hook/hook_ray

# Move Forward
tp @s ~ ~ ~ ~ ~

# Particles
particle electric_spark ~ ~ ~ 0 0 0 0 1 force

# Add Distance
scoreboard players add @s a.hookRayDist 1

# Remove if air
execute if score @s a.hookRayDist >= .hookMaxDist a.hookRayDist if block ^ ^ ^.1 #a.gadgets:air run function a.gadgets:gadgets/hook/hook_stop

# Repeat if air and distance
execute at @s if score @s a.hookRayDist <= .hookMaxDist a.hookRayDist positioned ^ ^ ^.1 if block ^ ^ ^ #a.gadgets:air run function a.gadgets:gadgets/hook/hook_ray

# Hook to block
execute as @s[tag=!a.hookParticles] unless block ^ ^ ^.1 #a.gadgets:air run function a.gadgets:gadgets/hook/hook_to_block