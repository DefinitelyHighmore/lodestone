$execute at @s run teleport 52bec05a-61eb-4701-8549-70e2f429f4f3 ~ ~ ~ facing $(x) 0 $(z)
execute store result score #marker lode.id run data get entity 52bec05a-61eb-4701-8549-70e2f429f4f3 Rotation[0] 600

scoreboard players add #marker lode.id 108000


scoreboard players operation #marker lode.id /= #360 lode.id

scoreboard players operation #round lode.id = #marker lode.id
scoreboard players operation #round lode.id %= #10 lode.id
scoreboard players operation #marker lode.id /= #10 lode.id
execute if score #round lode.id matches 6..9 run scoreboard players add #marker lode.id 1

scoreboard players add #marker lode.id 14
scoreboard players operation #marker lode.id -= #start lode.id



execute unless score #marker lode.id matches 0..59 run scoreboard players operation #marker lode.id %= #60 lode.id
execute if score #marker lode.id matches 44..59 run scoreboard players set #marker lode.id 0



execute if score #marker lode.id matches ..0 run function lode:zprivate/bossbar/marker/start
execute if score #marker lode.id matches 29.. run function lode:zprivate/bossbar/marker/end

execute if score #marker lode.id matches 1..28 run function lode:zprivate/bossbar/marker/tree/0_1

data remove storage lode:players root.selected[-1]
execute if data storage lode:players root.selected[] run function lode:zprivate/bossbar/marker/loop with storage lode:players root.selected[-1]