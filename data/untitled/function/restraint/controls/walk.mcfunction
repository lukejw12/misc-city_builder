#execute as @a if predicate untitled:movement/forward as @e[tag=untitled.restraints] at @s rotated as @p[predicate=untitled:movement/forward] rotated ~ 0 run tp @s ^ ^ ^0.3
#execute as @a at @s if predicate untitled:movement/forward positioned as @e[tag=untitled.center,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~

#execute as @a if predicate untitled:movement/backwards as @e[tag=untitled.restraints] at @s rotated as @p[predicate=untitled:movement/backwards] rotated ~ 0 run tp @s ^ ^ ^-0.3
#execute as @a at @s if predicate untitled:movement/backwards positioned as @e[tag=untitled.center,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~

#execute as @a if predicate untitled:movement/right as @e[tag=untitled.restraints] at @s rotated as @p[predicate=untitled:movement/right] rotated ~ 0 run tp @s ^0.3 ^ ^
#execute as @a at @s if predicate untitled:movement/right positioned as @e[tag=untitled.center,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~

#execute as @a if predicate untitled:movement/left as @e[tag=untitled.restraints] at @s rotated as @p[predicate=untitled:movement/left] rotated ~ 0 run tp @s ^-0.3 ^ ^
#execute as @a at @s if predicate untitled:movement/left positioned as @e[tag=untitled.center,limit=1,sort=nearest] rotated as @s run tp @s ~ ~ ~
#execute as @a unless predicate untitled:movement/sneak as @e[tag=untitled.jeff,limit=1] at @s run tag @s remove untitled.sneak
#execute as @a if predicate untitled:movement/sneak as @e[tag=untitled.jeff,limit=1] at @s run tag @s add untitled.sneak




execute as @a unless predicate untitled:movement/sprint as @e[tag=untitled.jeff,limit=1] at @s run tag @s remove untitled.sprint
execute as @a if predicate untitled:movement/sprint as @e[tag=untitled.jeff,limit=1] at @s run tag @s add untitled.sprint
execute as @e[tag=untitled.jeff,limit=1] at @s if data entity @s {OnGround:1b} run tag @s remove untitled.airborne
execute as @e[tag=untitled.jeff,limit=1] at @s if data entity @s {OnGround:0b} run tag @s add untitled.airborne

execute as @e[tag=untitled.jeff,limit=1,tag=untitled.sneak] run data merge entity @s {pose:"crouching"}
execute as @e[tag=untitled.jeff,limit=1,tag=!untitled.sneak] run data merge entity @s {pose:"standing"}

# Forward movement
execute as @a if predicate untitled:movement/forward as @e[tag=untitled.jeff,limit=1,tag=untitled.airborne,tag=!untitled.sprint] run data modify entity @s Motion[2] set value 0.1
execute as @a if predicate untitled:movement/forward as @e[tag=untitled.jeff,limit=1,tag=untitled.airborne,tag=untitled.sprint] run data modify entity @s Motion[2] set value 0.2
execute as @a if predicate untitled:movement/forward as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=untitled.sneak] run data modify entity @s Motion[2] set value 0.15
execute as @a if predicate untitled:movement/forward as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=!untitled.sprint,tag=!untitled.sneak] run data modify entity @s Motion[2] set value 0.2
execute as @a if predicate untitled:movement/forward as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=untitled.sprint] run data modify entity @s Motion[2] set value 0.35
execute as @a if predicate untitled:movement/forward unless predicate untitled:movement/left unless predicate untitled:movement/right as @e[tag=untitled.jeff,limit=1] run data modify entity @s Rotation[0] set value 0.0f

