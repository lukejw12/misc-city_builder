data remove entity @s interaction

scoreboard players operation #hammer untitled.selection_id = @s untitled.selection_id

execute as @e[tag=untitled.selector_point,type=slime] if score @s untitled.selection_id = #hammer untitled.selection_id at @s positioned ~ ~ ~ run function untitled:held_card/destroy_structure