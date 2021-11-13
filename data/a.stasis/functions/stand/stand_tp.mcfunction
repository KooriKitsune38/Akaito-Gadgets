#> a.stasis:stand/stand_tp

scoreboard players add @s a.stasisRayDist 1

tp @s ^ ^ ^
playsound block.respawn_anchor.ambient player @a ^ ^ ^ .01 2
execute if predicate a.stasis:chance_10 run particle electric_spark ^ ^ ^ .5 .5 .5 0 1 normal

execute if score @s a.stasisRayDist matches ..10 positioned ^ ^ ^.5 if block ^ ^ ^ #a.gadgets:air run function a.stasis:stand/stand_tp

scoreboard players reset @s a.stasisRayDist