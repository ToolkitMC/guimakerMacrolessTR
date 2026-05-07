#> GUI Oluşturuldu bildirimi
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
tellraw @s ["",{"text":"[GUI Maker] ","bold":true,"color":"#3FFEFE"},{"text":"GUI Oluşturuldu!","bold":true,"color":"white"}]
tellraw @s ["",{"text":"Adı: ","color":"#39FFFF"},{"storage":"guimaker:names","nbt":"Names.GUI_NAME","color":"#BDBDFF"}]
tellraw @s ["",{"text":"GUI ID: #","color":"#FFDF8D"},{"storage":"guimaker:names","nbt":"Names.GUI_ID","color":"gold"}]
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0 0
