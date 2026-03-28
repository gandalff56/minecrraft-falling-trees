# Class selection dispatcher — called when rpg.trigger is set
# Only works if player has no class yet (rpg.class = 0)

execute as @s if score @s rpg.class matches 0 if score @s rpg.trigger matches 1 run function hardcore_rpg:class/warrior
execute as @s if score @s rpg.class matches 0 if score @s rpg.trigger matches 2 run function hardcore_rpg:class/archer
execute as @s if score @s rpg.class matches 0 if score @s rpg.trigger matches 3 run function hardcore_rpg:class/mage

# Reset trigger
scoreboard players set @s rpg.trigger 0
