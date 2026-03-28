# Shield is on cooldown — force player to lower shield
# Disable shield by applying a brief item cooldown

# Show cooldown warning
title @s actionbar {"text":"⛊ Tarcza na cooldownie!","color":"red"}

# Apply shield cooldown in-game (prevents re-raising)
item modify entity @s weapon.offhand hardcore_rpg:shield_cooldown
