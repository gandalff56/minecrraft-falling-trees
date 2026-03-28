gamerule doTileDrops false
setblock ~ ~ ~ water destroy
execute if score #doTileDrops main_score matches 1 run gamerule doTileDrops true