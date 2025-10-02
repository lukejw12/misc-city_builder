
data remove entity @s attack

execute if entity @e[tag=untitled.raycast_target] as @e[tag=untitled.raycast_target,limit=1] run damage @s 2 player_attack by @e[type=mannequin,tag=untitled.jeff,limit=1]
execute if entity @e[tag=untitled.raycast_target] run tag @e[tag=untitled.raycast_target] remove untitled.raycast_target

execute unless entity @e[tag=untitled.raycast_target] at @e[type=slime,tag=untitled.mannequin_highlight,limit=1] run function untitled:player/interact/break_block