
scoreboard players add @s poft.add_angle 150
scoreboard players operation #add_angle main_score = @s poft.add_angle
execute if score #add_angle main_score matches ..-1 run scoreboard players operation #add_angle main_score *= #-1 const
scoreboard players operation #add_angle main_score /= @s poft.count
scoreboard players operation @s poft.add_angle += #add_angle main_score

scoreboard players operation #add_angle main_score = @s poft.angle
scoreboard players operation #add_angle main_score /= #200 const
execute if score @s poft.add_angle matches ..3000 run scoreboard players operation @s poft.add_angle += #add_angle main_score

scoreboard players operation #add_angle main_score = @s poft.add_angle
scoreboard players operation #add_angle main_score *= @s poft.count_no_deform
execute store result storage midwut:main macros.damage int 0.00025 run scoreboard players operation #add_angle main_score /= #10 const
scoreboard players operation @s poft.angle += @s poft.add_angle
scoreboard players operation @s poft.angle < #180000 const
scoreboard players operation #poft.tree_angle main_score = @s poft.angle
scoreboard players operation #IN:angle math = @s poft.angle
scoreboard players operation #IN:angle math /= #2 const
function physics_of_falling_trees:math/cos
function physics_of_falling_trees:math/sin
execute if score @s poft.angle matches 180000.. unless entity @s[tag=poft.180] run function physics_of_falling_trees:tree/falling/180
execute unless score @s poft.angle matches 180000.. if entity @s[tag=poft.180] run tag @s remove poft.180


#execute if entity @s[tag=poft.180] run kill
execute unless loaded ~ ~ ~ run forceload add ~ ~
scoreboard players operation #id_test poft.id_block = @s poft.id_block
scoreboard players set #falled main_score 0
scoreboard players set #l main_score 0
execute store result score #test main_score if entity @e[type=#physics_of_falling_trees:tree_displays,limit=6,tag=!poft.main_block,tag=poft.block,tag=poft.leaves_falled,predicate=physics_of_falling_trees:same_ids]
execute if predicate physics_of_falling_trees:leaves if score #test main_score matches 6 run scoreboard players set #l main_score 1
execute if entity @s[tag=poft.south] run function physics_of_falling_trees:tree/falling/z/south/main
execute if entity @s[tag=poft.west] run function physics_of_falling_trees:tree/falling/x/west/main
execute if entity @s[tag=poft.north] run function physics_of_falling_trees:tree/falling/z/north/main
execute if entity @s[tag=poft.east] run function physics_of_falling_trees:tree/falling/x/east/main

tag @s remove poft.test_falled
scoreboard players add @s poft.timer 1
#execute if score #poft.tree_angle main_score matches 180000 run scoreboard players set #falled main_score 1
execute if score @s poft.timer matches 1200.. run scoreboard players set #falled main_score 1
execute if score @s poft.timer matches 11 positioned as @s run playsound minecraft:block.stem.hit ambient @a[distance=..48] ~ ~ ~ 3 0
execute if score #falled main_score matches 1 run function physics_of_falling_trees:tree/falling/falled


