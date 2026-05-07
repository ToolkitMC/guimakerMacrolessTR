#> Slot 14 buton bilgisi — @s = editing_page oyuncu
#> Marker'dan Slot 14'nin BUTTON_INFO'sunu çek
data remove storage guimaker:temp btn_view
data modify storage guimaker:temp btn_view set from entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INIT[{Slot:14b}].tag.BUTTON_INFO

tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
tellraw @s ["",{"text":"[GUI Maker] ","bold":true,"color":"#3FFEFE"},{"text":"Slot 14 Buton Ayarı","color":"white"}]
tellraw @s ["",{"text":"function_file: ","color":"#94E664"},{"storage":"guimaker:temp","nbt":"btn_view.function_file","color":"yellow"}]
tellraw @s ["",{"text":"item_modifier: ","color":"#75FF00"},{"storage":"guimaker:temp","nbt":"btn_view.item_modifier","color":"yellow"}]
tellraw @s ["",{"text":"[Sil]","color":"red","clickEvent":{"action":"suggest_command","value":"/function guimaker:maker/gui/delete_page/1"}},{"text":"  "},{"text":"[Sayfayı Sil]","color":"dark_red","clickEvent":{"action":"suggest_command","value":"/function guimaker:maker/gui/delete_gui/1"}}]
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
scoreboard players set $clicked gm.Tests 1