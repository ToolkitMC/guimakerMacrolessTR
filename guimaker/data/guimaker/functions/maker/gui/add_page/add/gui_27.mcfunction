#> Add page to GUI[27]
scoreboard players set $found_gui_idx gm.Values 27
data modify storage guimaker:temp add.GUI_ID set from storage barden:gui.all GUI[27].GUI_ID
#> Barrel içeriğini al (oyuncu barrel üzerinde durmalı)
data modify storage guimaker:temp add.layout set from block ~ ~-1 ~ Items
function guimaker:maker/gui/add_page/add/1
