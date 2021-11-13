#> a.gadgets:targets/as_marker

# Hook Marker
#> Search Player
execute if entity @s[tag=a.Hook] run function a.gadgets:gadgets/hook/search_player
#> Particles
execute if entity @s[tag=a.hookParticles] run particle electric_spark ~ ~ ~ .02 .02 .02 0 1 force