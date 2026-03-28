# Blood Moon ended — dawn arrived
scoreboard players set #rpg.blood_moon rpg.temp 0

# Remove night vision
effect clear @a minecraft:night_vision

# Announce
title @a title {"text":"☀ Świt","color":"yellow","bold":true}
title @a subtitle {"text":"Blood Moon zakończony.","color":"gray"}
tellraw @a ["",{"text":"☀ Blood Moon się zakończył. Przetrwaliście noc!","color":"yellow"}]

playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 1.5
