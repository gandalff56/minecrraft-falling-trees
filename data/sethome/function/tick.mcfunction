# Tick — enable triggers and detect usage
execute as @a run scoreboard players enable @s home.trigger
execute as @a run scoreboard players enable @s home.set
execute as @a run scoreboard players enable @s tpa.request
execute as @a run scoreboard players enable @s tpa.accept

# Detect /trigger home.set (sethome)
execute as @a[scores={home.set=1..}] at @s run function sethome:set
execute as @a[scores={home.set=1..}] run scoreboard players set @s home.set 0

# Detect /trigger home.trigger (home)
execute as @a[scores={home.trigger=1..}] run function sethome:home
execute as @a[scores={home.trigger=1..}] run scoreboard players set @s home.trigger 0

# Assign TPA IDs to new players
execute as @a unless score @s tpa.id matches 1.. run function sethome:tpa/assign_id

# Detect TPA request (0 = list, 1+ = request to that ID)
execute as @a[scores={tpa.request=0}] run function sethome:tpa/list
execute as @a[scores={tpa.request=0}] run scoreboard players set @s tpa.request -1
execute as @a[scores={tpa.request=1..}] run function sethome:tpa/request
execute as @a[scores={tpa.request=1..}] run scoreboard players set @s tpa.request -1

# Detect TPA accept
execute as @a[scores={tpa.accept=1..}] run function sethome:tpa/accept
execute as @a[scores={tpa.accept=1..}] run scoreboard players set @s tpa.accept 0

# TPA timeout (60 seconds = 1200 ticks)
execute as @a[scores={tpa.timeout=1..}] run scoreboard players remove @s tpa.timeout 1
execute as @a[scores={tpa.from=1..,tpa.timeout=0}] run tellraw @s [{"text":"[TPA] ","color":"red"},{"text":"Prosba o teleport wygasla.","color":"gray"}]
execute as @a[scores={tpa.from=1..,tpa.timeout=0}] run scoreboard players set @s tpa.from 0

# TPA cooldown countdown
execute as @a[scores={tpa.cooldown=1..}] run scoreboard players remove @s tpa.cooldown 1
