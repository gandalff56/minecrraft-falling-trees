# Tick — enable triggers and detect usage
execute as @a run scoreboard players enable @s home.trigger
execute as @a run scoreboard players enable @s home.set

# Detect /trigger home.set (sethome)
execute as @a[scores={home.set=1..}] at @s run function sethome:set
execute as @a[scores={home.set=1..}] run scoreboard players set @s home.set 0

# Detect /trigger home.trigger (home)
execute as @a[scores={home.trigger=1..}] run function sethome:home
execute as @a[scores={home.trigger=1..}] run scoreboard players set @s home.trigger 0
