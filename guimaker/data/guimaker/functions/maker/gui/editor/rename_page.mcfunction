#> Sayfa adını değiştir — marker'dan GUI/page bul, ops.page_name uygula
execute store result score $target_gui gm.Values run data get entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.GUI_ID
execute store result score $target_page gm.Values run data get entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.page_number
function guimaker:util/search/gui
execute if score $found_gui_idx gm.Values matches -1 run return 0
function guimaker:util/ops/get_page_count
function guimaker:util/page_search/page
execute if score $found_page_idx gm.Values matches -1 run return 0
data modify storage guimaker:temp ops.page_name set from storage guimaker:temp rename.page_name
function guimaker:util/ops/set_page_name
tellraw @s {"text":">> Sayfa adı güncellendi!","color":"green"}
data remove storage guimaker:temp rename
data remove storage guimaker:temp ops
function guimaker:maker/gui/editor/menu
