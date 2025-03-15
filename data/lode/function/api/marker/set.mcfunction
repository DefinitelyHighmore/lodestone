function lode:zprivate/player/select
function lode:api/marker/remove with storage lode:api marker
function lode:zprivate/bossbar/marker/split
data modify storage lode:players root.selected append from storage lode:api marker
data remove storage lode:api marker
function lode:zprivate/player/write