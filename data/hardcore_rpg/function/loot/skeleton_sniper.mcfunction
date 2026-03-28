# Loot from Skeleton Sniper kill
# Luk Snajpera — bow with Power V, Infinity, Punch II

give @s minecraft:bow[custom_name={"text":"Luk Snajpera","color":"dark_purple","bold":true,"italic":false},enchantments={levels:{"minecraft:power":5,"minecraft:infinity":1,"minecraft:punch":2}},lore=[{"text":"Zdobycz ze Skeleton Snipera","color":"gray","italic":true},{"text":"Precyzja ponad smierc","color":"dark_purple","italic":true}]] 1

# Bonus: arrows
give @s minecraft:arrow 64

# Announcement
tellraw @a ["",{"selector":"@s"},{"text":" pokonal ","color":"gray"},{"text":"Skeleton Snipera","color":"dark_purple","bold":true},{"text":" i zdobyl ","color":"gray"},{"text":"Luk Snajpera","color":"dark_purple","bold":true},{"text":"!","color":"gray"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

# Revoke advancement for reuse
advancement revoke @s only hardcore_rpg:kill/skeleton_sniper
