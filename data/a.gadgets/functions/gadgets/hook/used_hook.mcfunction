#> a.gadgets:gadgets/hook/used_hook

tag @s remove a.unHooked

# Check Stage
#> If hooked, remove everything
execute if entity @s[tag=a.goToHook] run function a.gadgets:gadgets/hook/unhook

#> If hook exists, tp to it
execute if entity @s[tag=a.spawnedHook] run function a.gadgets:gadgets/hook/hook_2nd_trigger

#> If no tag, spawn hook
execute if entity @s[tag=!a.spawnedHook,tag=!a.unHooked] anchored eyes run function a.gadgets:gadgets/hook/spawn_hook