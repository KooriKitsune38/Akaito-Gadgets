#> a.gadgets:id.system/rotate_ids

# Append first value
data modify storage a.gadgets:database Users append from storage a.gadgets:database Users[0]

# Remove first value
data remove storage a.gadgets:database Users[0]

# Check UUID again
function a.gadgets:id.system/sort_database