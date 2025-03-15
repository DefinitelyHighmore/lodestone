execute at @s positioned -30000000 0 0 summon piglin_brute run function lode:zprivate/bossbar/marker/dimension
execute unless data storage lode:players root.selected[] run return 0
scoreboard players set #bool1 lode.id 0
function lode:zprivate/bossbar/marker/loop with storage lode:players root.selected[-1]
execute if score #bool1 lode.id matches 1 summon text_display run function lode:zprivate/bossbar/marker/resolve