scoreboard players operation #x_ main_score = @s poft.offset_x
scoreboard players operation #z_ main_score = @s poft.offset_z
scoreboard players operation #x_ main_score -= #x2 main_score
scoreboard players operation #z_ main_score -= #z2 main_score
#scoreboard players operation #z_ main_score *= #-1 const
#scoreboard players operation #x_ main_score = @s poft.offset_x
#scoreboard players operation #z_ main_score = @s poft.offset_z

scoreboard players operation #x2 main_score += #x_ main_score
scoreboard players operation #z2 main_score += #z_ main_score
