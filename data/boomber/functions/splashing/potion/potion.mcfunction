kill @s
loot spawn ~ ~ ~ loot boomber:splashing/empty_potion

execute as @e[type=item, limit=1, distance=..0.1] run function boomber:splashing/potion/effect
