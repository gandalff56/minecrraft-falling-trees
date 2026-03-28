# === WARRIOR PASSIVES ===

# Berserker: Strength when below 4 HP (level 5+)
execute as @a[scores={rpg.class=1,rpg.level=5..}] run function hardcore_rpg:abilities/warrior/berserker

# Double Strike: checked via advancement (passive)
# Lifesteal: checked via hurt_entity advancement (passive)

# Undying: checked on near-death (in tick)
execute as @a[scores={rpg.class=1,rpg.level=30..}] run function hardcore_rpg:abilities/warrior/undying

# === ARCHER PASSIVES ===

# Swift: permanent Speed effect (level 5+)
execute as @a[scores={rpg.class=2,rpg.level=5..}] run function hardcore_rpg:abilities/archer/swift

# Fire Arrows: tag arrows from archers (level 10+)
execute as @a[scores={rpg.class=2,rpg.level=10..}] at @s run function hardcore_rpg:abilities/archer/fire_arrows

# Phantom Arrow: pierce (level 30+)
execute as @a[scores={rpg.class=2,rpg.level=30..}] at @s run function hardcore_rpg:abilities/archer/phantom

# === MAGE PASSIVES ===
# (Mage has no passives — all abilities are wand-activated)

# === TANK PASSIVES ===

# Shield: only tanks can block, nerfed with cooldown
execute as @a[scores={rpg.class=4}] run function hardcore_rpg:abilities/warrior/shield_tick

# Fortress: passive Resistance when below 50% HP (level 5+)
execute as @a[scores={rpg.class=4,rpg.level=5..}] run function hardcore_rpg:abilities/tank/fortress

# Iron Skin: passive permanent Resistance I (level 15+)
execute as @a[scores={rpg.class=4,rpg.level=15..}] run function hardcore_rpg:abilities/tank/iron_skin

# Tank damage penalty: permanent Weakness I (50% less damage)
execute as @a[scores={rpg.class=4}] run effect give @s minecraft:weakness 2 0 true

# Unbreakable: survive lethal hit, 3 min cooldown (level 30)
execute as @a[scores={rpg.class=4,rpg.level=30..}] run function hardcore_rpg:abilities/tank/unbreakable
