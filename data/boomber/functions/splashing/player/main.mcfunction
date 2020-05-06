execute if score @s bb.se.death matches 1.. if data entity @s ActiveEffects run function boomber:splashing/player/death

# Make sure they are REALLY not death anymore
execute if score @s bb.se.death matches 1.. run scoreboard players set @s bb.se.death 0