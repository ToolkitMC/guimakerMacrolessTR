#> Sayfa adı değiştir — guimaker:temp rename.{GUI_ID, page_number, page_name}
execute store result score $target_gui gm.Values run data get storage guimaker:temp rename.GUI_ID
function guimaker:util/search/gui
execute if score $found_gui_idx gm.Values matches -1 run return 0
execute store result score $target_page gm.Values run data get storage guimaker:temp rename.page_number
function guimaker:util/ops/get_page_count
function guimaker:util/page_search/page
execute if score $found_page_idx gm.Values matches -1 run return 0
data modify storage guimaker:temp ops.page_name set from storage guimaker:temp rename.page_name
function guimaker:util/ops/set_page_name
tellraw @s {"text":">> Sayfa adı güncellendi!","color":"green"}
data remove storage guimaker:temp rename
data remove storage guimaker:temp ops
