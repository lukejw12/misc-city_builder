execute as @a if predicate untitled:movement/forward as @e[tag=untitled.restraints] at @s rotated as @p[predicate=untitled:movement/forward] rotated ~ 0 run tp @s ^ ^ ^0.3
execute as @a at @s if predicate untitled:movement/forward positioned as @e[tag=untitled.center,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~

execute as @a if predicate untitled:movement/backwards as @e[tag=untitled.restraints] at @s rotated as @p[predicate=untitled:movement/backwards] rotated ~ 0 run tp @s ^ ^ ^-0.3
execute as @a at @s if predicate untitled:movement/backwards positioned as @e[tag=untitled.center,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~

execute as @a if predicate untitled:movement/left as @e[tag=untitled.restraints] at @s rotated as @p[predicate=untitled:movement/left] rotated ~ 0 run tp @s ^0.3 ^ ^
execute as @a at @s if predicate untitled:movement/left positioned as @e[tag=untitled.center,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~

execute as @a if predicate untitled:movement/right as @e[tag=untitled.restraints] at @s rotated as @p[predicate=untitled:movement/right] rotated ~ 0 run tp @s ^-0.3 ^ ^
execute as @a at @s if predicate untitled:movement/right positioned as @e[tag=untitled.center,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~
