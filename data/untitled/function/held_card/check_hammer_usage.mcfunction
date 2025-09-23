scoreboard players operation #hammer untitled.selection_id = @s untitled.selection_id

execute as @e[tag=untitled.selector_interaction,type=interaction] if score @s untitled.selection_id = #hammer untitled.selection_id if data entity @s interaction run function untitled:held_card/use_hammer
execute as @e[tag=untitled.selector_interaction,type=interaction] if data entity @s interaction run data remove entity @s interaction