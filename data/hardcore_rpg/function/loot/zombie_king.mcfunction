# Loot from Zombie King kill
# Korona Zombie Króla — golden helmet with Protection IV, Unbreaking III

give @s minecraft:golden_helmet[custom_name='{"text":"Korona Zombie Króla","color":"dark_red","bold":true,"italic":false}',enchantments={levels:{"minecraft:protection":4,"minecraft:unbreaking":3}},lore=['{"text":"Zdobycz z Zombie Kinga","color":"gray","italic":true}','{"text":"Władca nieumarłych","color":"dark_purple","italic":true}']] 1

# Bonus: golden apples
give @s minecraft:golden_apple 3

# Announcement
tellraw @a ["",{"text":"👑 ","color":"gold"},{"selector":"@s"},{"text":" pokonał ","color":"gray"},{"text":"Zombie Kinga","color":"dark_red","bold":true},{"text":" i zdobył ","color":"gray"},{"text":"Koronę Zombie Króla","color":"gold","bold":true},{"text":"!","color":"gray"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

# Revoke advancement for reuse
advancement revoke @s only hardcore_rpg:kill/zombie_king
