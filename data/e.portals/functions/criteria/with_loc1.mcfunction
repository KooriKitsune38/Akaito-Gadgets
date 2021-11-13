#> e.portals:criteria/with_loc1

# Remove Tag
tag @s remove e.switchedPortalMode

# Check Tag
#> Scan Loc2, Place Loc1 (s2p1)
execute if entity @s[tag=!e.switchedPortalMode,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{e.portalMode:s2p1}}}] run function e.portals:criteria/s2p1

#> Scan Loc1, Place Loc2 (s1p2)
execute if entity @s[tag=!e.switchedPortalMode,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{e.portalMode:s1p2}}}] run function e.portals:criteria/s1p2