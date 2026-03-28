# Prevent dropping wand — detect dropped wand items and return them
# Called every tick for all classed players

# Find and kill any dropped wand items within 5 blocks of any player
execute at @s as @e[type=item,distance=..5,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{rpg_wand:1b}}}}] run kill @s

# Check if player no longer has wand in inventory — means they dropped it
execute unless items entity @s container.* minecraft:carrot_on_a_stick[custom_data~{rpg_wand:1b}] unless items entity @s weapon minecraft:carrot_on_a_stick[custom_data~{rpg_wand:1b}] unless items entity @s weapon.offhand minecraft:carrot_on_a_stick[custom_data~{rpg_wand:1b}] run function hardcore_rpg:wand/give
execute unless items entity @s container.* minecraft:carrot_on_a_stick[custom_data~{rpg_wand:1b}] unless items entity @s weapon minecraft:carrot_on_a_stick[custom_data~{rpg_wand:1b}] unless items entity @s weapon.offhand minecraft:carrot_on_a_stick[custom_data~{rpg_wand:1b}] run function hardcore_rpg:wand/cycle
