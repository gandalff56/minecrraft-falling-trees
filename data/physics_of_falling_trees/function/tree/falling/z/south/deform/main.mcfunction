execute unless entity @s[tag=poft.leaves_falled] run function physics_of_falling_trees:tree/transform_blocks/block_r_yz



function physics_of_falling_trees:tree/falling/leaves/end_pos_z

data modify storage midwut:main Data.Pos set from entity @s Pos
execute store result score IN:arctg2.Y math run data get storage midwut:main Data.Pos[1] 1000
execute store result score IN:arctg2.X math run data get storage midwut:main Data.Pos[2] 1000

scoreboard players operation IN:arctg2.Y math -= #y_ main_score
scoreboard players operation IN:arctg2.X math -= #z_ main_score
function physics_of_falling_trees:math/arctg2

scoreboard players add #OUT:arctg2 math 90000
scoreboard players operation #OUT:arctg2 math -= #poft.tree_angle main_score
scoreboard players operation #OUT:arctg2 math *= #-1 const

execute if score #OUT:arctg2 math matches ..-1 run scoreboard players add #OUT:arctg2 math 360000

scoreboard players operation #IN:angle math = #OUT:arctg2 math
function physics_of_falling_trees:math/sin
function physics_of_falling_trees:math/cos


scoreboard players operation @s poft.offset_z = #OUT:sin math
scoreboard players operation @s poft.offset_y = #OUT:cos math

scoreboard players operation @s poft.offset_y *= @s poft.r_block
scoreboard players operation @s poft.offset_z *= @s poft.r_block
scoreboard players operation @s poft.offset_y /= #10000 const
scoreboard players operation @s poft.offset_z /= #-10000 const


scoreboard players operation #test main_score = @s poft.offset_x
scoreboard players operation #test main_score *= #103 const
scoreboard players operation #test main_score /= #100 const
scoreboard players operation #test main_score -= @s poft.offset_x
execute if score #test main_score matches 1.. run scoreboard players operation #test main_score < #500 const
execute if score #test main_score matches ..-1 run scoreboard players operation #test main_score > #-500 const
scoreboard players operation @s poft.offset_x += #test main_score


execute positioned as @s store result score #test main_score if entity @e[type=#physics_of_falling_trees:tree_displays,tag=!poft.ignor_offset,tag=poft.block,limit=6,distance=0.0001..1.5,predicate=physics_of_falling_trees:same_ids]
execute if score #test main_score matches ..2 run tag @s add poft.ignor_offset


