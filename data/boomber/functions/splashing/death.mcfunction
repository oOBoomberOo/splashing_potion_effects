scoreboard players set @s bb.if.death 0
summon area_effect_cloud ~ ~ ~ {Duration: 200, Age: 0, ReapplicationDelay: 20, Radius: 2.5, RadiusOnUse: -1, RadiusPerTick: -0.002, Effects:[], Tags:["boomber.splashing.effect_cloud", "boomber.splashing.effect_cloud.creating"]}
data modify entity @e[type=area_effect_cloud, tag=boomber.splashing.effect_cloud.creating, limit=1] Effects set from entity @s ActiveEffects
tag @e[type=area_effect_cloud, tag=boomber.splashing.effect_cloud.creating, limit=1] remove boomber.splashing.effect_cloud.creating