#> Sayfa Ekle — ayak altındaki bloğun bir container olması gerekir
execute unless block ~ ~-1 ~ #guimaker:container run function guimaker:maker/gui/add_page/not_standing_on_container
execute if block ~ ~-1 ~ #guimaker:container run function guimaker:maker/gui/add_page/2

scoreboard players reset @s gm-addPage
scoreboard players enable @s gm-addPage
