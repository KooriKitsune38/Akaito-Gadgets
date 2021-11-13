# Create Scoreboards
scoreboard objectives add a.stasisRayDist dummy
scoreboard objectives add a.stasisMotion dummy
scoreboard objectives add a.stasisUsedBow used:bow 

scoreboard objectives add a.stasisAge dummy

# Set Values
scoreboard players set .maxAge a.stasisAge 100
scoreboard players set .maxStasisRayDist a.stasisRayDist 12