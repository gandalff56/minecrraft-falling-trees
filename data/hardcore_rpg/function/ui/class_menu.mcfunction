tellraw @s ["",{"text":"═══════════════════════════════","color":"gold"}]
tellraw @s ["",{"text":"     ⚔ CHOOSE YOUR CLASS ⚔","color":"yellow","bold":true}]
tellraw @s ["",{"text":"═══════════════════════════════","color":"gold"}]
tellraw @s ""
tellraw @s ["",{"text":" [⚔ WARRIOR] ","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger rpg.trigger set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Tank class\n+2 HP per milestone\nMax 20 HP\nAbilities: Berserker, Lifesteal, Double Strike, Undying","color":"red"}}},{"text":"— Tank & Melee","color":"gray"}]
tellraw @s ""
tellraw @s ["",{"text":" [🏹 ARCHER] ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger rpg.trigger set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"Speed class\n+1 HP per milestone\nMax 13 HP\nAbilities: Swift, Fire Arrows, Dodge, Phantom Arrow","color":"green"}}},{"text":"— Speed & Range","color":"gray"}]
tellraw @s ""
tellraw @s ["",{"text":" [✦ MAGE]    ","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger rpg.trigger set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic class\n+1 HP per milestone\nMax 13 HP\nAbilities: Fireball, Heal, Lightning, Teleport","color":"aqua"}}},{"text":"— Spells & Utility","color":"gray"}]
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"gold"}]
tellraw @s ["",{"text":"  Click to choose (permanent!)","color":"gray","italic":true}]
