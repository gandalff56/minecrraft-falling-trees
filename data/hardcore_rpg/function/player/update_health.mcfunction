# Recalculate and apply max HP based on class and level
# Base: 6 HP (3 hearts)
scoreboard players set @s rpg.max_hp 6

# Warrior: +2 HP at levels 1,3,7,13,18,23,28
execute if score @s rpg.class matches 1 if score @s rpg.level matches 1.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 1 if score @s rpg.level matches 3.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 1 if score @s rpg.level matches 7.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 1 if score @s rpg.level matches 13.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 1 if score @s rpg.level matches 18.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 1 if score @s rpg.level matches 23.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 1 if score @s rpg.level matches 28.. run scoreboard players add @s rpg.max_hp 2

# Archer: +1 HP at levels 1,3,7,13,18,23,28
execute if score @s rpg.class matches 2 if score @s rpg.level matches 1.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 2 if score @s rpg.level matches 3.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 2 if score @s rpg.level matches 7.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 2 if score @s rpg.level matches 13.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 2 if score @s rpg.level matches 18.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 2 if score @s rpg.level matches 23.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 2 if score @s rpg.level matches 28.. run scoreboard players add @s rpg.max_hp 1

# Mage: +1 HP at levels 1,3,7,13,18,23,28
execute if score @s rpg.class matches 3 if score @s rpg.level matches 1.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 3 if score @s rpg.level matches 3.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 3 if score @s rpg.level matches 7.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 3 if score @s rpg.level matches 13.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 3 if score @s rpg.level matches 18.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 3 if score @s rpg.level matches 23.. run scoreboard players add @s rpg.max_hp 1
execute if score @s rpg.class matches 3 if score @s rpg.level matches 28.. run scoreboard players add @s rpg.max_hp 1

# Tank: +2 HP at levels 1,3,7,13,18,23,25,28 (max 22 HP)
execute if score @s rpg.class matches 4 if score @s rpg.level matches 1.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 4 if score @s rpg.level matches 3.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 4 if score @s rpg.level matches 7.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 4 if score @s rpg.level matches 13.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 4 if score @s rpg.level matches 18.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 4 if score @s rpg.level matches 23.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 4 if score @s rpg.level matches 25.. run scoreboard players add @s rpg.max_hp 2
execute if score @s rpg.class matches 4 if score @s rpg.level matches 28.. run scoreboard players add @s rpg.max_hp 2

# Apply max health attribute
execute store result storage hardcore_rpg:data max_hp double 1 run scoreboard players get @s rpg.max_hp
function hardcore_rpg:player/apply_health with storage hardcore_rpg:data
