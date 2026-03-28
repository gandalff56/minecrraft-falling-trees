# Check if endgame dragon fight should activate
# Requires: 2+ L30 players in the_end with netherite armor

# Revoke advancement for reuse
advancement revoke @s only hardcore_rpg:enter_end

# Don't activate if dragon fight already active
execute if score #rpg.dragon_active rpg.temp matches 1 run return 0

# Count L30 players in the_end dimension
execute in minecraft:the_end store result score #rpg.dragon_count rpg.temp run execute if entity @a[scores={rpg.level=30}]

# Need at least 2 L30 players
execute unless score #rpg.dragon_count rpg.temp matches 2.. run return 0

# Check if at least 2 players have netherite armor (check chestplate as indicator)
execute in minecraft:the_end store result score #rpg.dragon_armor rpg.temp run execute if entity @a[scores={rpg.level=30},nbt={Inventory:[{Slot:102b,id:"minecraft:netherite_chestplate"}]}]
execute unless score #rpg.dragon_armor rpg.temp matches 2.. run return 0

# Check if ender dragon exists in the_end
execute in minecraft:the_end unless entity @e[type=minecraft:ender_dragon] run return 0

# All conditions met — activate endgame boss!
function hardcore_rpg:boss/dragon_start
