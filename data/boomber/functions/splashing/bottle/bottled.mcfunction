#define tag boomber.splashing.target
tag @e[type=area_effect_cloud, tag=!global.ignore, distance=..10, limit=1, sort=nearest] add boomber.splashing.target

execute as @e[tag=boomber.splashing.target] run function boomber:splashing/util/get_pos
	scoreboard players operation #cloud.x bb.se.var = #result.x bb.se.var
	scoreboard players operation #cloud.y bb.se.var = #result.y bb.se.var
	scoreboard players operation #cloud.z bb.se.var = #result.z bb.se.var
	scoreboard players operation #cloud.radius bb.se.var = #result.radius bb.se.var

execute as @s run function boomber:splashing/util/get_pos
	scoreboard players operation #bottle.x bb.se.var = #result.x bb.se.var
	scoreboard players operation #bottle.y bb.se.var = #result.y bb.se.var
	scoreboard players operation #bottle.z bb.se.var = #result.z bb.se.var

scoreboard players operation #result.x bb.se.var = #cloud.x bb.se.var
scoreboard players operation #result.y bb.se.var = #cloud.y bb.se.var
scoreboard players operation #result.z bb.se.var = #cloud.z bb.se.var

scoreboard players operation #result.x bb.se.var -= #bottle.x bb.se.var
scoreboard players operation #result.y bb.se.var -= #bottle.y bb.se.var
scoreboard players operation #result.z bb.se.var -= #bottle.z bb.se.var

execute if score #result.x bb.se.var matches ..-1 run scoreboard players operation #result.x bb.se.var *= #-1 bb.se.const
execute if score #result.z bb.se.var matches ..-1 run scoreboard players operation #result.z bb.se.var *= #-1 bb.se.const

#define storage boomber:splashing
data merge storage boomber:splashing {Age: 0, Potion: {}, result: {}}
	execute as @e[tag=boomber.splashing.target] run function boomber:splashing/util/get_effect

	function boomber:splashing/bottle/is_within_radius
		execute if data storage boomber:splashing Potion if score #result bb.se.var matches 1 run function boomber:splashing/potion/potion
		execute unless data storage boomber:splashing Potion if score #result bb.se.var matches 1 run function boomber:splashing/custom_potion/potion

execute if score #result bb.se.var matches 1 run kill @e[tag=boomber.splashing.target]
tag @e[tag=boomber.splashing.target] remove boomber.splashing.target
