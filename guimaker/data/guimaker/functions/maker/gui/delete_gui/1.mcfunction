#> GUI Sil — guimaker:temp del.GUI_ID
execute store result score $target_gui gm.Values run data get storage guimaker:temp del.GUI_ID
function guimaker:util/ops/remove_gui
execute if score $found_gui_idx gm.Values matches -1 run tellraw @s {"text":">> GUI bulunamadı!","color":"red"}
execute unless score $found_gui_idx gm.Values matches -1 run tellraw @s {"text":">> GUI silindi!","color":"gray"}
data remove storage guimaker:temp del
