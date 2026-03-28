summon item ~ ~ ~ {Tags:["get_id"],PickupDelay:40s,Item:{id:"minecraft:oak_log",count:1}}
execute as @e[type=item,tag=get_id,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/falled/drop_data
