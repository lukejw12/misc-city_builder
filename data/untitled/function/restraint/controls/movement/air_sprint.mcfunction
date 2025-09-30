execute if entity @a[predicate=untitled:movement/forward] run data modify entity @s Motion[2] set value 0.28
execute if entity @a[predicate=untitled:movement/forward] unless entity @a[predicate=untitled:movement/left] unless entity @a[predicate=untitled:movement/right] run data modify entity @s Rotation[0] set value 0.0f

execute if entity @a[predicate=untitled:movement/backwards] run data modify entity @s Motion[2] set value -0.28
execute if entity @a[predicate=untitled:movement/backwards] unless entity @a[predicate=untitled:movement/left] unless entity @a[predicate=untitled:movement/right] run data modify entity @s Rotation[0] set value 180.0f

execute if entity @a[predicate=untitled:movement/right] run data modify entity @s Motion[0] set value -0.28
execute if entity @a[predicate=untitled:movement/right] unless entity @a[predicate=untitled:movement/forward] unless entity @a[predicate=untitled:movement/backwards] run data modify entity @s Rotation[0] set value 90.0f

execute if entity @a[predicate=untitled:movement/left] run data modify entity @s Motion[0] set value 0.28
execute if entity @a[predicate=untitled:movement/left] unless entity @a[predicate=untitled:movement/forward] unless entity @a[predicate=untitled:movement/backwards] run data modify entity @s Rotation[0] set value 270.0f

execute if entity @a[predicate=untitled:movement/forward,predicate=untitled:movement/left] run data modify entity @s Rotation[0] set value 315.0f
execute if entity @a[predicate=untitled:movement/forward,predicate=untitled:movement/right] run data modify entity @s Rotation[0] set value 45.0f
execute if entity @a[predicate=untitled:movement/backwards,predicate=untitled:movement/left] run data modify entity @s Rotation[0] set value 225.0f
execute if entity @a[predicate=untitled:movement/backwards,predicate=untitled:movement/right] run data modify entity @s Rotation[0] set value 135.0f

execute unless entity @a[predicate=untitled:movement/forward] unless entity @a[predicate=untitled:movement/backwards] store result score @s untitled.temp_motion run data get entity @s Motion[2] 1000
execute unless entity @a[predicate=untitled:movement/forward] unless entity @a[predicate=untitled:movement/backwards] run scoreboard players operation @s untitled.temp_motion *= #-1 untitled.temp
execute unless entity @a[predicate=untitled:movement/forward] unless entity @a[predicate=untitled:movement/backwards] run scoreboard players operation @s untitled.temp_motion /= #2 untitled.temp
execute unless entity @a[predicate=untitled:movement/forward] unless entity @a[predicate=untitled:movement/backwards] run scoreboard players operation @s untitled.temp_motion *= #-1 untitled.temp
execute unless entity @a[predicate=untitled:movement/forward] unless entity @a[predicate=untitled:movement/backwards] store result entity @s Motion[2] double 0.001 run scoreboard players get @s untitled.temp_motion

execute unless entity @a[predicate=untitled:movement/left] unless entity @a[predicate=untitled:movement/right] store result score @s untitled.temp_motion run data get entity @s Motion[0] 1000
execute unless entity @a[predicate=untitled:movement/left] unless entity @a[predicate=untitled:movement/right] run scoreboard players operation @s untitled.temp_motion *= #-1 untitled.temp
execute unless entity @a[predicate=untitled:movement/left] unless entity @a[predicate=untitled:movement/right] run scoreboard players operation @s untitled.temp_motion /= #2 untitled.temp
execute unless entity @a[predicate=untitled:movement/left] unless entity @a[predicate=untitled:movement/right] run scoreboard players operation @s untitled.temp_motion *= #-1 untitled.temp
execute unless entity @a[predicate=untitled:movement/left] unless entity @a[predicate=untitled:movement/right] store result entity @s Motion[0] double 0.001 run scoreboard players get @s untitled.temp_motion