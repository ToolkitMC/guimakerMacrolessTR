#> Sayfa ekle — @s = builder oyuncu, ayak altında barrel olmalı
#> guimaker:temp add.GUI_ID'den GUI_ID gelir (add/gui_N tarafından set edilir)

#> Mevcut sayfa sayısını bul ($found_gui_idx set edilmiş olmalı)
function guimaker:util/ops/get_page_count

#> Yeni sayfa numarası = mevcut + 1
scoreboard players add $page_count gm.Values 1
function guimaker:username
execute store result storage guimaker:names Names.page_number int 1 run scoreboard players get $page_count gm.Values

#> Barrel içeriğini snapshot olarak al
data modify storage guimaker:temp add.layout set from block ~ ~-1 ~ Items

function guimaker:maker/gui/add_page/add/2
