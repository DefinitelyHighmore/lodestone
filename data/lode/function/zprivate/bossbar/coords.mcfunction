data modify storage lode:internal root.coords set value ["X:"," Y:", " Z:"]

execute store result storage lode:internal root.temp1 int 1 run data get storage lode:internal root.temp.Pos[0]
data modify storage lode:internal root.temp1 set string storage lode:internal root.temp1
data modify storage lode:internal root.coords insert 1 from storage lode:internal root.temp1

execute store result storage lode:internal root.temp1 int 1 run data get storage lode:internal root.temp.Pos[1]
data modify storage lode:internal root.temp1 set string storage lode:internal root.temp1
data modify storage lode:internal root.coords insert 3 from storage lode:internal root.temp1

execute store result storage lode:internal root.temp1 int 1 run data get storage lode:internal root.temp.Pos[2]
data modify storage lode:internal root.temp1 set string storage lode:internal root.temp1
data modify storage lode:internal root.coords append from storage lode:internal root.temp1