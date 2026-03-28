# Show list of online players with their TPA IDs
tellraw @s {"text":"=== GRACZE ONLINE ===","color":"gold","bold":true}
execute as @a run tellraw @p [{"text":"  ID ","color":"gray"},{"score":{"name":"@s","objective":"tpa.id"},"color":"yellow","bold":true},{"text":" - ","color":"gray"},{"selector":"@s","color":"white"}]
tellraw @s [{"text":"Uzyj: ","color":"gray"},{"text":"/trigger tpa.request set <ID>","color":"green"}]
