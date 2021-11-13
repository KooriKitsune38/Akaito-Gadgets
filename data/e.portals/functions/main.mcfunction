# Cooldown
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{a.Gadget:EPortal}}}] if score @s e.portalCD matches 1.. run function e.portals:cooldown

# Player marker search
execute as @a at @s positioned ~-4.5 ~-10 ~-4.5 run function e.portals:marker_search

# As Marker
execute as @e[type=marker,tag=e.scanMarker] at @s run function e.portals:as_marker