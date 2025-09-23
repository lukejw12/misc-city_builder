scoreboard players operation #current_stack untitled.temp = @s untitled.stack_id
scoreboard players set #temp_count untitled.temp 0
execute as @e[tag=brick_factory_card] if score @s untitled.stack_id = #current_stack untitled.temp run scoreboard players add #temp_count untitled.temp 1
scoreboard players operation @s untitled.stack_count = #temp_count untitled.temp