scoreboard players operation #current_player untitled.selection_id = @s untitled.selection_id

execute unless entity @e[tag=untitled.selector_interaction,distance=..20,type=interaction] if score @s untitled.selection_id matches 1.. positioned ^ ^ ^3 run summon interaction ~ ~ ~ {width:4f,height:4f,Tags:["untitled.selector_interaction","untitled.new_interaction"]}

execute unless entity @e[tag=untitled.selector_point,distance=..20,type=slime] if score @s untitled.selection_id matches 1.. align xyz positioned ~0.5 ~100 ~0.5 run summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["untitled.selector_point","untitled.new_selection_field"],attributes:[{id:"minecraft:scale",base:2}]}
effect give @e[tag=untitled.selector_point,distance=..20,type=slime] invisibility infinite 1 true 
execute as @s run scoreboard players operation @e[tag=untitled.new_selection_field,sort=nearest,limit=1] untitled.selection_id = @s untitled.selection_id
tag @e[tag=untitled.new_selection_field] remove untitled.new_selection_field

execute as @s run scoreboard players operation @e[tag=untitled.new_interaction,sort=nearest,limit=1] untitled.selection_id = @s untitled.selection_id
tag @e[tag=untitled.new_interaction] remove untitled.new_interaction

execute positioned as @s anchored eyes positioned ~ ~1 ~ as @e[tag=untitled.selector_interaction,type=interaction] if score @s untitled.selection_id = #current_player untitled.selection_id run tp @s ~ ~-2 ~

execute as @e[tag=untitled.selector_point,type=slime] if score @s untitled.selection_id = #current_player untitled.selection_id align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~


scoreboard players set @s untitled.selection_success 1
