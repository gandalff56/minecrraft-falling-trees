# Scale mobs based on nearest player's level
# Called every 40 ticks from tick.mcfunction
# Tag scaled mobs to avoid re-processing

# Run per player, scale unscaled hostiles near them
execute as @a[scores={rpg.level=5..}] at @s as @e[type=#hardcore_rpg:hostile_mobs,tag=!hrpg.scaled,distance=..48] at @s run function hardcore_rpg:mobs/apply_scale
