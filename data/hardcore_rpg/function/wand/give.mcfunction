# Give class-appropriate ability wand
# Called on class selection and when wand is dropped (to return it)

# First clear any existing wands
clear @s minecraft:carrot_on_a_stick[custom_data~{rpg_wand:1b}]

# Warrior wand
execute if score @s rpg.class matches 1 run give @s minecraft:carrot_on_a_stick[custom_name={"text":"Bojowy Amulet","color":"red","italic":false},custom_data={rpg_wand:1b,rpg_class:1}] 1

# Archer wand
execute if score @s rpg.class matches 2 run give @s minecraft:carrot_on_a_stick[custom_name={"text":"Amulet Strzelca","color":"green","italic":false},custom_data={rpg_wand:1b,rpg_class:2}] 1

# Mage wand
execute if score @s rpg.class matches 3 run give @s minecraft:carrot_on_a_stick[custom_name={"text":"Magiczna Rozdzka","color":"aqua","italic":false},custom_data={rpg_wand:1b,rpg_class:3}] 1

# Tank wand
execute if score @s rpg.class matches 4 run give @s minecraft:carrot_on_a_stick[custom_name={"text":"Amulet Obroncy","color":"dark_aqua","italic":false},custom_data={rpg_wand:1b,rpg_class:4}] 1
