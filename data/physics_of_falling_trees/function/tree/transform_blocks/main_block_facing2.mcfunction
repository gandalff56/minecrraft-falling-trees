
execute if score #z main_score matches 1.. if score #z_ main_score >= #x_ main_score run scoreboard players set #y main_score 0
execute if score #z main_score matches ..-1 if score #z_ main_score >= #x_ main_score run scoreboard players set #y main_score 2
execute if score #x main_score matches 1.. if score #x_ main_score > #z_ main_score run scoreboard players set #y main_score 3
execute if score #x main_score matches ..-1 if score #x_ main_score > #z_ main_score run scoreboard players set #y main_score 1
