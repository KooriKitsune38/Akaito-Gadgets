#> e.portals:scan/loc1/read_block

# Read Block
function e.portals:read

# Put Block Id inside Database
#> Copy Id
execute store result storage a.gadgets:database Users[0].portalStorage.blocks.loc1[0].blockId int 1 run scoreboard players get block bsc
#> Copy NBT
execute if data block ~ ~ ~ {} run data modify storage a.gadgets:database Users[0].portalStorage.blocks.loc1[0].nbt set from block ~ ~ ~
#> Append current block
data modify storage a.gadgets:database Users[0].portalStorage.blocks.loc1 append from storage a.gadgets:database Users[0].portalStorage.blocks.loc1[0]