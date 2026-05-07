#> Editör barrel — GUI[13] PAGES[8]
scoreboard players set $found_gui_idx gm.Values 13
scoreboard players set $found_page_idx gm.Values 8
summon minecraft:marker ~ ~-1 ~ {Tags:["gm.gui.container.place","gm.gui.block"],data:{GUI_ID:0,page_number:0}}
data modify entity @e[type=marker,tag=gm.gui.container.place,sort=nearest,limit=1] data.GUI_ID set from storage barden:gui.all GUI[13].GUI_ID
data modify entity @e[type=marker,tag=gm.gui.container.place,sort=nearest,limit=1] data.page_number set from storage barden:gui.all GUI[13].PAGES[8].page_number
tellraw @s {"text":"Barrel yerleştirildi! Bir butona tıklayın.","color":"aqua"}
