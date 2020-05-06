#define score_holder #failure
scoreboard players set #failure bb.se.var 0

data modify storage boomber:splashing result set from entity @s Item.tag
	function boomber:splashing/custom_potion/name
	function boomber:splashing/custom_potion/effect
	function boomber:splashing/custom_potion/duration

	execute if score #failure bb.se.var matches 0 run function boomber:splashing/custom_potion/success
	execute if score #failure bb.se.var matches 1.. run function boomber:splashing/custom_potion/fail
tag @s remove boomber.splashing.temp
