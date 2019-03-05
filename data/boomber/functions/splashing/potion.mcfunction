execute store result score #bb.if.cloud.pos.x bb.calculation run data get entity @e[type=area_effect_cloud, tag=!boomber.splashing.ignore, distance=..10, limit=1, sort=nearest] Pos[0]
execute store result score #bb.if.cloud.pos.y bb.calculation run data get entity @e[type=area_effect_cloud, tag=!boomber.splashing.ignore, distance=..10, limit=1, sort=nearest] Pos[1]
execute store result score #bb.if.cloud.pos.z bb.calculation run data get entity @e[type=area_effect_cloud, tag=!boomber.splashing.ignore, distance=..10, limit=1, sort=nearest] Pos[2]
execute store result score #bb.if.cloud.radius bb.calculation run data get entity @e[type=area_effect_cloud, tag=!boomber.splashing.ignore, distance=..10, limit=1, sort=nearest] Radius
execute store result score #bb.if.bottle.pos.x bb.calculation run data get entity @s Pos[0]
execute store result score #bb.if.bottle.pos.y bb.calculation run data get entity @s Pos[1]
execute store result score #bb.if.bottle.pos.z bb.calculation run data get entity @s Pos[2]

scoreboard players operation #bb.if.result.pos.x bb.calculation = #bb.if.cloud.pos.x bb.calculation
scoreboard players operation #bb.if.result.pos.y bb.calculation = #bb.if.cloud.pos.y bb.calculation
scoreboard players operation #bb.if.result.pos.z bb.calculation = #bb.if.cloud.pos.z bb.calculation

scoreboard players operation #bb.if.result.pos.x bb.calculation -= #bb.if.bottle.pos.x bb.calculation
scoreboard players operation #bb.if.result.pos.y bb.calculation -= #bb.if.bottle.pos.y bb.calculation
scoreboard players operation #bb.if.result.pos.z bb.calculation -= #bb.if.bottle.pos.z bb.calculation

execute if score #bb.if.result.pos.x bb.calculation matches ..-1 run scoreboard players operation #bb.if.result.pos.x bb.calculation *= #-1 bb.variable
execute if score #bb.if.result.pos.z bb.calculation matches ..-1 run scoreboard players operation #bb.if.result.pos.z bb.calculation *= #-1 bb.variable


execute as @e[type=area_effect_cloud, tag=!boomber.splashing.ignore, distance=..10, limit=1, sort=nearest] store result score #bb.if.potion.id bb.calculation run data get entity @s Effects[0].Id
execute as @e[type=area_effect_cloud, tag=!boomber.splashing.ignore, distance=..10, limit=1, sort=nearest] store result score #bb.if.potion.duration bb.calculation run data get entity @s Effects[0].Duration
execute as @e[type=area_effect_cloud, tag=!boomber.splashing.ignore, distance=..10, limit=1, sort=nearest] store result score #bb.if.potion.age bb.calculation run data get entity @s Age

execute as @s if score #bb.if.potion.id bb.calculation matches 0 if score #bb.if.result.pos.x bb.calculation <= #bb.if.cloud.radius bb.calculation if score #bb.if.result.pos.y bb.calculation matches 0 if score #bb.if.result.pos.z bb.calculation <= #bb.if.cloud.radius bb.calculation run function boomber:splashing/potion/potion
execute as @s unless score #bb.if.potion.id bb.calculation matches 0 if score #bb.if.result.pos.x bb.calculation <= #bb.if.cloud.radius bb.calculation if score #bb.if.result.pos.y bb.calculation matches 0 if score #bb.if.result.pos.z bb.calculation <= #bb.if.cloud.radius bb.calculation run function boomber:splashing/custom_potion/potion