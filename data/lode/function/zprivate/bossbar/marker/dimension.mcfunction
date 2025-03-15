data modify storage lode:internal root.dim set from entity @s Brain.memories.minecraft:home.value.dimension
data modify storage lode:players root.selected[].filter set value 0
function lode:zprivate/bossbar/marker/filter with storage lode:internal root
kill @s
