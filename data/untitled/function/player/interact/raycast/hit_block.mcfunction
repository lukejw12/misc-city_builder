
execute unless entity @e[type=slime,tag=untitled.mannequin_highlight] align xyz positioned ~0.5 ~ ~0.5 run summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["untitled.mannequin_highlight","untitled.new_highlight"],attributes:[{id:"minecraft:scale",base:2}]}

team join untitled.no_collision @e[tag=untitled.new_highlight]
tag @e[tag=untitled.new_highlight] remove untitled.new_highlight

execute align xyz positioned ~0.5 ~ ~0.5 as @e[type=slime,tag=untitled.mannequin_highlight,limit=1] run tp @s ~ ~ ~


scoreboard players set @s untitled.selection_success 1