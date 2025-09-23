tag @s add processed
tag @s add checking_now

# Count cards in each stack with debug
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] run function untitled:card_organization/count_stack_size

# Debug output
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] if score @s untitled.stack_count matches 1 run say Stack count: 1
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] if score @s untitled.stack_count matches 2 run say Stack count: 2
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] if score @s untitled.stack_count matches 3 run say Stack count: 3
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] if score @s untitled.stack_count matches 4 run say Stack count: 4
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] if score @s untitled.stack_count matches 5 run say Stack count: 5
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] if score @s untitled.stack_count matches 6 run say Stack count: 6
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] if score @s untitled.stack_count matches 7 run say Stack count: 7
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] if score @s untitled.stack_count matches 8 run say Stack count: 8
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] if score @s untitled.stack_count matches 9 run say Stack count: 9
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] if score @s untitled.stack_count matches 10 run say Stack count: 10
execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] if score @s untitled.stack_count matches 11.. run say Stack count: 11+

execute if entity @e[tag=brick_factory_card,tag=card_base,tag=!checking_now,scores={untitled.stack_count=..9}] run say Found open stack
execute unless entity @e[tag=brick_factory_card,tag=card_base,tag=!checking_now,scores={untitled.stack_count=..9}] run say All stacks full

execute if entity @e[tag=brick_factory_card,tag=card_base,tag=!checking_now,scores={untitled.stack_count=..9}] run tag @s add found_open_stack

execute if entity @s[tag=found_open_stack] at @e[tag=brick_factory_card,tag=card_base,tag=!checking_now,scores={untitled.stack_count=..9},limit=1,sort=nearest] positioned ~ ~0.05 ~-0.3 run tp @s ~ ~ ~
execute if entity @s[tag=found_open_stack] run scoreboard players operation @s untitled.stack_id = @e[tag=brick_factory_card,tag=card_base,tag=!checking_now,scores={untitled.stack_count=..9},limit=1,sort=nearest] untitled.stack_id
execute if entity @s[tag=found_open_stack] run tag @e[tag=brick_factory_card,tag=card_base,tag=!checking_now,scores={untitled.stack_count=..9}] remove card_base
execute if entity @s[tag=found_open_stack] run data modify entity @s NoGravity set value 1b
execute if entity @s[tag=found_open_stack] run tag @s add stacked_card
execute if entity @s[tag=found_open_stack] run tag @s add card_base

execute unless entity @s[tag=found_open_stack] run scoreboard players add #next_stack_id untitled.temp 1
execute unless entity @s[tag=found_open_stack] run scoreboard players operation @s untitled.stack_id = #next_stack_id untitled.temp
execute unless entity @s[tag=found_open_stack] run tag @s add card_base

tag @s remove checking_now
tag @s remove found_open_stack