execute unless block ~ ~ ~ #untitled:nonsolid run function untitled:held_card/hit_block
scoreboard players remove @s untitled.selection_steps 1
execute if score @s untitled.selection_steps matches 1.. if score @s untitled.selection_success matches 0 positioned ^ ^ ^0.1 run function untitled:held_card/ray