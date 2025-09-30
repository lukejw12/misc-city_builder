#execute as @a unless entity @s[tag=untitled.selecting] run function untitled:held_card/cleanup_raycast
#tag @a remove untitled.selecting

#execute as @a unless score @s untitled.selection_id matches 0.. run scoreboard players set @s untitled.selection_id 0
#execute as @a[scores={untitled.selection_id=0}] run function untitled:core/init_id
#execute if items entity @a weapon.* *[custom_data~{card:1b}] as @a at @s anchored eyes positioned ^ ^ ^ anchored feet run function untitled:held_card/start_raycast
#execute as @a if items entity @s weapon.* *[custom_data~{card:1b},!custom_data~{hammer:1b}] run function untitled:held_card/check_structure_placement
#execute as @a at @s anchored eyes positioned ^ ^ ^ anchored feet run function untitled:held_card/start_raycast
#execute as @a unless items entity @s weapon.* *[custom_data~{hammer:1b}] run function untitled:held_card/check_structure_placement
#execute as @a if items entity @s weapon.* *[custom_data~{hammer:1b}] run function untitled:held_card/check_hammer_usage
#execute as @e[type=item_display,tag=brick_factory] at @s run function untitled:structures/brick_factory/main


#execute as @e[type=armor_stand,tag=produced_item] at @s unless predicate untitled:items/has_passenger run kill @s
#execute as @e[tag=produced_item,tag=!processed,limit=1] at @s run function untitled:card_organization/try_stack


function untitled:restraint/controls/walk
