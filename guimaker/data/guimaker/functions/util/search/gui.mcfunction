#> GUI Search — $target_gui gm.Values = aranan GUI_ID
#> Sonuç: $found_gui_idx gm.Values (-1 = bulunamadı)
scoreboard players set $found_gui_idx gm.Values -1
execute store result score $gui_count gm.Values run data get storage barden:gui.all GUI
scoreboard players set $gui_search_i gm.Values 0
execute if score $gui_count gm.Values matches 1.. run function guimaker:util/search/gui_loop
