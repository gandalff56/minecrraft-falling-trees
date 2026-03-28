function physics_of_falling_trees:tree/transform_blocks/block_state/natural
execute if block ~ ~ ~ minecraft:creaking_heart[creaking_heart_state="uprooted"] run return run data modify storage midwut:main Data.block_state.Properties.creaking_heart_state set value "uprooted"
execute if block ~ ~ ~ minecraft:creaking_heart[creaking_heart_state="dormant"] run return run data modify storage midwut:main Data.block_state.Properties.creaking_heart_state set value "dormant"
execute if block ~ ~ ~ minecraft:creaking_heart[creaking_heart_state="awake"] run return run data modify storage midwut:main Data.block_state.Properties.creaking_heart_state set value "awake"
