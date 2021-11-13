#> a.stasis:stand/as_stand

# Kill when over max
scoreboard players add @s[tag=a.stasisLaunched] a.stasisAge 1
execute if score @s a.stasisAge >= .maxAge a.stasisAge run function a.stasis:stand/kill_stand

# Hit players
execute if score @s[nbt={OnGround:0b}] a.stasisAge matches ..80 run effect give @e[distance=..2] instant_damage 1 0 true
execute if score @s[nbt={OnGround:0b}] a.stasisAge matches 81.. run effect give @e[distance=..2] instant_damage 1 1 true

# Particles
execute if entity @s[tag=a.stasisLaunched] run particle dust 1 1 1 1 ~ ~.75 ~ .1 .2 .1 0 2 normal