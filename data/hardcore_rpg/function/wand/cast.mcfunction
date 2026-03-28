# Cast ability based on class + ability_slot
# Called when rpg.wand_use >= 1

# Reset wand use counter
scoreboard players set @s rpg.wand_use 0

# === WARRIOR (class 1) ===
# Slot 0: War Cry (L8+)
execute if score @s rpg.class matches 1 if score @s rpg.ability_slot matches 0 if score @s rpg.level matches 8.. at @s run function hardcore_rpg:abilities/warrior/war_cry
execute if score @s rpg.class matches 1 if score @s rpg.ability_slot matches 0 if score @s rpg.level matches ..7 run tellraw @s {"text":"Wymagany poziom 8!","color":"red"}

# Slot 1: Ground Slam (L20+)
execute if score @s rpg.class matches 1 if score @s rpg.ability_slot matches 1 if score @s rpg.level matches 20.. at @s run function hardcore_rpg:abilities/warrior/ground_slam
execute if score @s rpg.class matches 1 if score @s rpg.ability_slot matches 1 if score @s rpg.level matches ..19 run tellraw @s {"text":"Wymagany poziom 20!","color":"red"}

# === ARCHER (class 2) ===
# Slot 0: Arrow Rain (L8+)
execute if score @s rpg.class matches 2 if score @s rpg.ability_slot matches 0 if score @s rpg.level matches 8.. at @s run function hardcore_rpg:abilities/archer/arrow_rain
execute if score @s rpg.class matches 2 if score @s rpg.ability_slot matches 0 if score @s rpg.level matches ..7 run tellraw @s {"text":"Wymagany poziom 8!","color":"red"}

# Slot 1: Trap (L20+)
execute if score @s rpg.class matches 2 if score @s rpg.ability_slot matches 1 if score @s rpg.level matches 20.. at @s run function hardcore_rpg:abilities/archer/trap
execute if score @s rpg.class matches 2 if score @s rpg.ability_slot matches 1 if score @s rpg.level matches ..19 run tellraw @s {"text":"Wymagany poziom 20!","color":"red"}

# === MAGE (class 3) ===
# Slot 0: Fireball (L5+)
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 0 if score @s rpg.level matches 5.. at @s run function hardcore_rpg:abilities/mage/fireball
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 0 if score @s rpg.level matches ..4 run tellraw @s {"text":"Wymagany poziom 5!","color":"red"}

# Slot 1: Heal (L10+)
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 1 if score @s rpg.level matches 10.. at @s run function hardcore_rpg:abilities/mage/heal
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 1 if score @s rpg.level matches ..9 run tellraw @s {"text":"Wymagany poziom 10!","color":"red"}

# Slot 2: Lightning (L15+)
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 2 if score @s rpg.level matches 15.. at @s run function hardcore_rpg:abilities/mage/lightning
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 2 if score @s rpg.level matches ..14 run tellraw @s {"text":"Wymagany poziom 15!","color":"red"}

# Slot 3: Teleport (L30)
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 3 if score @s rpg.level matches 30.. at @s run function hardcore_rpg:abilities/mage/teleport
execute if score @s rpg.class matches 3 if score @s rpg.ability_slot matches 3 if score @s rpg.level matches ..29 run tellraw @s {"text":"Wymagany poziom 30!","color":"red"}

# === TANK (class 4) ===
# Slot 0: Shield Bash (L8+)
execute if score @s rpg.class matches 4 if score @s rpg.ability_slot matches 0 if score @s rpg.level matches 8.. at @s run function hardcore_rpg:abilities/tank/shield_bash
execute if score @s rpg.class matches 4 if score @s rpg.ability_slot matches 0 if score @s rpg.level matches ..7 run tellraw @s {"text":"Wymagany poziom 8!","color":"red"}

# Slot 1: Taunt (L10+)
execute if score @s rpg.class matches 4 if score @s rpg.ability_slot matches 1 if score @s rpg.level matches 10.. at @s run function hardcore_rpg:abilities/tank/taunt
execute if score @s rpg.class matches 4 if score @s rpg.ability_slot matches 1 if score @s rpg.level matches ..9 run tellraw @s {"text":"Wymagany poziom 10!","color":"red"}

# Slot 2: Bulwark (L20+)
execute if score @s rpg.class matches 4 if score @s rpg.ability_slot matches 2 if score @s rpg.level matches 20.. at @s run function hardcore_rpg:abilities/tank/bulwark
execute if score @s rpg.class matches 4 if score @s rpg.ability_slot matches 2 if score @s rpg.level matches ..19 run tellraw @s {"text":"Wymagany poziom 20!","color":"red"}
