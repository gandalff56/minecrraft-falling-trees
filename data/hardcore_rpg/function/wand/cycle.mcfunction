# Cycle to next ability slot
# Max slots: Warrior=2, Archer=2, Mage=4, Tank=3

scoreboard players add @s rpg.ability_slot 1

# Wrap around based on class
execute if score @s rpg.class matches 1 if score @s rpg.ability_slot matches 2.. run scoreboard players set @s rpg.ability_slot 0
execute if score @s rpg.class matches 2 if score @s rpg.ability_slot matches 2.. run scoreboard players set @s rpg.ability_slot 0
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 4.. run scoreboard players set @s rpg.ability_slot 0
execute if score @s rpg.class matches 4 if score @s rpg.ability_slot matches 3.. run scoreboard players set @s rpg.ability_slot 0

# Show current ability name
# Warrior
execute if score @s rpg.class matches 1 if score @s rpg.ability_slot matches 0 run title @s actionbar [{"text":"► ","color":"gray"},{"text":"War Cry","color":"red","bold":true},{"text":" | Ground Slam","color":"dark_gray"}]
execute if score @s rpg.class matches 1 if score @s rpg.ability_slot matches 1 run title @s actionbar [{"text":"War Cry | ","color":"dark_gray"},{"text":"► ","color":"gray"},{"text":"Ground Slam","color":"red","bold":true}]

# Archer
execute if score @s rpg.class matches 2 if score @s rpg.ability_slot matches 0 run title @s actionbar [{"text":"► ","color":"gray"},{"text":"Arrow Rain","color":"green","bold":true},{"text":" | Trap","color":"dark_gray"}]
execute if score @s rpg.class matches 2 if score @s rpg.ability_slot matches 1 run title @s actionbar [{"text":"Arrow Rain | ","color":"dark_gray"},{"text":"► ","color":"gray"},{"text":"Trap","color":"green","bold":true}]

# Mage
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 0 run title @s actionbar [{"text":"► ","color":"gray"},{"text":"Fireball","color":"aqua","bold":true},{"text":" | Heal | Lightning | Teleport","color":"dark_gray"}]
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 1 run title @s actionbar [{"text":"Fireball | ","color":"dark_gray"},{"text":"► ","color":"gray"},{"text":"Heal","color":"aqua","bold":true},{"text":" | Lightning | Teleport","color":"dark_gray"}]
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 2 run title @s actionbar [{"text":"Fireball | Heal | ","color":"dark_gray"},{"text":"► ","color":"gray"},{"text":"Lightning","color":"aqua","bold":true},{"text":" | Teleport","color":"dark_gray"}]
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 3 run title @s actionbar [{"text":"Fireball | Heal | Lightning | ","color":"dark_gray"},{"text":"► ","color":"gray"},{"text":"Teleport","color":"aqua","bold":true}]

# Tank
execute if score @s rpg.class matches 4 if score @s rpg.ability_slot matches 0 run title @s actionbar [{"text":"► ","color":"gray"},{"text":"Shield Bash","color":"dark_aqua","bold":true},{"text":" | Taunt | Bulwark","color":"dark_gray"}]
execute if score @s rpg.class matches 4 if score @s rpg.ability_slot matches 1 run title @s actionbar [{"text":"Shield Bash | ","color":"dark_gray"},{"text":"► ","color":"gray"},{"text":"Taunt","color":"dark_aqua","bold":true},{"text":" | Bulwark","color":"dark_gray"}]
execute if score @s rpg.class matches 4 if score @s rpg.ability_slot matches 2 run title @s actionbar [{"text":"Shield Bash | Taunt | ","color":"dark_gray"},{"text":"► ","color":"gray"},{"text":"Bulwark","color":"dark_aqua","bold":true}]

# Sound feedback
playsound minecraft:ui.button.click player @s ~ ~ ~ 0.5 1.5
