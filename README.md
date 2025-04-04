# lodestone
A Multiplayer compatible Navigation HUD which can track multiple locations!

>[!warning]
>Replaces white_background bossbar texture
>
>Forceloads chunk 0 0

>[!important]
>Needs supplementary Resourcepack

## Download
Get the latest Datapack and Resourcepack from releases!

## Usage

* To start the HUD on a player, make them run the following function:
```mcfunction
function lode:api/start
```

* To stop the HUD on a player, make them run the following function:
```mcfunction
function lode:api/stop
```

* To add a static location as a marker to the HUD, follow the example below, and run the second command as the player:
```mcfunction
data modify storage lode:api marker set value {pos:[0,0,0],dim:"minecraft:overworld",color:"green",id:spawn,display:'{"text":"Spawn","color":"green"}'}
function lode:api/marker/set
```
* To add an entity as a marker to the HUD, follow the example below, and run the second command as the player:
```mcfunction
data modify storage lode:api marker set value {uuid:[I;-1430022152,590171849,-2011635514,-539646155],color:"light_purple",display:'{"text":"Pig","color":"light_purple"}',id:pig}
function lode:api/marker/set

```
* You may also use hex codes for marker color Eg: ``color:"#621212"``
* Leave color blank to auto assign color randomly from the 16 different default colors


* To remove a marker, run the following command as the player:
```mcfunction
function lode:api/marker/remove {id:"spawn"}
```

* To clear all markers, run the following command as the player:
```mcfunction
function lode:api/marker/clear
```

* To get a list of the player's current markers, run the following command as the player:
```mcfunction
function lode:api/marker/clear
##Output in storage lode:api list
```

* You may toggle the presence of coordinates on the left of the hud in the following way:
```mcfunction
##Showing coords
scoreboard players set #coords lode.id 1
##Hiding coords
scoreboard players set #coords lode.id 0
```

## Credits
[SuperSword's fast 3d distance calc](https://github.com/SuperSwordTW/Distance-Trig-Calc-3d)

[Gibbsly's UUID Converter](https://github.com/gibbsly/gu)


