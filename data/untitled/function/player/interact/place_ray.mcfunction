
execute unless block ~ ~ ~ #untitled:nonsolid unless block ~ ~ ~ #untitled:airs positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #untitled:airs unless entity @e[type=mannequin,tag=untitled.jeff,distance=...7] run function untitled:player/interact/place_from_hand with entity @a[tag=untitled.spectate,limit=1] SelectedItem
execute unless block ~ ~ ~ #untitled:nonsolid unless block ~ ~ ~ #untitled:airs run return 1
scoreboard players remove @s untitled.selection_steps 1
execute if score @s untitled.selection_steps matches 1.. positioned ^ ^ ^0.1 run function untitled:player/interact/place_ray