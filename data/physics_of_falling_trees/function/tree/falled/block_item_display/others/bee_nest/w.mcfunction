execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"0"}} run setblock ~ ~ ~ bee_nest[honey_level=0,facing=west] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"1"}} run setblock ~ ~ ~ bee_nest[honey_level=1,facing=west] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"2"}} run setblock ~ ~ ~ bee_nest[honey_level=2,facing=west] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"3"}} run setblock ~ ~ ~ bee_nest[honey_level=3,facing=west] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"4"}} run setblock ~ ~ ~ bee_nest[honey_level=4,facing=west] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"5"}} run setblock ~ ~ ~ bee_nest[honey_level=5,facing=west] destroy
data modify block ~ ~ ~ {} merge from storage midwut:main Data.TileEntityData
