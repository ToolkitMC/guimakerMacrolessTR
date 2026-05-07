#> Sayfa geçişi — @s = gm.itemcheck marker
#> $switch_target gm.Values = hedef page_number

#> GUI_ID'yi marker'dan al
execute store result score $target_gui gm.Values run data get entity @s data.PAGE.INFO.GUI_ID
function guimaker:util/search/gui
execute if score $found_gui_idx gm.Values matches -1 run return 0

#> Hedef sayfayı bul
scoreboard players operation $target_page gm.Values = $switch_target gm.Values
function guimaker:util/ops/get_page_count
function guimaker:util/page_search/page
execute if score $found_page_idx gm.Values matches -1 run return 0

#> Barrel'ı yeni sayfayla doldur
function guimaker:util/ops/get_layout
data modify block ~ ~ ~ Items set from storage guimaker:temp fill_layout

#> Marker PAGE.INFO.page_number güncelle
function guimaker:worker/gui/block/update_marker_page

#> INIT snapshot'ını tazele
data modify entity @s data.PAGE.INIT set from block ~ ~ ~ Items
