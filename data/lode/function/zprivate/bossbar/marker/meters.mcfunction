data modify entity @s text set value '{"score":{"name": "#out","objective": "lode.id"}}'
data modify storage lode:internal root.markers append from entity @s text
kill @s