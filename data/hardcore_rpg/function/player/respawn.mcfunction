# Called on death - apply penalty and restore stats
scoreboard players add @s rpg.deaths 1
function hardcore_rpg:xp/death_penalty
function hardcore_rpg:player/update_health

tellraw @s [{"text":"You died! ","color":"red"},{"text":"Lost 20% XP.","color":"gray"}]
