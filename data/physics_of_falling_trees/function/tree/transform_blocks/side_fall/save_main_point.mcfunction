tag @s add poft.main_block
tag @s add poft.logs_block
playsound minecraft:block.stem.hit ambient @a[distance=..48] ~ ~ ~ 3 0
playsound minecraft:block.stem.hit ambient @a[distance=..48] ~ ~ ~ 3 0
scoreboard players operation #x_ main_score = @s poft.offset_x
scoreboard players operation #z_ main_score = @s poft.offset_z

scoreboard players operation #x2 main_score += #x_ main_score
scoreboard players operation #z2 main_score += #z_ main_score

scoreboard players operation @s poft.main_x = #x2 main_score
scoreboard players operation @s poft.main_y = #y2 main_score
scoreboard players operation @s poft.main_z = #z2 main_score

scoreboard players operation @s poft.count_no_deform = #c main_score
scoreboard players operation @s poft.count_no_deform *= #10 const
scoreboard players operation @s poft.count_no_deform /= #6 const

scoreboard players operation @s poft.count = #c main_score
scoreboard players operation @s poft.count *= #10 const

execute unless score #y main_score matches 1..2 run function physics_of_falling_trees:tree/transform_blocks/offet_nth_est/z_

scoreboard players set @s poft.offset_x 0
scoreboard players set @s poft.offset_z 0

tag @s remove poft.summoned
#data modify storage midwut:main 1 set from entity @s Tags

