#> Sayfa Sil — guimaker:temp del.GUI_ID + del.page_number
execute store result score $target_gui gm.Values run data get storage guimaker:temp del.GUI_ID
execute store result score $target_page gm.Values run data get storage guimaker:temp del.page_number
function guimaker:util/search/gui
execute if score $found_gui_idx gm.Values matches -1 run return 0
function guimaker:util/ops/get_page_count
function guimaker:util/page_search/page
execute if score $found_page_idx gm.Values matches -1 run return 0
function guimaker:util/ops/remove_page
tellraw @s {"text":">> Sayfa silindi!","color":"gray"}
data remove storage guimaker:temp del
