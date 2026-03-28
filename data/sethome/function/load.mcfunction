# Load — register scoreboards and trigger objectives
scoreboard objectives add home.trigger trigger
scoreboard objectives add home.set trigger
scoreboard objectives add home.x dummy
scoreboard objectives add home.y dummy
scoreboard objectives add home.z dummy
scoreboard objectives add home.has_home dummy
scoreboard objectives add home.dim dummy

tellraw @a {"text":"[Home] Zaladowano! /trigger home.set = zapisz, /trigger home.trigger = teleportuj","color":"green"}
