#> Sayfa listesi — $found_gui_idx set edilmiş olmalı
data remove storage guimaker:temp pages_list
function guimaker:util/ops/get_page_count
execute if score $page_count gm.Values matches 0 run tellraw @s {"text":">> Bu GUI'de sayfa yok!","color":"gray"}
execute if score $found_gui_idx gm.Values matches 0 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[0].PAGES
execute if score $found_gui_idx gm.Values matches 1 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[1].PAGES
execute if score $found_gui_idx gm.Values matches 2 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[2].PAGES
execute if score $found_gui_idx gm.Values matches 3 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[3].PAGES
execute if score $found_gui_idx gm.Values matches 4 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[4].PAGES
execute if score $found_gui_idx gm.Values matches 5 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[5].PAGES
execute if score $found_gui_idx gm.Values matches 6 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[6].PAGES
execute if score $found_gui_idx gm.Values matches 7 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[7].PAGES
execute if score $found_gui_idx gm.Values matches 8 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[8].PAGES
execute if score $found_gui_idx gm.Values matches 9 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[9].PAGES
execute if score $found_gui_idx gm.Values matches 10 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[10].PAGES
execute if score $found_gui_idx gm.Values matches 11 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[11].PAGES
execute if score $found_gui_idx gm.Values matches 12 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[12].PAGES
execute if score $found_gui_idx gm.Values matches 13 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[13].PAGES
execute if score $found_gui_idx gm.Values matches 14 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[14].PAGES
execute if score $found_gui_idx gm.Values matches 15 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[15].PAGES
execute if score $found_gui_idx gm.Values matches 16 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[16].PAGES
execute if score $found_gui_idx gm.Values matches 17 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[17].PAGES
execute if score $found_gui_idx gm.Values matches 18 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[18].PAGES
execute if score $found_gui_idx gm.Values matches 19 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[19].PAGES
execute if score $found_gui_idx gm.Values matches 20 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[20].PAGES
execute if score $found_gui_idx gm.Values matches 21 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[21].PAGES
execute if score $found_gui_idx gm.Values matches 22 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[22].PAGES
execute if score $found_gui_idx gm.Values matches 23 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[23].PAGES
execute if score $found_gui_idx gm.Values matches 24 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[24].PAGES
execute if score $found_gui_idx gm.Values matches 25 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[25].PAGES
execute if score $found_gui_idx gm.Values matches 26 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[26].PAGES
execute if score $found_gui_idx gm.Values matches 27 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[27].PAGES
execute if score $found_gui_idx gm.Values matches 28 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[28].PAGES
execute if score $found_gui_idx gm.Values matches 29 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[29].PAGES
execute if score $found_gui_idx gm.Values matches 30 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[30].PAGES
execute if score $found_gui_idx gm.Values matches 31 if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[31].PAGES
scoreboard players set $page_list_i gm.Values 0
scoreboard players operation $PAGES gm.Values = $page_count gm.Values
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
execute if score $PAGES gm.Values matches 1.. run function guimaker:maker/gui/edit_page/list/4
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
