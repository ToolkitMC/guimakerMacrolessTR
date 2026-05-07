#> GUI[1] seç — sayfa listesini göster (barrel yerleştirme için)
scoreboard players set $found_gui_idx gm.Values 1
execute store result score $page_count gm.Values run data get storage barden:gui.all GUI[1].PAGES
data remove storage guimaker:temp pages_list
execute if score $page_count gm.Values matches 1.. run data modify storage guimaker:temp pages_list set from storage barden:gui.all GUI[1].PAGES
scoreboard players set $page_list_i gm.Values 0
scoreboard players operation $PAGES gm.Values = $page_count gm.Values
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
execute if score $PAGES gm.Values matches 0 run tellraw @s {"text":">> Bu GUI'de sayfa yok!","color":"gray"}
execute if score $PAGES gm.Values matches 1.. run function guimaker:maker/gui/get_list_of_guis/list/pages
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
