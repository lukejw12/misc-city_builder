
execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=!#untitled:non_targetable,type=!player,type=!mannequin,dx=0,dy=0,dz=0] run function untitled:player/interact/raycast/hit_entity
execute unless block ~ ~ ~ #untitled:nonsolid unless block ~ ~ ~ #untitled:airs run function untitled:player/interact/raycast/hit_block
scoreboard players remove @s untitled.selection_steps 1
execute if score @s untitled.selection_steps matches 1.. if score @s untitled.selection_success matches 0 positioned ^ ^ ^0.1 run function untitled:player/interact/raycast/ray