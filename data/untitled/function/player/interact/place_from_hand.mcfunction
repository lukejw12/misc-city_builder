
$setblock ~ ~ ~ $(id)

execute as @a[tag=untitled.spectate,limit=1] run item modify entity @s weapon.mainhand {function:"set_count",count:-1,add:true}

playsound minecraft:block.stone.place master @a ~ ~ ~ 1 1