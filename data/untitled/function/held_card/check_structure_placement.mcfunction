scoreboard players operation #placement untitled.selection_id = @s untitled.selection_id

execute as @e[tag=untitled.selector_interaction,type=interaction] if score @s untitled.selection_id = #placement untitled.selection_id if data entity @s interaction run function untitled:held_card/place_structure
execute as @e[tag=untitled.selector_interaction,type=interaction] at @s if data entity @s interaction run data remove entity @s interaction