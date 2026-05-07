#> Add page to GUI[26]
scoreboard players set $found_gui_idx gm.Values 26
data modify storage guimaker:temp add.GUI_ID set from storage barden:gui.all GUI[26].GUI_ID
#> Barrel içeriğini al (oyuncu barrel üzerinde durmalı)
data modify storage guimaker:temp add.layout set from block ~ ~-1 ~ Items
function guimaker:maker/gui/add_page/add/1
