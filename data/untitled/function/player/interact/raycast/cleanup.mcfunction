
scoreboard players operation #cleanup_mannequin untitled.selection_id = @s untitled.selection_id
execute as @e[type=slime,tag=untitled.mannequin_highlight] if score @s untitled.selection_id = #cleanup_mannequin untitled.selection_id run tp @s ~ ~400 ~
execute as @e[type=slime,tag=untitled.mannequin_highlight] if score @s untitled.selection_id = #cleanup_mannequin untitled.selection_id run kill @s
execute as @e[type=interaction,tag=untitled.mannequin_interaction] if score @s untitled.selection_id = #cleanup_mannequin untitled.selection_id run kill @s