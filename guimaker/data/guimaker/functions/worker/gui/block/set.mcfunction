#> GUI Block Set — @s = gm.gui.container.place marker
setblock ~ ~ ~ minecraft:barrel{}
execute store result score $target_gui gm.Values run data get entity @s data.GUI_ID
execute store result score $target_page gm.Values run data get entity @s data.page_number
function guimaker:util/search/gui
execute if score $found_gui_idx gm.Values matches -1 run tellraw @a {"text":">> GUI bulunamadı!","color":"red"}
execute if score $found_gui_idx gm.Values matches -1 run kill @s
execute if score $found_gui_idx gm.Values matches -1 run return 0
function guimaker:util/ops/get_page_count
function guimaker:util/page_search/page
execute if score $found_page_idx gm.Values matches -1 run tellraw @a {"text":">> Sayfa bulunamadı!","color":"red"}
execute if score $found_page_idx gm.Values matches -1 run kill @s
execute if score $found_page_idx gm.Values matches -1 run return 0
function guimaker:worker/gui/block/fill
summon minecraft:marker ~ ~ ~ {Tags:["gm.itemcheck","gm.gui.block"],data:{PAGE:{INFO:{GUI_ID:0,page_number:0},INIT:[]}}}
data modify entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,sort=nearest,limit=1] data.PAGE.INFO.GUI_ID set from entity @s data.GUI_ID
data modify entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,sort=nearest,limit=1] data.PAGE.INFO.page_number set from entity @s data.page_number
execute as @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,sort=nearest,limit=1] at @s run function guimaker:worker/gui/block/init_marker
kill @s

execute as @a[tag=.this] at @s run tp @s ~ ~1 ~
execute as @a[tag=.this] at @s run tag @s remove .this
