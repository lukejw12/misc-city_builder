

scoreboard players set @s untitled.selection_steps 50
scoreboard players set @s untitled.selection_success 0
function untitled:player/interact/raycast/ray

execute if score @s untitled.selection_success matches 0 run function untitled:player/interact/raycast/cleanup