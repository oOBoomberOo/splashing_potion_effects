summon item ~ ~ ~ {Item: {id: "minecraft:potion", Count: 1b}, Tags: ["boomber.splashing.temp"]}
	execute as @e[tag=boomber.splashing.temp] run function boomber:splashing/custom_potion/builder

kill @s
