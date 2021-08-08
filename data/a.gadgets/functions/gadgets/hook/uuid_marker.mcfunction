#> a.gadgets:gadgets/hook/uuid_marker

# Set UUID
scoreboard players operation @s a.UUIDs = @p[tag=a.takeUUID] a.UUIDs

# Remove Tag
tag @s remove a.notUUIDed

# Launch Hook
function a.gadgets:gadgets/hook/hook_ray