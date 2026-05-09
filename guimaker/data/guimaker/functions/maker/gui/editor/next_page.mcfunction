#> Sonraki sayfaya geç — $found_gui_idx + $found_page_idx hazır olmalı
function guimaker:util/ops/get_page_count
scoreboard players operation $next_p gm.Values = $found_page_idx gm.Values
scoreboard players add $next_p gm.Values 1
execute if score $next_p gm.Values >= $page_count gm.Values run tellraw @s {"text":">> Son sayfadasınız!","color":"gray"}
execute if score $next_p gm.Values >= $page_count gm.Values run return 0
scoreboard players operation $found_page_idx gm.Values = $next_p gm.Values
function guimaker:maker/gui/editor/page_reload
