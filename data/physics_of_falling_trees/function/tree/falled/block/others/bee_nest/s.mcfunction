execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"0"}} run setblock ~ ~ ~ bee_nest[honey_level=0,facing=south] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"1"}} run setblock ~ ~ ~ bee_nest[honey_level=1,facing=south] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"2"}} run setblock ~ ~ ~ bee_nest[honey_level=2,facing=south] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"3"}} run setblock ~ ~ ~ bee_nest[honey_level=3,facing=south] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"4"}} run setblock ~ ~ ~ bee_nest[honey_level=4,facing=south] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest",Properties:{honey_level:"5"}} run setblock ~ ~ ~ bee_nest[honey_level=5,facing=south] destroy
data modify block ~ ~ ~ {} merge from storage midwut:main Data.TileEntityData
