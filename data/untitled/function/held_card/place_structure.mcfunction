data remove entity @s interaction

scoreboard players operation #placement untitled.selection_id = @s untitled.selection_id

execute as @e[tag=untitled.selector_point,type=slime] if score @s untitled.selection_id = #placement untitled.selection_id at @s align xyz unless block ~ ~ ~ structure_void positioned ~0.5 ~1.5 ~0.5 run function untitled:held_card/spawn_structure with entity @a[limit=1,sort=nearest]
