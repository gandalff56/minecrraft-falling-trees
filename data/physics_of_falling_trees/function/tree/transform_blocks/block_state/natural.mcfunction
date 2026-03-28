execute if block ~ ~ ~ minecraft:creaking_heart[natural=true] run return run data modify storage midwut:main Data.block_state.Properties.natural set value "true"
execute if block ~ ~ ~ minecraft:creaking_heart[natural=false] run return run data modify storage midwut:main Data.block_state.Properties.natural set value "false"
