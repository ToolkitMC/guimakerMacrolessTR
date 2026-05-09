#> Editörden sayfa ekle — ayak altındaki barrel layout olur
#> @s = oyuncu (gm.editing_page tag'li)
#> $found_gui_idx marker'dan alınır
execute store result score $target_gui gm.Values run data get entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.GUI_ID
function guimaker:util/search/gui
execute if score $found_gui_idx gm.Values matches -1 run return 0
data modify storage guimaker:temp add.GUI_ID set from entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.GUI_ID
data modify storage guimaker:temp add.layout set from block ~ ~-1 ~ Items
function guimaker:maker/gui/add_page/add/1
function guimaker:maker/gui/editor/menu
