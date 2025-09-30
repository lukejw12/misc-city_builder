
execute unless entity @a[predicate=untitled:movement/sprint] run tag @s remove untitled.sprint
execute if entity @a[predicate=untitled:movement/sprint] run tag @s add untitled.sprint

execute unless entity @a[predicate=untitled:movement/sneak] run tag @s remove untitled.sneak
execute if entity @a[predicate=untitled:movement/sneak] run tag @s add untitled.sneak

execute if data entity @s {OnGround:1b} run tag @s remove untitled.airborne
execute if data entity @s {OnGround:0b} run tag @s add untitled.airborne

execute if entity @s[tag=untitled.sneak] run data merge entity @s {pose:"crouching"}
execute if entity @s[tag=!untitled.sneak] run data merge entity @s {pose:"standing"}

execute if entity @s[tag=untitled.airborne,tag=!untitled.sprint] run function untitled:restraint/controls/movement/air_normal
execute if entity @s[tag=untitled.airborne,tag=untitled.sprint] run function untitled:restraint/controls/movement/air_sprint
execute if entity @s[tag=!untitled.airborne,tag=untitled.sneak] run function untitled:restraint/controls/movement/ground_sneak
execute if entity @s[tag=!untitled.airborne,tag=!untitled.sprint,tag=!untitled.sneak] run function untitled:restraint/controls/movement/ground_normal
execute if entity @s[tag=!untitled.airborne,tag=untitled.sprint] run function untitled:restraint/controls/movement/ground_sprint

execute if entity @s[tag=!untitled.airborne] if entity @a[predicate=untitled:movement/jump] run function untitled:restraint/controls/jump