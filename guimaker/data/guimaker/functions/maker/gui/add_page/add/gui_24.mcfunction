#> Add page to GUI[24]
scoreboard players set $found_gui_idx gm.Values 24
data modify storage guimaker:temp add.GUI_ID set from storage barden:gui.all GUI[24].GUI_ID
#> Barrel içeriğini al (oyuncu barrel üzerinde durmalı)
data modify storage guimaker:temp add.layout set from block ~ ~-1 ~ Items
function guimaker:maker/gui/add_page/add/1
