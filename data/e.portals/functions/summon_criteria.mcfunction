#> e.portals:summon_criteria

# Criteria
#> No Loc1 && Loc2 Found
execute unless data storage a.gadgets:database Users[0].portalStorage.blocks.loc1[1] unless data storage a.gadgets:database Users[0].portalStorage.blocks.loc2[1] run function e.portals:criteria/no_loc1
#> Loc1 Found
execute unless entity @s[tag=e.switchedPortalMode] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{e.portalMode:s2p1}}}] run function e.portals:criteria/s2p1
#> Loc2 Found
execute unless entity @s[tag=e.switchedPortalMode] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{e.portalMode:s1p2}}}] run function e.portals:criteria/s1p2

# Summon Marker
execute unless entity @e[type=marker,tag=e.scanMarker,distance=..18] run function e.portals:criteria/summon_marker

# Tag Remove
tag @s remove e.switchedPortalMode