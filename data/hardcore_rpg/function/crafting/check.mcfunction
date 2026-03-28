# Check for restricted equipment based on player level
# Called every 20 ticks from tick.mcfunction

# Below L8: can't use iron equipment
execute as @a[scores={rpg.level=..7}] run function hardcore_rpg:crafting/restrict_iron

# Below L14: can't use gold equipment
execute as @a[scores={rpg.level=..13}] run function hardcore_rpg:crafting/restrict_gold

# Below L20: can't use diamond equipment
execute as @a[scores={rpg.level=..19}] run function hardcore_rpg:crafting/restrict_diamond

# Below L28: can't use netherite equipment
execute as @a[scores={rpg.level=..27}] run function hardcore_rpg:crafting/restrict_netherite

# Shields: only Tank (class 4) can use
execute as @a[scores={rpg.class=0..3}] run function hardcore_rpg:crafting/restrict_shield
