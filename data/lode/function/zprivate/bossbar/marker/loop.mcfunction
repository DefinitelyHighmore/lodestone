$execute if data storage lode:players root.selected[-1].pos at @s store success score #bool2 lode.id run teleport 52bec05a-61eb-4701-8549-70e2f429f4f3 ~ ~ ~ facing $(x) 0 $(z)
$execute if data storage lode:players root.selected[-1].uuid at @s store success score #bool2 lode.id run teleport 52bec05a-61eb-4701-8549-70e2f429f4f3 ~ ~ ~ facing entity $(string_uuid)

execute if score #bool2 lode.id matches 1 run function lode:zprivate/bossbar/marker/calc

data remove storage lode:players root.selected[-1]
execute if data storage lode:players root.selected[] run function lode:zprivate/bossbar/marker/loop with storage lode:players root.selected[-1]