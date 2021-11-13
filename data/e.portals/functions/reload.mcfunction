# Create Scoreboards
#> e.Portal
scoreboard objectives add e.portalCD dummy

#> Cloud Wolf's Block Store
scoreboard objectives add bsc dummy

#> Cloud Wolf's Box Scanner
scoreboard objectives add e.scanValues dummy
scoreboard objectives add e.scanDx dummy
scoreboard objectives add e.scanDy dummy
scoreboard objectives add e.scanDz dummy

# Scoreboard Values
#> Cloud Wolf's Box Scanner
scoreboard players set .radius e.scanValues 9
scoreboard players set .0 e.scanValues 0
scoreboard players set .2 e.scanValues 2

scoreboard players set .8 e.portalCD 8

# Change Gamerule
gamerule maxCommandChainLength 70000

# Create Storages
data merge storage e.portals:cooldown {Damage:0}