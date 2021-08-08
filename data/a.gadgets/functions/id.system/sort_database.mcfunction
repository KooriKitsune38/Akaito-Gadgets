#> a.gadgets:id.system/sort_database

# Retrieve First UUID
execute store result score .databaseUUID a.UUIDs run data get storage a.gadgets:database Users[0].Id

# Rotate if it doesn't match
execute unless score .databaseUUID a.UUIDs = @s a.UUIDs run function a.gadgets:id.system/rotate_ids