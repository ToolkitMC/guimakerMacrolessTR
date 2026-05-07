#> Add page to GUI[30]
scoreboard players set $found_gui_idx gm.Values 30
data modify storage guimaker:temp add.GUI_ID set from storage barden:gui.all GUI[30].GUI_ID
#> Barrel içeriğini al (oyuncu barrel üzerinde durmalı)
data modify storage guimaker:temp add.layout set from block ~ ~-1 ~ Items
function guimaker:maker/gui/add_page/add/1
