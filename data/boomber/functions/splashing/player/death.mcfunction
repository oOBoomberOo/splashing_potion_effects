scoreboard players set @s bb.se.death 0

#define tag boomber.splashing.effect_cloud
#define tag boomber.splashing.temp
summon area_effect_cloud ~ ~ ~ {Duration: 200, Age: 0, ReapplicationDelay: 20, Radius: 2.5f, RadiusOnUse: -1f, RadiusPerTick: -0.002f, Effects:[], Tags:["boomber.splashing.effect_cloud", "boomber.splashing.temp"]}
	data modify entity @e[type=area_effect_cloud, tag=boomber.splashing.temp, limit=1] Effects set from entity @s ActiveEffects
	tag @e[type=area_effect_cloud, tag=boomber.splashing.effect_cloud.temp] remove boomber.splashing.temp