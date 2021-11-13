#> e.portals:marker_search

# Retrieve UUID
scoreboard players operation .portalDistUUID a.UUIDs = @s a.UUIDs

# If marker too far, kill it
execute as @e[type=marker,tag=e.scanMarker] unless entity @s[dx=8.5,dy=12,dz=8.5] if score @s a.UUIDs = .portalDistUUID a.UUIDs at @s run function e.portals:remove_portal