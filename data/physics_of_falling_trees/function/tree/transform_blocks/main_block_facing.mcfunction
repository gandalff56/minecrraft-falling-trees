
execute facing entity @p[distance=..16] feet run tp @s ~ ~ ~ ~ 0
execute store result score #y main_score run data get entity @s Rotation[0]
execute if score #y main_score matches ..-1 run scoreboard players add #y main_score 360
scoreboard players add #y main_score 45
scoreboard players operation #y main_score /= #90 const
tp @s ~ ~ ~ 0.0 0.0

