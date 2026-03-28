# Level up effects
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.1 30

tellraw @s [{"text":"\n"},{"text":"★ LEVEL UP! ","color":"gold","bold":true},{"text":"Level ","color":"yellow","bold":false},{"score":{"name":"@s","objective":"rpg.level"},"color":"yellow"},{"text":"!","color":"yellow"}]

# If level 1 and no class, show class selection menu
execute if score @s rpg.level matches 1 if score @s rpg.class matches 0 run function hardcore_rpg:ui/class_menu

# Update health for HP milestones
execute if score @s rpg.class matches 1..3 run function hardcore_rpg:player/update_health

# Notify new abilities
execute if score @s rpg.class matches 1 if score @s rpg.level matches 5 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Berserker unlocked! ","color":"red"},{"text":"Strength I when below 2 hearts.","color":"gray"}]
execute if score @s rpg.class matches 1 if score @s rpg.level matches 8 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"War Cry unlocked! ","color":"red"},{"text":"Kucnij + miecz = AoE knockback + obrażenia!","color":"gray"}]
execute if score @s rpg.class matches 1 if score @s rpg.level matches 10 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Lifesteal unlocked! ","color":"red"},{"text":"15% chance to heal on melee hit.","color":"gray"}]
execute if score @s rpg.class matches 1 if score @s rpg.level matches 15 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Double Strike unlocked! ","color":"red"},{"text":"10% chance for double damage.","color":"gray"}]
execute if score @s rpg.class matches 1 if score @s rpg.level matches 20 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Ground Slam unlocked! ","color":"red"},{"text":"Kucnij + topór = AoE damage + spowolnienie!","color":"gray"}]
execute if score @s rpg.class matches 1 if score @s rpg.level matches 30 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Undying unlocked! ","color":"red"},{"text":"Survive lethal hit once per 5 min.","color":"gray"}]

execute if score @s rpg.class matches 2 if score @s rpg.level matches 5 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Swift unlocked! ","color":"green"},{"text":"Permanent Speed I.","color":"gray"}]
execute if score @s rpg.class matches 2 if score @s rpg.level matches 8 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Arrow Rain unlocked! ","color":"green"},{"text":"Kucnij + łuk = deszcz strzał!","color":"gray"}]
execute if score @s rpg.class matches 2 if score @s rpg.level matches 10 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Fire Arrows unlocked! ","color":"green"},{"text":"Arrows ignite targets.","color":"gray"}]
execute if score @s rpg.class matches 2 if score @s rpg.level matches 15 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Dodge unlocked! ","color":"green"},{"text":"15% chance to negate damage.","color":"gray"}]
execute if score @s rpg.class matches 2 if score @s rpg.level matches 20 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Trap unlocked! ","color":"green"},{"text":"Kucnij + sznurek = pułapka spowalniająca!","color":"gray"}]
execute if score @s rpg.class matches 2 if score @s rpg.level matches 30 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Phantom Arrow unlocked! ","color":"green"},{"text":"Arrows pierce through entities.","color":"gray"}]

execute if score @s rpg.class matches 3 if score @s rpg.level matches 5 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Fireball unlocked! ","color":"blue"},{"text":"Sneak + use blaze rod to cast.","color":"gray"}]
execute if score @s rpg.class matches 3 if score @s rpg.level matches 10 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Heal unlocked! ","color":"blue"},{"text":"Sneak + use golden apple to heal.","color":"gray"}]
execute if score @s rpg.class matches 3 if score @s rpg.level matches 15 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Lightning unlocked! ","color":"blue"},{"text":"Sneak + use trident for lightning.","color":"gray"}]
execute if score @s rpg.class matches 3 if score @s rpg.level matches 30 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Teleport unlocked! ","color":"blue"},{"text":"Sneak + use ender pearl to blink.","color":"gray"}]
