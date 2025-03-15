data modify storage lode:internal root.hud[14] set from storage lode:players root.selected[-1].color
execute store result score #dx lode.id run data get storage lode:internal root.temp.Pos[0]
execute store result score #dy lode.id run data get storage lode:internal root.temp.Pos[1]
execute store result score #dz lode.id run data get storage lode:internal root.temp.Pos[2]

execute store result score #temp lode.id run data get storage lode:players root.selected[-1].pos[0]
scoreboard players operation #dx lode.id -= #temp lode.id
execute if score #dx lode.id matches ..-1 run scoreboard players operation #dx lode.id *= #-1 lode.id

execute store result score #temp lode.id run data get storage lode:players root.selected[-1].pos[1]
scoreboard players operation #dy lode.id -= #temp lode.id
execute if score #dy lode.id matches ..-1 run scoreboard players operation #dy lode.id *= #-1 lode.id

execute store result score #temp lode.id run data get storage lode:players root.selected[-1].pos[2]
scoreboard players operation #dz lode.id -= #temp lode.id
execute if score #dz lode.id matches ..-1 run scoreboard players operation #dz lode.id *= #-1 lode.id


data modify storage lode:internal root.markers append value '{"text":"","color":"white"}'
execute if score #bool1 lode.id matches 1 run data modify storage lode:internal root.markers append value '{"text":", "}'
data modify storage lode:internal root.markers append from storage lode:players root.selected[-1].display
data modify storage lode:internal root.markers append value "("

function lode:zprivate/distance/start
execute summon text_display run function lode:zprivate/bossbar/marker/meters

data modify storage lode:internal root.markers append value "m)"

scoreboard players set #bool1 lode.id 1