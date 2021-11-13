#> e.portals:scan/init

# Search for UUID
function a.gadgets:id.system/sort_database

# Start coolDown
scoreboard players set @s e.portalCD 10

# Summon criterias
function e.portals:summon_criteria

# Retrieve Marker UUID
scoreboard players operation @e[type=marker,tag=e.scanMarker,distance=..1,limit=1,sort=nearest] a.UUIDs = @s a.UUIDs

# Retrieve My UUID
scoreboard players operation .scannerUUID a.UUIDs = @s a.UUIDs

# Start Scanning
execute as @e[type=marker,tag=e.scanMarker,tag=!e.scanBusy,limit=1,sort=nearest,distance=..9] if score @s a.UUIDs = .scannerUUID a.UUIDs at @s run function e.portals:start_scan

#tellraw @s [{"text": "[Akaito] ","color": "#71feff"},{"text": "Portal Activated","color": "#cde5fe"}]