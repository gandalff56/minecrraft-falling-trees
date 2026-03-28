data modify storage midwut:main Item set from entity @s Item
execute align xyz run tp @s ~ ~ ~

data modify storage midwut:main Data set from entity @s Pos
execute store result score #x2 main_score run data get storage midwut:main Data[0] 1000
execute store result score #y2 main_score run data get storage midwut:main Data[1] 1000
execute store result score #z2 main_score run data get storage midwut:main Data[2] 1000

tp @s ~ ~ ~
