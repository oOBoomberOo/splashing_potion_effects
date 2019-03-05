
scoreboard players operation #bb.if.potion.age bb.calculation *= #2 bb.variable
scoreboard players operation #bb.if.potion.duration bb.calculation -= #bb.if.potion.age bb.calculation

scoreboard players operation #bb.if.potion.duration bb.calculation /= #100 bb.variable
scoreboard players operation #bb.if.potion.duration bb.calculation *= #100 bb.variable

execute as @s store result entity @s Item.tag.CustomPotionEffects[0].Duration int 1 run scoreboard players get #bb.if.potion.duration bb.calculation