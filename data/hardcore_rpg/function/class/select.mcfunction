# Class selection dispatcher — called when rpg.trigger is set
# Class selection (trigger 1-4) only works if no class yet
# Class reset (trigger 10) works if already classed

execute as @s if score @s rpg.class matches 0 if score @s rpg.trigger matches 1 run function hardcore_rpg:class/warrior
execute as @s if score @s rpg.class matches 0 if score @s rpg.trigger matches 2 run function hardcore_rpg:class/archer
execute as @s if score @s rpg.class matches 0 if score @s rpg.trigger matches 3 run function hardcore_rpg:class/mage
execute as @s if score @s rpg.class matches 0 if score @s rpg.trigger matches 4 run function hardcore_rpg:class/tank

# Class reset (trigger 10, requires L15+)
execute as @s if score @s rpg.class matches 1..4 if score @s rpg.trigger matches 10 run function hardcore_rpg:class/reset

# Reset trigger
scoreboard players set @s rpg.trigger 0
