kill @s
loot spawn ~ ~ ~ loot boomber:splashing/empty_potion
scoreboard players set @e[type=item, nbt={Item:{id:"minecraft:potion"}}, limit=1, distance=..0.1] bb.success 0
execute as @e[type=item, nbt={Item:{id:"minecraft:potion"}}, limit=1, distance=..0.1] run function boomber:splashing/custom_potion/name
execute as @e[type=item, nbt={Item:{id:"minecraft:potion"}}, limit=1, distance=..0.1] if score @s bb.success matches 1.. run function boomber:splashing/custom_potion/effect
execute as @e[type=item, nbt={Item:{id:"minecraft:potion"}}, limit=1, distance=..0.1] if score @s bb.success matches 1.. if score #bb.if.potion.duration bb.calculation matches 100.. run function boomber:splashing/custom_potion/duration

execute as @e[type=item, nbt={Item:{id:"minecraft:potion"}}, limit=1, distance=..0.1] if score @s bb.success matches 0 run function boomber:splashing/custom_potion/fail