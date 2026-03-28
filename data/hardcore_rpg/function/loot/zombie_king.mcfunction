# Loot from Zombie King kill
# Korona Zombie Krola — golden helmet with Protection IV, Unbreaking III

give @s minecraft:golden_helmet[custom_name={"text":"Korona Zombie Krola","color":"dark_red","bold":true,"italic":false},enchantments={levels:{"minecraft:protection":4,"minecraft:unbreaking":3}},lore=[{"text":"Zdobycz z Zombie Kinga","color":"gray","italic":true},{"text":"Wladca zmarlych","color":"dark_purple","italic":true}]] 1

# Bonus: golden apples
give @s minecraft:golden_apple 3

# Announcement
tellraw @a ["",{"selector":"@s"},{"text":" pokonal ","color":"gray"},{"text":"Zombie Kinga","color":"dark_red","bold":true},{"text":" i zdobyl ","color":"gray"},{"text":"Korone Zombie Krola","color":"gold","bold":true},{"text":"!","color":"gray"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

# Revoke advancement for reuse
advancement revoke @s only hardcore_rpg:kill/zombie_king
