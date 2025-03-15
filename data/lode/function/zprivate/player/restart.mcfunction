tag @s add lode.player
execute unless score @s lode.id = @s lode.id run function lode:zprivate/player/update/init with entity @s
execute store result storage lode:internal root.id int 1 run scoreboard players get @s lode.id
function lode:zprivate/player/zset with storage lode:internal root