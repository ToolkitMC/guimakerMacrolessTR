#> Editör menüsü — gm-editorMenu trigger'ından çağrılır
#> $found_gui_idx + $found_page_idx marker'dan okunur
execute store result score $found_gui_idx gm.Values run data get entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.GUI_ID
execute store result score $target_gui gm.Values run data get entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.GUI_ID
execute store result score $target_page gm.Values run data get entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.page_number
function guimaker:util/search/gui
function guimaker:util/ops/get_page_count
function guimaker:util/page_search/page
function guimaker:maker/gui/editor/header
