tellraw @s {"text":"════════════════════════════","color":"gold"}
tellraw @s {"text":"     WYBIERZ KLASE","color":"yellow","bold":true}
tellraw @s {"text":"════════════════════════════","color":"gold"}
tellraw @s ""
tellraw @s [{"text":" >>> WARRIOR ","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger rpg.trigger set 1"}},{"text":"- DPS i Walka Wrecz","color":"gray","bold":false}]
tellraw @s ""
tellraw @s [{"text":" >>> ARCHER  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger rpg.trigger set 2"}},{"text":"- Szybkosc i Zasieg","color":"gray","bold":false}]
tellraw @s ""
tellraw @s [{"text":" >>> MAGE    ","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger rpg.trigger set 3"}},{"text":"- Zaklecia","color":"gray","bold":false}]
tellraw @s ""
tellraw @s [{"text":" >>> TANK    ","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger rpg.trigger set 4"}},{"text":"- Tarcza i Wytrzymalosc","color":"gray","bold":false}]
tellraw @s ""
tellraw @s {"text":"════════════════════════════","color":"gold"}
tellraw @s [{"text":"  Kliknij klase lub wpisz: ","color":"gray","italic":true},{"text":"/trigger rpg.trigger set <1-4>","color":"yellow","italic":false}]
