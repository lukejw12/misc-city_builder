
execute store result score #dx untitled.temp run data get entity @s Pos[0] 1000
execute store result score #dy untitled.temp run data get entity @s Pos[1] 1000
execute store result score #dz untitled.temp run data get entity @s Pos[2] 1000

execute store result score #bx untitled.temp run data get entity @e[type=slime,tag=untitled.mannequin_highlight,limit=1] Pos[0] 1000
execute store result score #by untitled.temp run data get entity @e[type=slime,tag=untitled.mannequin_highlight,limit=1] Pos[1] 1000
execute store result score #bz untitled.temp run data get entity @e[type=slime,tag=untitled.mannequin_highlight,limit=1] Pos[2] 1000

scoreboard players operation #dx untitled.temp -= #bx untitled.temp
scoreboard players operation #dy untitled.temp -= #by untitled.temp
scoreboard players operation #dz untitled.temp -= #bz untitled.temp

execute store result storage untitled:temp place_offset.x int 1 run scoreboard players get #dx untitled.temp
execute store result storage untitled:temp place_offset.y int 1 run scoreboard players get #dy untitled.temp
execute store result storage untitled:temp place_offset.z int 1 run scoreboard players get #dz untitled.temp