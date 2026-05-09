#> Editör barrel — GUI[6] PAGES[1]
scoreboard players set $found_gui_idx gm.Values 6
scoreboard players set $found_page_idx gm.Values 1
kill @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,sort=nearest,limit=1]
summon minecraft:marker ~ ~-1 ~ {Tags:["gm.gui.container.place","gm.gui.block"],data:{GUI_ID:0,page_number:0}}
data modify entity @e[type=marker,tag=gm.gui.container.place,sort=nearest,limit=1] data.GUI_ID set from storage barden:gui.all GUI[6].GUI_ID
data modify entity @e[type=marker,tag=gm.gui.container.place,sort=nearest,limit=1] data.page_number set from storage barden:gui.all GUI[6].PAGES[1].page_number
