execute as @e[type=minecraft:mannequin,tag=untitled.jeff,limit=1] at @s run function untitled:restraint/controls/process_movement

execute unless entity @e[type=armor_stand,tag=untitled.camera] run summon armor_stand ~ ~6 ~-8 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["untitled.camera"]}
execute as @e[type=minecraft:mannequin,tag=untitled.jeff,limit=1] at @s positioned ~ ~8 ~-10 run tp @e[type=armor_stand,tag=untitled.camera,limit=1] ~ ~ ~ 0 30
ride @a[tag=untitled.spectate,limit=1] mount @e[type=armor_stand,tag=untitled.camera,limit=1]
execute as @a[tag=untitled.spectate] run rotate @s 0 36