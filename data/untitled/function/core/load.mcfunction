# Selection Raycast
scoreboard objectives add untitled.selection_steps dummy
scoreboard objectives add untitled.selection_success dummy
scoreboard objectives add untitled.selection_id dummy
scoreboard objectives add untitled.function_block dummy
execute unless score $untitled.orangutang untitled.function_block matches 1.. run function untitled:core/otf
scoreboard objectives add untitled.decay_timer dummy

#factory production
scoreboard objectives add untitled.brick_timer dummy
scoreboard objectives add untitled.brick_production_rate dummy
scoreboard objectives add untitled.temp dummy

#card stacking
scoreboard objectives add untitled.card_type dummy
scoreboard objectives add untitled.stack_id dummy
scoreboard objectives add untitled.next_stack_id dummy
scoreboard objectives add untitled.temp_y dummy
scoreboard objectives add untitled.temp_z dummy
scoreboard objectives add untitled.stack_count dummy
scoreboard objectives add untitled.stack_size dummy

#controls
scoreboard objectives add untitled.motion_speed dummy
scoreboard objectives add untitled.walk_speed dummy
scoreboard objectives add untitled.crouch_speed dummy
scoreboard objectives add untitled.sprint_speed dummy
scoreboard objectives add untitled.temp_motion dummy

scoreboard objectives add untitled.momentum_timer dummy