#> GUI[8] seç — sayfa listesini editör modunda göster
scoreboard players set $found_gui_idx gm.Values 8
execute store result score $page_count gm.Values run data get storage barden:gui.all GUI[8].PAGES
data remove storage guimaker:temp pages_list
execute if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[8].PAGES
scoreboard players set $page_list_i gm.Values 0
scoreboard players operation $PAGES gm.Values = $page_count gm.Values
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
execute if score $PAGES gm.Values matches 0 run tellraw @s {"text":">> Bu GUI'de sayfa yok!","color":"gray"}
execute if score $PAGES gm.Values matches 1.. run function guimaker:maker/gui/edit_page/list/edit_pages
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
