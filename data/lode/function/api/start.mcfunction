function lode:zprivate/player/search with entity @s
execute if score #bool lode.id matches 1 run return run function lode:zprivate/player/restart


summon item_display ~ ~ ~ {UUID:[I;1122027286,-1387315107,-1235065460,1498891860],transformation:{left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f]}}


loot replace entity 42e0c716-ad4f-405d-b662-658c59574654 contents loot lode:head
data modify storage lode:players root.lookup append from entity 42e0c716-ad4f-405d-b662-658c59574654 item.components."minecraft:profile"
data remove storage lode:players root.lookup[-1].properties
data modify storage lode:players root.lookup[-1].uuid set from storage lode:players root.lookup[-1].id
execute store result score @s lode.id store result storage lode:players root.lookup[-1].id int 1 store result storage lode:players root.id int 1 run scoreboard players add #player.id lode.id 1
kill 42e0c716-ad4f-405d-b662-658c59574654
tag @s add lode.player
function lode:zprivate/bossbar/new with storage lode:players root
