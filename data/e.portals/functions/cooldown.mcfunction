#> e.portals:cooldown

# Continue Cooldown
scoreboard players add @s e.portalCD 10

# Operations
scoreboard players operation .portalCooldown e.portalCD = @s e.portalCD
scoreboard players operation .portalCooldown e.portalCD /= .8 e.portalCD

# Store Durability in storage
execute store result storage e.portals:cooldown Damage int 1 run scoreboard players get .portalCooldown e.portalCD

# Replace Durability to Item with modifier
item modify entity @s weapon.mainhand e.portals:cooldown

# Reset Scoreboard
execute if score @s e.portalCD matches 200.. run function e.portals:reset_cooldown