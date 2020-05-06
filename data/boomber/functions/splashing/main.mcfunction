execute as @a[tag=!global.ignore, tag=!global.ignore.gui] at @s run function boomber:splashing/player/main
execute as @e[type=item, tag=!global.ignore, tag=!global.ignore.kill, tag=!global.ignore.gui, nbt={Item: {id: "minecraft:glass_bottle", Count: 1b}, OnGround: 1b}] at @s run function boomber:splashing/bottle/main
