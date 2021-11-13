#> e.portals:scan/loc1/setblock

# Retrieve block Id
scoreboard players operation .blocktmp bsc = block bsc

# Replace Block ID with current
execute store result score block bsc run data get storage a.gadgets:database Users[0].portalStorage.blocks.loc1[1].blockId

# Setblock
function e.portals:setblock

# Copy NBT if it exists
data modify block ~ ~ ~ {} merge from storage a.gadgets:database Users[0].portalStorage.blocks.loc1[1].nbt

# Remove current blockId 
data remove storage a.gadgets:database Users[0].portalStorage.blocks.loc1[1]