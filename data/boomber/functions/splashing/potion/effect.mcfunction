execute as @s run data modify entity @s Item.tag.Potion set from entity @e[type=area_effect_cloud, tag=!boomber.splashing.ignore, distance=..10, limit=1, sort=nearest] Potion
execute as @e[type=area_effect_cloud, tag=!boomber.splashing.ignore, distance=..10, limit=1, sort=nearest] run kill @s
