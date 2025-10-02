
scoreboard players operation #mannequin_place untitled.selection_id = @s untitled.selection_id

execute as @e[type=interaction,tag=untitled.mannequin_interaction] if score @s untitled.selection_id = #mannequin_place untitled.selection_id if data entity @s interaction run function untitled:player/interact/process_place
execute as @e[type=interaction,tag=untitled.mannequin_interaction] if data entity @s interaction run data remove entity @s interaction
