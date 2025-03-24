execute if data storage lode:players root.selected[{type:static}] at @s positioned -30000000 0 0 summon piglin_brute run function lode:zprivate/bossbar/marker/dimension
execute unless data storage lode:players root.selected[] run return 0
scoreboard players set #bool1 lode.id 0
function lode:zprivate/bossbar/marker/loop with storage lode:players root.selected[-1]