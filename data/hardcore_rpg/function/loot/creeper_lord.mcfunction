# Loot from Creeper Lord kill
# Rdzen Creepera — nether star trophy + TNT

give @s minecraft:nether_star[custom_name={"text":"Rdzen Creepera","color":"dark_green","bold":true,"italic":false},lore=[{"text":"Zdobycz z Creeper Lorda","color":"gray","italic":true},{"text":"Pulsuje niestabilna energia","color":"dark_green","italic":true}]] 1

# Bonus: TNT
give @s minecraft:tnt 5

# Bonus: gunpowder
give @s minecraft:gunpowder 16

# Announcement
tellraw @a ["",{"selector":"@s"},{"text":" pokonal ","color":"gray"},{"text":"Creeper Lorda","color":"dark_green","bold":true},{"text":" i zdobyl ","color":"gray"},{"text":"Rdzen Creepera","color":"dark_green","bold":true},{"text":"!","color":"gray"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

# Revoke advancement for reuse
advancement revoke @s only hardcore_rpg:kill/creeper_lord
