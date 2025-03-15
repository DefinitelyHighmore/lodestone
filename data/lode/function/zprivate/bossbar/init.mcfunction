execute if score #bool lode.id matches 1 run summon marker ~ ~ ~ {UUID:[I;1388232794,1642809089,-2058784542,-198576909]}
execute if score #bool lode.id matches 1 run scoreboard players set #bool lode.id 0
execute at @s run teleport 52bec05a-61eb-4701-8549-70e2f429f4f3 ~ ~ ~ ~ ~
data modify storage lode:internal root.temp set from entity 52bec05a-61eb-4701-8549-70e2f429f4f3



execute if score #coords lode.id matches 1 run function lode:zprivate/bossbar/coords
execute unless score #coords lode.id matches 1 run data modify storage lode:internal root.coords set value [""]


execute store result score #start lode.id run data get storage lode:internal root.temp.Rotation[0] 600
scoreboard players add #start lode.id 108000


scoreboard players operation #start lode.id /= #360 lode.id

scoreboard players operation #round lode.id = #start lode.id
scoreboard players operation #round lode.id %= #10 lode.id
scoreboard players operation #start lode.id /= #10 lode.id
execute if score #round lode.id matches 6..9 run scoreboard players add #start lode.id 1
execute store result storage lode:internal root.start int 1 run scoreboard players get #start lode.id
scoreboard players set #end lode.id 0


data modify storage lode:internal root.temp2 set value ["<", "|", "-", "|", "-", "|", "E", "N", "|", "-", "|", "-", "|", ">", "N", "<", "|", "-", "|", "-", "|", "W", "N", "|", "-", "|", "-", "|", ">", "W", "<", "|", "-", "|", "-", "|", "W", "S", "|", "-", "|", "-", "|", ">", "S", "<", "|", "-", "|", "-", "|", "E", "S", "|", "-", "|", "-", "|", ">", "E", "<", "|", "-", "|", "-", "|", "E", "N", "|", "-", "|", "-", "|", ">", "N", "<", "|", "-", "|", "-", "|", "W", "N", "|", "-", "|", "-", "|", ">"]


function lode:zprivate/bossbar/trim/init



function lode:zprivate/player/select
data modify storage lode:internal root.markers set value [""]
execute if data storage lode:players root.selected[] run function lode:zprivate/bossbar/marker/init



data modify storage lode:internal root.id set from storage lode:players root.id
function lode:zprivate/bossbar/display with storage lode:internal root