# Called as the TARGET player — notify them of incoming TPA request
# #tpa.requester has the requester's ID

scoreboard players operation @s tpa.from = #tpa.requester tpa.id
scoreboard players set @s tpa.timeout 1200

tellraw @s [{"text":"[TPA] ","color":"green"},{"text":"Gracz chce sie do ciebie teleportowac!","color":"yellow"}]
tellraw @s [{"text":"  Wpisz: ","color":"gray"},{"text":"/trigger tpa.accept","color":"green","bold":true},{"text":" aby zaakceptowac (60s)","color":"gray","bold":false}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