# Backwards movement
execute as @a if predicate untitled:movement/backwards as @e[tag=untitled.jeff,limit=1,tag=untitled.airborne,tag=!untitled.sprint] run data modify entity @s Motion[2] set value -0.1
execute as @a if predicate untitled:movement/backwards as @e[tag=untitled.jeff,limit=1,tag=untitled.airborne,tag=untitled.sprint] run data modify entity @s Motion[2] set value -0.2
execute as @a if predicate untitled:movement/backwards as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=untitled.sneak] run data modify entity @s Motion[2] set value -0.15
execute as @a if predicate untitled:movement/backwards as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=!untitled.sprint,tag=!untitled.sneak] run data modify entity @s Motion[2] set value -0.2
execute as @a if predicate untitled:movement/backwards as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=untitled.sprint] run data modify entity @s Motion[2] set value -0.35
execute as @a if predicate untitled:movement/backwards unless predicate untitled:movement/left unless predicate untitled:movement/right as @e[tag=untitled.jeff,limit=1] run data modify entity @s Rotation[0] set value 180.0f

# Right movement  
execute as @a if predicate untitled:movement/right as @e[tag=untitled.jeff,limit=1,tag=untitled.airborne,tag=!untitled.sprint] run data modify entity @s Motion[0] set value -0.1
execute as @a if predicate untitled:movement/right as @e[tag=untitled.jeff,limit=1,tag=untitled.airborne,tag=untitled.sprint] run data modify entity @s Motion[0] set value -0.2
execute as @a if predicate untitled:movement/right as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=untitled.sneak] run data modify entity @s Motion[0] set value -0.15
execute as @a if predicate untitled:movement/right as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=!untitled.sprint,tag=!untitled.sneak] run data modify entity @s Motion[0] set value -0.2
execute as @a if predicate untitled:movement/right as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=untitled.sprint] run data modify entity @s Motion[0] set value -0.35
execute as @a if predicate untitled:movement/right unless predicate untitled:movement/forward unless predicate untitled:movement/backwards as @e[tag=untitled.jeff,limit=1] run data modify entity @s Rotation[0] set value 90.0f

# Left movement
execute as @a if predicate untitled:movement/left as @e[tag=untitled.jeff,limit=1,tag=untitled.airborne,tag=!untitled.sprint] run data modify entity @s Motion[0] set value 0.1
execute as @a if predicate untitled:movement/left as @e[tag=untitled.jeff,limit=1,tag=untitled.airborne,tag=untitled.sprint] run data modify entity @s Motion[0] set value 0.2
execute as @a if predicate untitled:movement/left as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=untitled.sneak] run data modify entity @s Motion[0] set value 0.15
execute as @a if predicate untitled:movement/left as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=!untitled.sprint,tag=!untitled.sneak] run data modify entity @s Motion[0] set value 0.2
execute as @a if predicate untitled:movement/left as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne,tag=untitled.sprint] run data modify entity @s Motion[0] set value 0.35
execute as @a if predicate untitled:movement/left unless predicate untitled:movement/forward unless predicate untitled:movement/backwards as @e[tag=untitled.jeff,limit=1] run data modify entity @s Rotation[0] set value 270.0f

# sTRAFE rotations
execute as @a if predicate untitled:movement/forward if predicate untitled:movement/left as @e[tag=untitled.jeff,limit=1] run data modify entity @s Rotation[0] set value 315.0f
execute as @a if predicate untitled:movement/forward if predicate untitled:movement/right as @e[tag=untitled.jeff,limit=1] run data modify entity @s Rotation[0] set value 45.0f
execute as @a if predicate untitled:movement/backwards if predicate untitled:movement/left as @e[tag=untitled.jeff,limit=1] run data modify entity @s Rotation[0] set value 225.0f
execute as @a if predicate untitled:movement/backwards if predicate untitled:movement/right as @e[tag=untitled.jeff,limit=1] run data modify entity @s Rotation[0] set value 135.0f

# Jump
execute as @a if predicate untitled:movement/jump as @e[tag=untitled.jeff,limit=1,tag=!untitled.airborne] run data modify entity @s Motion[1] set value 0.44

execute unless entity @e[tag=untitled.camera] run summon armor_stand ~ ~6 ~-8 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["untitled.camera"]}

execute as @e[tag=untitled.jeff,limit=1] at @s positioned ~ ~8 ~-10 run tp @e[tag=untitled.camera,limit=1] ~ ~ ~ 0 30
execute as @a[tag=untitled.spectate] run spectate @e[tag=untitled.camera,limit=1] @s
