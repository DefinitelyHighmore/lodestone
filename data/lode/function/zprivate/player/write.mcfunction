execute unless score @s lode.id = @s lode.id run function lode:zprivate/player/update/init with entity @s
execute store result storage lode:players root.id int 1 run scoreboard players get @s lode.id
function lode:zprivate/player/zwrite with storage lode:players root