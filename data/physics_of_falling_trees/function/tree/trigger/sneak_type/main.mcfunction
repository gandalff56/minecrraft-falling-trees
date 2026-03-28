execute if score @s pfts.sneak_type matches 0.. run function physics_of_falling_trees:tree/trigger/sneak_type/set
scoreboard players enable @s pfts.sneak_type
scoreboard players set @s pfts.sneak_type -2147483648
advancement revoke @s only physics_of_falling_trees:sneak_type