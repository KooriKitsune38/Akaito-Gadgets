#> e.portals:criteria/no_loc1

# Playsound
#playsound block.respawn_anchor.charge ambient @a

# Tellraw "Scanning"
#tellraw @s [{"text": "[Akaito] ","color": "#71feff"},{"text": "Scanning Loc1","color": "#cde5fe"}]

# Tag player
tag @s add e.switchedPortalMode

# Set to s2p1
item modify entity @s weapon.mainhand e.portals:set_s2p1

# Summon Marker
#execute unless entity @e[type=marker,tag=e.scanMarker,distance=..18] run summon marker ~ ~ ~ {Tags:["e.scanMarker","e.scanning","e.scanLoc1","e.scanKillMe"]}