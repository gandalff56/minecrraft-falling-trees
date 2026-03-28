# === WARRIOR ABILITIES ===

# Shield: only warriors can block, nerfed with cooldown
execute as @a[scores={rpg.class=1}] run function hardcore_rpg:abilities/warrior/shield_tick

# Berserker: Strength when below 4 HP (level 5+)
execute as @a[scores={rpg.class=1,rpg.level=5..}] run function hardcore_rpg:abilities/warrior/berserker

# War Cry: sneak + sword → AoE knockback + weakness (level 8+)
execute as @a[scores={rpg.class=1,rpg.level=8..}] at @s run function hardcore_rpg:abilities/warrior/war_cry

# Double Strike: checked via advancement (passive)
# Lifesteal: checked via hurt_entity advancement (passive)

# Ground Slam: sneak + axe → AoE damage + slowness (level 20+)
execute as @a[scores={rpg.class=1,rpg.level=20..}] at @s run function hardcore_rpg:abilities/warrior/ground_slam

# Undying: checked on near-death (in tick)
execute as @a[scores={rpg.class=1,rpg.level=30..}] run function hardcore_rpg:abilities/warrior/undying

# === ARCHER ABILITIES ===

# Swift: permanent Speed effect (level 5+)
execute as @a[scores={rpg.class=2,rpg.level=5..}] run function hardcore_rpg:abilities/archer/swift

# Fire Arrows: tag arrows from archers (level 10+)
execute as @a[scores={rpg.class=2,rpg.level=10..}] at @s run function hardcore_rpg:abilities/archer/fire_arrows

# Arrow Rain: sneak + bow → rain of arrows on target (level 8+)
execute as @a[scores={rpg.class=2,rpg.level=8..}] at @s run function hardcore_rpg:abilities/archer/arrow_rain

# Trap: sneak + string → slow enemies in area (level 20+)
execute as @a[scores={rpg.class=2,rpg.level=20..}] at @s run function hardcore_rpg:abilities/archer/trap

# Phantom Arrow: pierce (level 30+)
execute as @a[scores={rpg.class=2,rpg.level=30..}] at @s run function hardcore_rpg:abilities/archer/phantom

# === MAGE ABILITIES ===

# Fireball: detect blaze rod use while sneaking (level 5+)
execute as @a[scores={rpg.class=3,rpg.level=5..}] at @s run function hardcore_rpg:abilities/mage/fireball

# Heal: detect golden apple use while sneaking (level 10+)
execute as @a[scores={rpg.class=3,rpg.level=10..}] at @s run function hardcore_rpg:abilities/mage/heal

# Lightning: detect trident use while sneaking (level 15+)
execute as @a[scores={rpg.class=3,rpg.level=15..}] at @s run function hardcore_rpg:abilities/mage/lightning

# Teleport: detect ender pearl use while sneaking (level 30+)
execute as @a[scores={rpg.class=3,rpg.level=30..}] at @s run function hardcore_rpg:abilities/mage/teleport
