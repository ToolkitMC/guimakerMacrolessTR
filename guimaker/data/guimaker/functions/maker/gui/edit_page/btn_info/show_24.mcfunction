#> Slot 24 buton bilgisi — @s = editing_page oyuncu
#> Marker'dan Slot 24'nin BUTTON_INFO'sunu çek
data remove storage guimaker:temp btn_view
data modify storage guimaker:temp btn_view set from entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INIT[{Slot:24b}].tag.BUTTON_INFO

tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
tellraw @s ["",{"text":"[GUI Maker] ","bold":true,"color":"#3FFEFE"},{"text":"Slot 24 Buton Ayarı","color":"white"}]
tellraw @s ["",{"text":"function_file: ","color":"#94E664"},{"storage":"guimaker:temp","nbt":"btn_view.function_file","color":"yellow"}]
tellraw @s ["",{"text":"item_modifier: ","color":"#75FF00"},{"storage":"guimaker:temp","nbt":"btn_view.item_modifier","color":"yellow"}]
tellraw @s ["",{"text":"switch_page: ","color":"#FFB347"},{"storage":"guimaker:temp","nbt":"btn_view.switch_page","color":"#FFD700"}]
tellraw @s ["",{"text":"[switch_page ayarla: ","color":"gray"},{"text":"/data modify storage guimaker:temp ops.switch_page set value <page_no>","color":"aqua","clickEvent":{"action":"suggest_command","value":"/data modify storage guimaker:temp ops.switch_page set value 2"}},{"text":"]","color":"gray"}]
tellraw @s ["",{"text":"[switch_page temizle]","color":"#FF6666","clickEvent":{"action":"run_command","value":"/function guimaker:maker/gui/edit_page/btn_info/clear_switch_page"}}]
tellraw @s ["",{"text":"[Sil]","color":"red","clickEvent":{"action":"suggest_command","value":"/function guimaker:maker/gui/delete_page/1"}},{"text":"  "},{"text":"[Sayfayı Sil]","color":"dark_red","clickEvent":{"action":"suggest_command","value":"/function guimaker:maker/gui/delete_gui/1"}}]
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
scoreboard players set $target_slot gm.Values 24
scoreboard players set $clicked gm.Tests 1
