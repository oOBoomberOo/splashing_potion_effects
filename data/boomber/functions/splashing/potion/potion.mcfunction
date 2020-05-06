summon item ~ ~ ~ {Item: {id: "minecraft:potion", Count: 1b}, Tags: ["boomber.splashing.temp"]}
	execute as @e[type=item, tag=boomber.splashing.temp] run function boomber:splashing/potion/effect

kill @s
