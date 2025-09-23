execute if block ~ ~ ~ structure_void run setblock ~ ~ ~ air

execute as @e[tag=structure_display,distance=..1] if entity @s[tag=brick_factory] run give @a[limit=1,sort=nearest] red_dye[item_model="untitled:cards/pink-structures/brick_factory",item_name={"bold":false,"italic":false,"obfuscated":false,"strikethrough":false,"text":"Brick Factory","underlined":false},lore=[{"color":"gray","italic":false,"text":"Expedited Brick Production!"}," ",[{"color":"dark_gray","italic":false,"text":"Sell Value"},{"bold":false,"color":"gold","italic":false,"obfuscated":false,"strikethrough":false,"text":" 5¢","underlined":false}]],custom_data={brick_factory:1b,pink-structure:1b,card:1b}] 1

kill @e[tag=structure_display,distance=..1]

particle block{block_state:"minecraft:barrier"} ~ ~0.5 ~ 0.3 0.3 0.3 0.1 20