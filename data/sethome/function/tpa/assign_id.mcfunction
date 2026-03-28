# Assign unique ID to new player
scoreboard players add #tpa.next_id tpa.id 1
scoreboard players operation @s tpa.id = #tpa.next_id tpa.id
scoreboard players set @s tpa.from 0
scoreboard players set @s tpa.timeout 0
tellraw @s [{"text":"[TPA] ","color":"green"},{"text":"Twoje ID: ","color":"gray"},{"score":{"name":"@s","objective":"tpa.id"},"color":"yellow","bold":true},{"text":" | /trigger tpa.request set 0 = lista graczy","color":"gray"}]
