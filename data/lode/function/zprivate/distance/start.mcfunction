
execute if score #dy lode.id < #dx lode.id run scoreboard players operation #dy lode.id >< #dx lode.id
execute if score #dy lode.id < #dz lode.id run scoreboard players operation #dy lode.id >< #dz lode.id

execute store result storage lode:internal root.distance.pos[0] double 0.0000000001 run scoreboard players get #dx lode.id

execute store result storage lode:internal root.distance.pos[1] double 0.0000000001 store result storage lode:internal root.y double 1 run scoreboard players get #dy lode.id

execute store result storage lode:internal root.distance.pos[2] double 0.0000000001 run scoreboard players get #dz lode.id

data modify entity 52bec05a-61eb-4701-8549-70e2f429f4f3 Pos set from storage lode:internal root.distance.pos

rotate 52bec05a-61eb-4701-8549-70e2f429f4f3 facing 0.0 0.0 0.0

execute store result storage lode:internal root.t int 1 run data get entity 52bec05a-61eb-4701-8549-70e2f429f4f3 Rotation[1] 1000

execute store result score #out lode.id run function lode:zprivate/distance/sine with storage lode:internal root
