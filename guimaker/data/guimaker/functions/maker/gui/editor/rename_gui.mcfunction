#> GUI adını değiştir — $found_gui_idx dispatch
execute store result score $target_gui gm.Values run data get entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.GUI_ID
function guimaker:util/search/gui
execute if score $found_gui_idx gm.Values matches -1 run return 0
execute if score $found_gui_idx gm.Values matches 0 run data modify storage barden:gui.all GUI[0].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 1 run data modify storage barden:gui.all GUI[1].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 2 run data modify storage barden:gui.all GUI[2].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 3 run data modify storage barden:gui.all GUI[3].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 4 run data modify storage barden:gui.all GUI[4].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 5 run data modify storage barden:gui.all GUI[5].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 6 run data modify storage barden:gui.all GUI[6].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 7 run data modify storage barden:gui.all GUI[7].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 8 run data modify storage barden:gui.all GUI[8].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 9 run data modify storage barden:gui.all GUI[9].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 10 run data modify storage barden:gui.all GUI[10].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 11 run data modify storage barden:gui.all GUI[11].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 12 run data modify storage barden:gui.all GUI[12].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 13 run data modify storage barden:gui.all GUI[13].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 14 run data modify storage barden:gui.all GUI[14].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 15 run data modify storage barden:gui.all GUI[15].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 16 run data modify storage barden:gui.all GUI[16].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 17 run data modify storage barden:gui.all GUI[17].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 18 run data modify storage barden:gui.all GUI[18].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 19 run data modify storage barden:gui.all GUI[19].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 20 run data modify storage barden:gui.all GUI[20].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 21 run data modify storage barden:gui.all GUI[21].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 22 run data modify storage barden:gui.all GUI[22].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 23 run data modify storage barden:gui.all GUI[23].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 24 run data modify storage barden:gui.all GUI[24].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 25 run data modify storage barden:gui.all GUI[25].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 26 run data modify storage barden:gui.all GUI[26].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 27 run data modify storage barden:gui.all GUI[27].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 28 run data modify storage barden:gui.all GUI[28].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 29 run data modify storage barden:gui.all GUI[29].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 30 run data modify storage barden:gui.all GUI[30].GUI_NAME set from storage guimaker:temp rename.gui_name
execute if score $found_gui_idx gm.Values matches 31 run data modify storage barden:gui.all GUI[31].GUI_NAME set from storage guimaker:temp rename.gui_name
tellraw @s {"text":">> GUI adı güncellendi!","color":"green"}
data remove storage guimaker:temp rename
function guimaker:maker/gui/editor/menu
