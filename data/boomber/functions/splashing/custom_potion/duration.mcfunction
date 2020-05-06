execute store result score #age bb.se.var run data get storage boomber:splashing Age 2
execute store result score #duration bb.se.var run data get storage boomber:splashing Effect.Duration
	execute if score #duration bb.se.var matches ..100 run scoreboard players set #failure bb.se.var 1

scoreboard players operation #duration bb.se.var -= #age bb.se.var
scoreboard players operation #duration bb.se.var /= #100 bb.se.const
scoreboard players operation #duration bb.se.var *= #100 bb.se.const
	execute store result storage boomber:splashing result.CustomPotionEffects[0].Duration int 1 run scoreboard players get #duration bb.se.var
