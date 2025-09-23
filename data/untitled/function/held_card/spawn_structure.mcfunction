execute if items entity @a[limit=1,sort=nearest] weapon.* *[custom_data~{brick_factory:1b}] run function untitled:structures/spawn_brick_factory

#execute if items entity @a[limit=1,sort=nearest] weapon.* *[custom_data~{wood_mill:1b}] run function untitled:structures/spawn_wood_mill

#execute if items entity @a[limit=1,sort=nearest] weapon.* *[custom_data~{stone_quarry:1b}] run function untitled:structures/spawn_stone_quarry

execute as @a[limit=1,sort=nearest] run item modify entity @s weapon {function:set_count,count:-1,add:true}
playsound block.stone.place master @a ~ ~ ~ 1 1