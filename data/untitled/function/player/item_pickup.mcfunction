
data modify storage untitled:temp pickup_item set from entity @s Item

execute as @a[tag=untitled.spectate,limit=1] run function untitled:player/item_pickup_give with storage untitled:temp pickup_item

kill @s