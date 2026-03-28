# Display actionbar HUD
# No class yet
execute if score @s rpg.class matches 0 run title @s actionbar [{"text":"❤ ","color":"red"},{"score":{"name":"@s","objective":"rpg.health"},"color":"red"},{"text":"HP","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Lv.","color":"yellow"},{"score":{"name":"@s","objective":"rpg.level"},"color":"yellow"},{"text":" | ","color":"dark_gray"},{"text":"XP: ","color":"aqua"},{"score":{"name":"@s","objective":"rpg.xp"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"rpg.xp_needed"},"color":"aqua"}]

# Warrior
execute if score @s rpg.class matches 1 run title @s actionbar [{"text":"⚔ ","color":"red"},{"score":{"name":"@s","objective":"rpg.health"},"color":"red"},{"text":"HP","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Lv.","color":"yellow"},{"score":{"name":"@s","objective":"rpg.level"},"color":"yellow"},{"text":" Warrior","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"XP: ","color":"aqua"},{"score":{"name":"@s","objective":"rpg.xp"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"rpg.xp_needed"},"color":"aqua"}]

# Archer
execute if score @s rpg.class matches 2 run title @s actionbar [{"text":"🏹 ","color":"green"},{"score":{"name":"@s","objective":"rpg.health"},"color":"red"},{"text":"HP","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Lv.","color":"yellow"},{"score":{"name":"@s","objective":"rpg.level"},"color":"yellow"},{"text":" Archer","color":"green"},{"text":" | ","color":"dark_gray"},{"text":"XP: ","color":"aqua"},{"score":{"name":"@s","objective":"rpg.xp"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"rpg.xp_needed"},"color":"aqua"}]

# Mage
execute if score @s rpg.class matches 3 run title @s actionbar [{"text":"✦ ","color":"blue"},{"score":{"name":"@s","objective":"rpg.health"},"color":"red"},{"text":"HP","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Lv.","color":"yellow"},{"score":{"name":"@s","objective":"rpg.level"},"color":"yellow"},{"text":" Mage","color":"blue"},{"text":" | ","color":"dark_gray"},{"text":"XP: ","color":"aqua"},{"score":{"name":"@s","objective":"rpg.xp"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"rpg.xp_needed"},"color":"aqua"}]

# Tank
execute if score @s rpg.class matches 4 run title @s actionbar [{"text":"⛊ ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rpg.health"},"color":"red"},{"text":"HP","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Lv.","color":"yellow"},{"score":{"name":"@s","objective":"rpg.level"},"color":"yellow"},{"text":" Tank","color":"dark_aqua"},{"text":" | ","color":"dark_gray"},{"text":"XP: ","color":"aqua"},{"score":{"name":"@s","objective":"rpg.xp"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"rpg.xp_needed"},"color":"aqua"}]
