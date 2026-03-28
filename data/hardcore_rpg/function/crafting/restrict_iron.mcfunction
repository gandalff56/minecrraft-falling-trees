# Remove iron equipment from players below level 5
execute store result score @s rpg.temp run clear @s #hardcore_rpg:iron_equipment 0
execute if score @s rpg.temp matches 1.. run clear @s #hardcore_rpg:iron_equipment
execute if score @s rpg.temp matches 1.. run tellraw @s ["",{"text":"✖ ","color":"red"},{"text":"Potrzebujesz ","color":"gray"},{"text":"poziomu 5","color":"yellow","bold":true},{"text":" aby używać ","color":"gray"},{"text":"żelaznego ekwipunku","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if score @s rpg.temp matches 1.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 2
execute if score @s rpg.temp matches 1.. run title @s actionbar {"text":"⚠ Wymagany poziom 5 dla żelaza!","color":"red"}
