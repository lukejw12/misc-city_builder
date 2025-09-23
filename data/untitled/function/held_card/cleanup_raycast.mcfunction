scoreboard players operation #cleanup untitled.selection_id = @s untitled.selection_id
execute as @e[tag=untitled.selector_point,type=slime] if score @s untitled.selection_id = #cleanup untitled.selection_id run tp @s ~ ~500 ~
execute as @e[tag=untitled.selector_point,type=slime] if score @s untitled.selection_id = #cleanup untitled.selection_id run kill @s
execute as @e[tag=untitled.selector_interaction,type=interaction] if score @s untitled.selection_id = #cleanup untitled.selection_id run kill @s