execute unless score @s lode.id = @s lode.id run function lode:zprivate/player/update/init with entity @s
execute store result storage lode:players root.id int 1 run scoreboard players get @s lode.id
data remove storage lode:players root.selected
function lode:zprivate/player/zselect with storage lode:players root