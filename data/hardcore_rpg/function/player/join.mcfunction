# First join - initialize player
scoreboard players set @s rpg.level 0
scoreboard players set @s rpg.xp 0
scoreboard players set @s rpg.xp_needed 100
scoreboard players set @s rpg.class 0
scoreboard players set @s rpg.kills 0
scoreboard players set @s rpg.deaths 0
scoreboard players set @s rpg.max_hp 6
scoreboard players set @s rpg.ability_slot 0
scoreboard players set @s rpg.cd_heal 0
scoreboard players set @s rpg.cd_undying 0
scoreboard players set @s rpg.cd_fireball 0
scoreboard players set @s rpg.cd_lightning 0
scoreboard players set @s rpg.cd_teleport 0

# Set 3 hearts
attribute @s minecraft:max_health base set 6
effect give @s minecraft:instant_health 1 10 true

# Welcome message
tellraw @s ["",{"text":"\n"},{"text":"═══ HARDCORE RPG ═══","color":"gold","bold":true},{"text":"\n"},{"text":"Zaczynasz z ","color":"gray"},{"text":"3 sercami","color":"red"},{"text":"!","color":"gray"},{"text":"\n"},{"text":"Zabijaj potwory aby zdobywać XP i awansować.","color":"gray"},{"text":"\n"},{"text":"Na poziomie 1 wybierz klasę:","color":"gray"},{"text":"\n"},{"text":"  Warrior","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Archer","color":"green"},{"text":" | ","color":"dark_gray"},{"text":"Mage","color":"aqua"},{"text":" | ","color":"dark_gray"},{"text":"Tank","color":"dark_aqua"},{"text":"\n"}]

# Give guide book
give @s minecraft:written_book[written_book_content={title:"Przewodnik RPG",author:"Hardcore RPG",pages:['[{"text":"═══ HARDCORE RPG ═══\\n\\n","color":"gold","bold":true},{"text":"Witaj w Hardcore RPG!\\n\\n","color":"dark_purple","bold":false},{"text":"Zaczynasz z 3 sercami. Zabijaj potwory, zdobywaj XP i wybierz klasę na poziomie 1.\\n\\n","color":"black"},{"text":"Użyj Amuletu (klik prawym) aby aktywować umiejętności. Wciśnij Q aby przełączyć spell.","color":"dark_green"}]','[{"text":"═══ KLASY ═══\\n\\n","color":"gold","bold":true},{"text":"⚔ Warrior","color":"red","bold":true},{"text":" - DPS & Melee\\nDużo HP, silne ataki, Szał Berserkera\\n\\n","color":"black","bold":false},{"text":"🏹 Archer","color":"green","bold":true},{"text":" - Szybkość & Zasięg\\nDeszcz Strzał, Pułapki, Unik\\n\\n","color":"black","bold":false},{"text":"✦ Mage","color":"aqua","bold":true},{"text":" - Zaklęcia\\nFireball, Heal, Lightning, Teleport\\n\\n","color":"black","bold":false},{"text":"⛊ Tank","color":"dark_aqua","bold":true},{"text":" - Tarcza & Wytrzymałość\\nJedyna klasa z tarczą! 50% mniej obrażeń.","color":"black","bold":false}]','[{"text":"═══ SYSTEM XP ═══\\n\\n","color":"gold","bold":true},{"text":"Zombie: 10 XP\\nSkeleton: 15 XP\\nCreeper: 12 XP\\nEnderman: 20 XP\\nWitch: 35 XP\\nWither: 300 XP\\nDragon: 500 XP\\n\\n","color":"black"},{"text":"Śmierć = -20% XP\\n","color":"red"},{"text":"Max 8 zabójstw/min (anti-farm)\\nMoby muszą żyć 8s aby dać XP","color":"dark_gray"}]','[{"text":"═══ CRAFTING ═══\\n\\n","color":"gold","bold":true},{"text":"Żelazo: ","color":"black"},{"text":"Poziom 5+\\n","color":"dark_green"},{"text":"Złoto: ","color":"black"},{"text":"Poziom 10+\\n","color":"gold"},{"text":"Diament: ","color":"black"},{"text":"Poziom 15+\\n","color":"aqua"},{"text":"Netherite: ","color":"black"},{"text":"Poziom 25+\\n\\n","color":"dark_red"},{"text":"Tarcza: ","color":"black"},{"text":"Tylko Tank!\\n\\n","color":"dark_aqua"},{"text":"Na poziomie 15+ możesz zresetować klasę:\\n","color":"dark_gray"},{"text":"/trigger rpg.trigger set 10\\n","color":"dark_red"},{"text":"(koszt: 50% XP)","color":"dark_gray"}]','[{"text":"═══ BOSSY ═══\\n\\n","color":"gold","bold":true},{"text":"Elite (8%): ","color":"red"},{"text":"XP x1.5\\n","color":"black"},{"text":"Mini-Boss (2%): ","color":"dark_red"},{"text":"XP x5 + unikalne looty!\\n\\n","color":"black"},{"text":"👑 Zombie King\\n","color":"dark_red"},{"text":"  → Korona Zombie Króla\\n","color":"gold"},{"text":"💀 Skeleton Sniper\\n","color":"dark_purple"},{"text":"  → Łuk Snajpera\\n","color":"gold"},{"text":"💣 Creeper Lord\\n","color":"dark_green"},{"text":"  → Rdzeń Creepera\\n\\n","color":"gold"},{"text":"Blood Moon co 3-5 nocy!","color":"red"}]','[{"text":"═══ ENDGAME ═══\\n\\n","color":"gold","bold":true},{"text":"Smok Apokalipsy\\n\\n","color":"dark_red","bold":true},{"text":"Wymagania:\\n","color":"black","bold":false},{"text":"• 2+ graczy na poziomie 30\\n• Zbroja z netherite\\n• Wejdź do Endu\\n\\n","color":"black"},{"text":"Smok ma 2000 HP i 4 fazy!\\n","color":"red"},{"text":"Współpracujcie aby wygrać.\\n\\n","color":"dark_green"},{"text":"Nagroda: Smocze Serce + tytuł Pogromca Smoków","color":"gold"}]']}] 1

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5
