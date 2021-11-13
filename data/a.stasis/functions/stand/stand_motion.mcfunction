#> a.stasis:stand/stand_motion

tag @s add a.stasisLaunched

# Take motion
execute store result score .x a.stasisMotion run data get entity @s Pos[0] 1000
execute store result score .y a.stasisMotion run data get entity @s Pos[1] 1000
execute store result score .z a.stasisMotion run data get entity @s Pos[2] 1000

tp @s ^ ^ ^1

execute store result score .dx a.stasisMotion run data get entity @s Pos[0] 1000
execute store result score .dy a.stasisMotion run data get entity @s Pos[1] 1000
execute store result score .dz a.stasisMotion run data get entity @s Pos[2] 1000

scoreboard players operation .dx a.stasisMotion -= .x a.stasisMotion
scoreboard players operation .dy a.stasisMotion -= .y a.stasisMotion
scoreboard players operation .dz a.stasisMotion -= .z a.stasisMotion

execute store result entity @s Motion[0] double .005 run scoreboard players get .dx a.stasisMotion
execute store result entity @s Motion[1] double .001 run scoreboard players get .dy a.stasisMotion
execute store result entity @s Motion[2] double .005 run scoreboard players get .dz a.stasisMotion

#execute store result entity @s Motion[0] double .9 run scoreboard players get .dx a.stasisMotion
#execute store result entity @s Motion[1] double .9 run scoreboard players get .dy a.stasisMotion
#execute store result entity @s Motion[2] double .9 run scoreboard players get .dz a.stasisMotion