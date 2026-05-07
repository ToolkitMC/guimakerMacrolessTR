#> Place GUI[25] PAGES[10] barrel — @s = oyuncu
summon minecraft:marker ~ ~-1 ~ {Tags:["gm.gui.container.place","gm.gui.block"],data:{GUI_ID:0,page_number:0}}
data modify entity @e[type=marker,tag=gm.gui.container.place,sort=nearest,limit=1] data.GUI_ID set from storage barden:gui.all GUI[25].GUI_ID
data modify entity @e[type=marker,tag=gm.gui.container.place,sort=nearest,limit=1] data.page_number set from storage barden:gui.all GUI[25].PAGES[10].page_number
tellraw @s {"text":">> Barrel GUI yerleştirildi!","color":"green"}
