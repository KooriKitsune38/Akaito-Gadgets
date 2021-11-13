#> a.gadgets:gadgets/hook/search_hook

# Effects
execute unless entity @e[type=marker,tag=a.Hook,distance=...5] run effect give @s[nbt=!{ActiveEffects:[{Id:25b}]}] levitation 1 0 true
execute if entity @e[type=marker,tag=a.Hook,distance=...5] if block ~ ~-.5 ~ #a.gadgets:air run effect give @s[nbt=!{ActiveEffects:[{Id:25b}]}] levitation 1 0 true
#execute if entity @e[type=marker,tag=a.Hook,distance=...5] run effect give @s levitation 1 255 true