#> Page Search — $found_gui_idx'deki GUI'nin PAGES'ini tarar
#> Girdi: $target_page gm.Values  Çıktı: $found_page_idx gm.Values (-1 = yok)
scoreboard players set $found_page_idx gm.Values -1
scoreboard players set $page_search_i gm.Values 0
function guimaker:util/page_search/dispatch
