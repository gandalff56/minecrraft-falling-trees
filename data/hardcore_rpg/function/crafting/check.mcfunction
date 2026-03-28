# Check for restricted equipment based on player level
# Called every 20 ticks from tick.mcfunction

# Below L5: can't use iron equipment
execute as @a[scores={rpg.level=..4}] run function hardcore_rpg:crafting/restrict_iron

# Below L10: can't use gold equipment
execute as @a[scores={rpg.level=..9}] run function hardcore_rpg:crafting/restrict_gold

# Below L15: can't use diamond equipment
execute as @a[scores={rpg.level=..14}] run function hardcore_rpg:crafting/restrict_diamond

# Below L25: can't use netherite equipment
execute as @a[scores={rpg.level=..24}] run function hardcore_rpg:crafting/restrict_netherite

# Shields: only Tank (class 4) can use
execute as @a[scores={rpg.class=0..3}] run function hardcore_rpg:crafting/restrict_shield
