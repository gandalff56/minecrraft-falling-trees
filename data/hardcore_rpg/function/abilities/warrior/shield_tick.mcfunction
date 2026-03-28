# Shield mechanic — only Warriors can use shields
# Nerfed: doesn't block 100%, has cooldown based on level

# Check if warrior is currently blocking with shield
execute if entity @s[nbt={UsingItem:{id:"minecraft:shield"}}] if score @s rpg.cd_shield matches 1.. run function hardcore_rpg:abilities/warrior/shield_on_cooldown

# Detect block event: when warrior takes damage while shielding
# We track if shield was just used (HurtTime reset)
execute if entity @s[nbt={UsingItem:{id:"minecraft:shield"}}] if entity @s[nbt={HurtTime:10s}] run function hardcore_rpg:abilities/warrior/shield_block
