scoreboard objectives add main_score dummy
scoreboard objectives add const dummy
scoreboard objectives add math dummy
scoreboard objectives add poft.id_block dummy
scoreboard objectives add poft.count dummy
scoreboard objectives add poft.count_no_deform dummy
scoreboard objectives add poft.add_angle dummy
scoreboard objectives add poft.angle dummy
scoreboard objectives add poft.r_block dummy
scoreboard objectives add poft.offset_x dummy
scoreboard objectives add poft.offset_y dummy
scoreboard objectives add poft.offset_z dummy
scoreboard objectives add poft.main_x dummy
scoreboard objectives add poft.main_y dummy
scoreboard objectives add poft.main_z dummy
scoreboard objectives add poft.timer dummy
scoreboard objectives add poft.motion.y dummy
scoreboard objectives add pfts.sneak_type trigger
scoreboard objectives add pfts.sneak_type_saved dummy

scoreboard players set #-10000 const -10000
scoreboard players set #-999 const -999
scoreboard players set #-500 const -500
scoreboard players set #-100 const -100
scoreboard players set #-10 const -10
scoreboard players set #-1 const -1
scoreboard players set #2 const 2
scoreboard players set #4 const 4
scoreboard players set #5 const 5
scoreboard players set #6 const 6
scoreboard players set #10 const 10
scoreboard players set #90 const 90
scoreboard players set #100 const 100
scoreboard players set #103 const 103
scoreboard players set #200 const 200
scoreboard players set #500 const 500
scoreboard players set #900 const 900
scoreboard players set #1000 const 1000
scoreboard players set #4000 const 4000
scoreboard players set #10000 const 10000
scoreboard players set #179000 const 179000
scoreboard players set #179900 const 179900
scoreboard players set #179990 const 179990
scoreboard players set #179999 const 179999
scoreboard players set #180000 const 180000

gamerule max_command_sequence_length 2147483647

execute in midwut:main positioned 0 0 0 run function physics_of_falling_trees:load_forceload

execute unless score #poft.fallen_timer main_score = #poft.fallen_timer main_score run scoreboard players set #poft.fallen_timer main_score 20

#tellraw @a [{"text": "\nThe ","color": "gold"},{"text": "Physical Falling ","color": "dark_green"},{"text": "Trees","color": "#8b4513"},{"text": " Datapack","color": "dark_green"},{"text": " is loaded!","color": "gold"}]


