tp @s[type=block_display] ~0.999 ~ ~0.999
data modify entity @s[type=block_display] transformation.right_rotation set value [0.0f,1.0f,0.0f,0.0f]
scoreboard players remove @s[type=item_display] poft.offset_x 1000
scoreboard players remove @s[type=item_display] poft.offset_z 1000
data modify storage midwut:main Data set from entity @s block_state.Properties
execute if data storage midwut:main Data{facing:"north"} run data modify entity @s block_state.Properties.facing set value "south"
execute if data storage midwut:main Data{facing:"south"} run data modify entity @s block_state.Properties.facing set value "north"
execute if data storage midwut:main Data{facing:"east"} run data modify entity @s block_state.Properties.facing set value "west"
execute if data storage midwut:main Data{facing:"west"} run data modify entity @s block_state.Properties.facing set value "east"

