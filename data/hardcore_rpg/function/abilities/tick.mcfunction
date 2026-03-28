# === WARRIOR ABILITIES ===

# Berserker: Strength when below 4 HP (level 5+)
execute as @a[scores={rpg.class=1,rpg.level=5..}] run function hardcore_rpg:abilities/warrior/berserker

# Double Strike: checked via advancement (passive)
# Lifesteal: checked via hurt_entity advancement (passive)
# Undying: checked on near-death (in tick)
execute as @a[scores={rpg.class=1,rpg.level=30..}] run function hardcore_rpg:abilities/warrior/undying

# === ARCHER ABILITIES ===

# Swift: permanent Speed effect (level 5+)
execute as @a[scores={rpg.class=2,rpg.level=5..}] run function hardcore_rpg:abilities/archer/swift

# Fire Arrows: tag arrows from archers (level 10+)
execute as @a[scores={rpg.class=2,rpg.level=10..}] at @s run function hardcore_rpg:abilities/archer/fire_arrows

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
