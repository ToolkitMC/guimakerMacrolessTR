#> Button NBT güncelle — $target_slot set edilmiş olmalı
#> Marker'dan GUI + page bilgilerini al
execute store result score $target_gui gm.Values run data get entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.GUI_ID
execute store result score $target_page gm.Values run data get entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.page_number
function guimaker:util/search/gui
execute if score $found_gui_idx gm.Values matches -1 run return 0
function guimaker:util/ops/get_page_count
function guimaker:util/page_search/page
execute if score $found_page_idx gm.Values matches -1 run return 0
execute if data storage guimaker:temp ops.function_file run function guimaker:util/ops/set_btn_function
execute if data storage guimaker:temp ops.item_modifier run function guimaker:util/ops/set_btn_modifier
execute as @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] at @s run data modify entity @s data.PAGE.INIT set from block ~ ~ ~ Items
tellraw @s {"text":">> Buton güncellendi!","color":"green"}
data remove storage guimaker:temp ops
data remove storage guimaker:temp btn_view
