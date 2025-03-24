function lode:zprivate/player/select
function lode:api/marker/remove with storage lode:api marker
execute if data storage lode:api marker.pos run function lode:zprivate/bossbar/marker/static
execute if data storage lode:api marker.uuid run function lode:zprivate/bossbar/marker/gu/convert

execute if data storage lode:api marker.color run function lode:zprivate/bossbar/marker/format_color with storage lode:api marker
execute unless data storage lode:api marker.color run function lode:zprivate/bossbar/marker/color

data modify storage lode:players root.selected append from storage lode:api marker
data remove storage lode:api marker
function lode:zprivate/player/write