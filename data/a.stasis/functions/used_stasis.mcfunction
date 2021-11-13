#> a.stasis:used_stasis

#> Launch block
#execute if entity @s[tag=a.usingStasis] run function a.stasis:launch_stand

# Tag
tag @s add a.usingBow

#> Start Raycast
execute if entity @s[tag=!a.usedStasis] anchored eyes run function a.stasis:stasis_ray

# Revoke Adv
advancement revoke @s only a.stasis:using_bow