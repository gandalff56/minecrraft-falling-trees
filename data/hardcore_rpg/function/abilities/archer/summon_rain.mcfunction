# Summon rain of arrows from the sky at current position
# ~20 arrows spread in a 4-block radius, falling from 15 blocks above

# Center marker particle
particle minecraft:cloud ~ ~1 ~ 2 0 2 0.05 20

# Summon arrows — spread randomly, pickup:0 so they can't be collected
summon minecraft:arrow ~0 ~15 ~0 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~1 ~15 ~-1 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~-1 ~15 ~1 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~2 ~15 ~0 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~-2 ~15 ~0 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~0 ~15 ~2 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~0 ~15 ~-2 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~1 ~15 ~1 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~-1 ~15 ~-1 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~1 ~15 ~-2 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~-1 ~15 ~2 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~3 ~15 ~1 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~-3 ~15 ~-1 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~2 ~15 ~2 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~-2 ~15 ~-2 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~3 ~15 ~-1 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~-3 ~15 ~1 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~2 ~15 ~-1 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~-2 ~15 ~1 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}
summon minecraft:arrow ~0 ~15 ~-3 {pickup:0b,damage:4.0,Tags:["hrpg.rain"]}

# Sound at impact zone
playsound minecraft:entity.arrow.shoot player @a[distance=..32] ~ ~ ~ 1 0.3
playsound minecraft:entity.evoker.cast_spell player @a[distance=..32] ~ ~ ~ 0.8 1.5
