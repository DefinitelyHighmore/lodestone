$data modify storage lode:players root.name set from storage lode:players root.lookup[{uuid:$(UUID)}]
function lode:zprivate/player/update/score with storage lode:players root
summon item_display ~ ~ ~ {UUID:[I;1122027286,-1387315107,-1235065460,1498891860],transformation:{left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f]}}
loot replace entity 42e0c716-ad4f-405d-b662-658c59574654 contents loot lode:head
$data modify storage lode:players root.lookup[{uuid:$(UUID)}].name set from entity 42e0c716-ad4f-405d-b662-658c59574654 item.components."minecraft:profile".name
kill 42e0c716-ad4f-405d-b662-658c59574654

