#> Editörden çık — marker'ı öldür, tag'i kaldır, trigger'ı sıfırla
execute as @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,sort=nearest,limit=1] at @s run setblock ~ ~ ~ air
kill @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,sort=nearest,limit=1]
tag @s remove gm.editing_page
scoreboard players reset @s gm-editorMenu
scoreboard players enable @s gm-editorMenu
tellraw @s {"text":">> Editörden çıkıldı.","color":"gray"}
