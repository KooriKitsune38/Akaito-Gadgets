#> a.gadgets:as_everyone

# Can Sign In
execute store success score @s a.canSignIn if data storage a.gadgets:database Status[{Online:1b}]

# Used carrot stick
execute if score @s a.rightClick matches 1.. run function a.gadgets:right.click/clicked

# Hook stuff
#> Using Hook
execute if entity @s[tag=a.goToHook] run function a.gadgets:gadgets/hook/search_hook

#> Stop Hook if no item selected
execute if entity @s[tag=a.spawnedHook] unless predicate a.gadgets:gadgets/hook/holding_hook run function a.gadgets:gadgets/hook/unhook