#> Sayfa silme onayı — $found_gui_idx + $found_page_idx hazır olmalı
execute store result score $target_gui gm.Values run data get entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.GUI_ID
execute store result score $target_page gm.Values run data get entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.page_number
data modify storage guimaker:temp del.GUI_ID set from entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.GUI_ID
data modify storage guimaker:temp del.page_number set from entity @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block,limit=1,sort=nearest] data.PAGE.INFO.page_number
tellraw @s ["",{"text":"[EVET — Sayfayı Sil]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function guimaker:maker/gui/editor/delete_page_do"}},{"text":"  "},{"text":"[Vazgeç]","color":"gray","clickEvent":{"action":"run_command","value":"/function guimaker:maker/gui/editor/header"}}]
