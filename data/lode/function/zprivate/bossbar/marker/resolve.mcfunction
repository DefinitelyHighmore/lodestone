data modify entity @s text set value '{"nbt":"root.markers[]","storage": "lode:internal","separator": "","interpret": true}'
data modify storage lode:internal root.markers set from entity @s text
kill @s