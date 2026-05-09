#> Önceki sayfaya geç — $found_gui_idx + $found_page_idx hazır olmalı
execute if score $found_page_idx gm.Values matches 0 run tellraw @s {"text":">> İlk sayfadasınız!","color":"gray"}
execute if score $found_page_idx gm.Values matches 0 run return 0
scoreboard players remove $found_page_idx gm.Values 1
function guimaker:maker/gui/editor/page_reload
