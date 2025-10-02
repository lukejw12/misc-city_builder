
execute as @e[type=minecraft:mannequin,tag=untitled.jeff,limit=1] at @s run function untitled:restraint/controls/process_movement

execute unless entity @e[type=armor_stand,tag=untitled.camera] run summon armor_stand ~ ~6 ~-8 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["untitled.camera"]}
execute as @e[type=minecraft:mannequin,tag=untitled.jeff,limit=1] at @s positioned ~ ~8 ~-10 run tp @e[type=armor_stand,tag=untitled.camera,limit=1] ~ ~ ~ 0 30
ride @a[tag=untitled.spectate,limit=1] mount @e[type=armor_stand,tag=untitled.camera,limit=1]

execute store result score #player_pitch untitled.temp run data get entity @a[tag=untitled.spectate,limit=1] Rotation[1]
scoreboard players remove #player_pitch untitled.temp 33
scoreboard players operation #player_pitch untitled.temp *= #3 untitled.temp
execute as @e[type=mannequin,tag=untitled.jeff,limit=1] store result entity @s Rotation[1] float 1 run scoreboard players get #player_pitch untitled.temp

execute as @a[tag=untitled.spectate] at @s rotated 0 ~ run rotate @s 0 ~

scoreboard players set @e[type=mannequin,tag=untitled.jeff,limit=1] untitled.selection_success 0
execute as @e[type=minecraft:mannequin,tag=untitled.jeff,limit=1] at @s anchored eyes positioned ^ ^ ^ run function untitled:player/interact/raycast/start
execute as @e[type=mannequin,tag=untitled.jeff,limit=1] if score @s untitled.selection_success matches 0 run tp @e[type=slime,tag=untitled.mannequin_highlight] ~ ~500 ~
execute as @e[type=mannequin,tag=untitled.jeff,limit=1] if score @s untitled.selection_success matches 0 run kill @e[type=slime,tag=untitled.mannequin_highlight]

execute at @e[type=slime,tag=untitled.mannequin_highlight] if block ~ ~ ~ #untitled:airs run tp @e[type=slime,tag=untitled.mannequin_highlight] ~ ~500 ~
execute at @e[type=slime,tag=untitled.mannequin_highlight] if block ~ ~ ~ #untitled:airs run kill @e[type=slime,tag=untitled.mannequin_highlight]

effect give @e[type=slime,tag=untitled.mannequin_highlight] invisibility infinite 1 true

execute as @a[tag=untitled.spectate] at @s anchored eyes positioned ^ ^ ^1 unless entity @e[type=interaction,tag=untitled.mannequin_interaction] run summon interaction ~ ~ ~ {width:2f,height:2f,Tags:["untitled.mannequin_interaction"]}
execute as @a[tag=untitled.spectate] at @s anchored eyes positioned ^ ^ ^1 as @e[type=interaction,tag=untitled.mannequin_interaction] run tp @s ~ ~ ~

execute as @a[tag=untitled.spectate] run function untitled:player/interact/check_attack
execute as @a[tag=untitled.spectate] run function untitled:player/interact/check_place

execute as @e[type=minecraft:mannequin,tag=untitled.jeff,limit=1] at @s as @e[type=item,distance=..1.5] run function untitled:player/item_pickup

execute as @e[type=minecraft:mannequin,tag=untitled.jeff,limit=1] run function untitled:player/mimic_held_item