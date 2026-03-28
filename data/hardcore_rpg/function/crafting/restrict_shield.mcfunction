# Remove shields from non-Warrior players
execute store result score @s rpg.temp run clear @s minecraft:shield 0
execute if score @s rpg.temp matches 1.. run clear @s minecraft:shield
execute if score @s rpg.temp matches 1.. run tellraw @s ["",{"text":"✖ ","color":"red"},{"text":"Tylko ","color":"gray"},{"text":"Tank","color":"dark_aqua","bold":true},{"text":" może używać tarczy!","color":"gray"}]
execute if score @s rpg.temp matches 1.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 2
execute if score @s rpg.temp matches 1.. run title @s actionbar {"text":"⚠ Tarcza tylko dla Tanka!","color":"red"}
