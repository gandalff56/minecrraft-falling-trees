# Apply XP bonus for mini-boss kills (5x XP)
scoreboard players operation @s rpg.xp_grant *= #5 rpg.temp
tellraw @s ["",{"text":"👑 ","color":"dark_red"},{"text":"Zabito BOSSA! ","color":"dark_red","bold":true},{"text":"XP x5","color":"gold"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
