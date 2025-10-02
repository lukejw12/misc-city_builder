
scoreboard players operation #mannequin_attack untitled.selection_id = @s untitled.selection_id

execute as @e[type=interaction,tag=untitled.mannequin_interaction] if score @s untitled.selection_id = #mannequin_attack untitled.selection_id if data entity @s attack run function untitled:player/interact/process_attack
execute as @e[type=interaction,tag=untitled.mannequin_interaction] if data entity @s attack run data remove entity @s attack