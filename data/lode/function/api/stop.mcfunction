tag @s remove lode.player
execute store result storage lode:internal root.id int 1 run scoreboard players get @s lode.id
function lode:zprivate/player/zstop with storage lode:internal root