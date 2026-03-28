# Start Blood Moon event!
scoreboard players set #rpg.blood_moon rpg.temp 1
scoreboard players set #rpg.days_since_bm rpg.temp 0

# Announce to all players
title @a title {"text":"🌑 BLOOD MOON","color":"dark_red","bold":true}
title @a subtitle {"text":"Potwory są silniejsze tej nocy...","color":"red"}
tellraw @a ["",{"text":"═══════════════════════════════","color":"dark_red"}]
tellraw @a ["",{"text":"  🌑 BLOOD MOON! ","color":"dark_red","bold":true},{"text":"Potwory zyskują Siłę i Szybkość!","color":"red"}]
tellraw @a ["",{"text":"═══════════════════════════════","color":"dark_red"}]

# Sound effects
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 0.5 0.5
playsound minecraft:ambient.cave player @a ~ ~ ~ 1 0.3

# Give all players Night Vision for red tint effect (optional visual)
effect give @a minecraft:night_vision 999 0 true
