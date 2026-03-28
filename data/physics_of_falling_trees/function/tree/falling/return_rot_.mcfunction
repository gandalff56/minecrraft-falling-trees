#scoreboard players set #test main_score 0
#execute if score @s poft.angle matches 90001.. run scoreboard players set #test main_score 1
#scoreboard players operation @s poft.angle -= @s poft.add_angle

scoreboard players operation #test main_score = @s poft.add_angle
scoreboard players operation #test main_score /= #2 const
scoreboard players operation @s poft.angle -= #test main_score

scoreboard players operation @s poft.add_angle *= #6 const
scoreboard players operation @s poft.add_angle /= #-10 const
#scoreboard players operation @s poft.add_angle *= #-1 const

