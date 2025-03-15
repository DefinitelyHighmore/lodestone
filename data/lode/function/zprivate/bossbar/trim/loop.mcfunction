execute if score #end lode.id = #start lode.id run return 0
scoreboard players add #end lode.id 1
data remove storage lode:internal root.temp2[-1]
function lode:zprivate/bossbar/trim/loop