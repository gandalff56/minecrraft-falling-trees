# Save current position as home
execute store result score @s home.x run data get entity @s Pos[0] 1
execute store result score @s home.y run data get entity @s Pos[1] 1
execute store result score @s home.z run data get entity @s Pos[2] 1

# Save dimension (0=overworld, 1=nether, 2=end)
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s home.dim 0
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s home.dim 1
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s home.dim 2

scoreboard players set @s home.has_home 1

tellraw @s [{"text":"[Home] ","color":"green"},{"text":"Zapisano dom!","color":"white"}]
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
