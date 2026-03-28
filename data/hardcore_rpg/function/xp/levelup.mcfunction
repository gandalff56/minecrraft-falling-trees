# Level up effects
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.1 30

tellraw @s [{"text":"\n"},{"text":"★ AWANS! ","color":"gold","bold":true},{"text":"Poziom ","color":"yellow","bold":false},{"score":{"name":"@s","objective":"rpg.level"},"color":"yellow"},{"text":"!","color":"yellow"}]

# If level 1 and no class, show class selection menu
execute if score @s rpg.level matches 1 if score @s rpg.class matches 0 run function hardcore_rpg:ui/class_menu

# Update health for HP milestones
execute if score @s rpg.class matches 1..4 run function hardcore_rpg:player/update_health

# Notify new abilities — WARRIOR
execute if score @s rpg.class matches 1 if score @s rpg.level matches 5 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Berserker odblokowany! ","color":"red"},{"text":"Siła I gdy poniżej 2 serc.","color":"gray"}]
execute if score @s rpg.class matches 1 if score @s rpg.level matches 8 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"War Cry odblokowany! ","color":"red"},{"text":"Użyj amuletu = AoE knockback + obrażenia!","color":"gray"}]
execute if score @s rpg.class matches 1 if score @s rpg.level matches 10 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Lifesteal odblokowany! ","color":"red"},{"text":"15% szans na leczenie przy trafieniu.","color":"gray"}]
execute if score @s rpg.class matches 1 if score @s rpg.level matches 15 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Double Strike odblokowany! ","color":"red"},{"text":"10% szans na podwójne obrażenia.","color":"gray"}]
execute if score @s rpg.class matches 1 if score @s rpg.level matches 20 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Ground Slam odblokowany! ","color":"red"},{"text":"Użyj amuletu = AoE obrażenia + spowolnienie!","color":"gray"}]
execute if score @s rpg.class matches 1 if score @s rpg.level matches 30 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Szał Berserkera odblokowany! ","color":"red"},{"text":"Przeżyj śmierć → Siła II + Szybkość II na 8s!","color":"gray"}]

# ARCHER
execute if score @s rpg.class matches 2 if score @s rpg.level matches 5 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Swift odblokowany! ","color":"green"},{"text":"Permanentna Szybkość I.","color":"gray"}]
execute if score @s rpg.class matches 2 if score @s rpg.level matches 8 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Arrow Rain odblokowany! ","color":"green"},{"text":"Użyj amuletu = deszcz strzał!","color":"gray"}]
execute if score @s rpg.class matches 2 if score @s rpg.level matches 10 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Fire Arrows odblokowane! ","color":"green"},{"text":"Strzały podpalają cele.","color":"gray"}]
execute if score @s rpg.class matches 2 if score @s rpg.level matches 15 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Dodge odblokowany! ","color":"green"},{"text":"15% szans na uniknięcie obrażeń.","color":"gray"}]
execute if score @s rpg.class matches 2 if score @s rpg.level matches 20 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Trap odblokowany! ","color":"green"},{"text":"Użyj amuletu = pułapka spowalniająca!","color":"gray"}]
execute if score @s rpg.class matches 2 if score @s rpg.level matches 30 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Phantom Arrow odblokowany! ","color":"green"},{"text":"Strzały przechodzą przez cele.","color":"gray"}]

# MAGE
execute if score @s rpg.class matches 3 if score @s rpg.level matches 5 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Fireball odblokowany! ","color":"aqua"},{"text":"Użyj różdżki aby rzucić kulę ognia.","color":"gray"}]
execute if score @s rpg.class matches 3 if score @s rpg.level matches 10 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Heal odblokowany! ","color":"aqua"},{"text":"Użyj różdżki aby się uleczyć.","color":"gray"}]
execute if score @s rpg.class matches 3 if score @s rpg.level matches 15 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Lightning odblokowany! ","color":"aqua"},{"text":"Użyj różdżki aby wezwać piorun.","color":"gray"}]
execute if score @s rpg.class matches 3 if score @s rpg.level matches 30 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Teleport odblokowany! ","color":"aqua"},{"text":"Użyj różdżki aby się teleportować.","color":"gray"}]

# TANK
execute if score @s rpg.class matches 4 if score @s rpg.level matches 5 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Fortress odblokowany! ","color":"dark_aqua"},{"text":"Odporność I gdy poniżej 50% HP.","color":"gray"}]
execute if score @s rpg.class matches 4 if score @s rpg.level matches 8 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Shield Bash odblokowany! ","color":"dark_aqua"},{"text":"Użyj amuletu = AoE knockback + spowolnienie!","color":"gray"}]
execute if score @s rpg.class matches 4 if score @s rpg.level matches 10 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Taunt odblokowany! ","color":"dark_aqua"},{"text":"Użyj amuletu = agresja mobów + Odporność!","color":"gray"}]
execute if score @s rpg.class matches 4 if score @s rpg.level matches 15 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Iron Skin odblokowany! ","color":"dark_aqua"},{"text":"Permanentna Odporność I.","color":"gray"}]
execute if score @s rpg.class matches 4 if score @s rpg.level matches 20 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Bulwark odblokowany! ","color":"dark_aqua"},{"text":"Użyj amuletu = 3s niezniszczalności!","color":"gray"}]
execute if score @s rpg.class matches 4 if score @s rpg.level matches 30 run tellraw @s [{"text":"  ★ ","color":"gold"},{"text":"Mury Obronne odblokowane! ","color":"dark_aqua"},{"text":"Przeżyj śmierć → Odporność V + Zakorzenienie!","color":"gray"}]

# Class reset unlock at L15
execute if score @s rpg.level matches 15 run tellraw @s ["",{"text":"  "},{"text":"[Reset Klasy]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger rpg.trigger set 10"},"hoverEvent":{"action":"show_text","contents":"Kliknij aby zresetować klasę (koszt: 50% XP)"}}]
