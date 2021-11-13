# Create Scoreboards
scoreboard objectives add a.UUIDs dummy
scoreboard objectives add a.canSignIn dummy
scoreboard objectives add a.itemDurability dummy
scoreboard objectives add a.rightClick used:carrot_on_a_stick

#> Hook
scoreboard objectives add a.hookBuffer dummy
scoreboard objectives add a.hookRayDist dummy

# Scoreboard Values
scoreboard players set .hookMaxDist a.hookRayDist 500
scoreboard players set .1 a.itemDurability 1

#> Cloud Wolf's Box Scanner
scoreboard players set .radius e.scanValues 9
scoreboard players set .0 e.scanValues 0
scoreboard players set .2 e.scanValues 2 

# Add storage
data merge storage a.gadgets:damage {Damage:0}
data modify storage a.gadgets:database Status[] set value {Online:1b}
data modify storage a.gadgets:database Users prepend value {}
data remove storage a.gadgets:database Users[0]

# Can Sign In
execute store success score @s a.canSignIn if data storage a.gadgets:database Status[{Online: 1b}]

# Reload Message
tellraw @a [{"text": "[Akaito] ","color": "#71feff"},{"text": "Datapack Reloaded","color": "#cde5fe"}]
#advancement revoke @a only a.gadgets:retrieve_uuid