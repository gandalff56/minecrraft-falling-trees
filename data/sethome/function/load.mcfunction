# Load — register scoreboards and trigger objectives
scoreboard objectives add home.trigger trigger
scoreboard objectives add home.set trigger
scoreboard objectives add home.x dummy
scoreboard objectives add home.y dummy
scoreboard objectives add home.z dummy
scoreboard objectives add home.has_home dummy
scoreboard objectives add home.dim dummy

# TPA system
scoreboard objectives add tpa.request trigger
scoreboard objectives add tpa.accept trigger
scoreboard objectives add tpa.id dummy
scoreboard objectives add tpa.from dummy
scoreboard objectives add tpa.timeout dummy
scoreboard objectives add tpa.cooldown dummy
scoreboard players add #tpa.next_id tpa.id 0

tellraw @a {"text":"[Home/TPA] Zaladowano!","color":"green"}
