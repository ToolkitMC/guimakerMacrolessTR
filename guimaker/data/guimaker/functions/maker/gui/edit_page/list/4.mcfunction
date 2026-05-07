tellraw @s ["",{"storage":"guimaker:temp","nbt":"pages_list[0].page_name","interpret":true}]
tellraw @s ["",{"text":"  ▶ Sayfa #","color":"gold"},{"storage":"guimaker:temp","nbt":"pages_list[0].page_number","color":"gold"},{"text":"  [Düzenle]","color":"aqua","clickEvent":{"action":"run_command","value":"/function guimaker:maker/gui/edit_page/btn_info/show"}}]

data remove storage guimaker:temp pages_list[0]
scoreboard players remove $PAGES gm.Values 1
execute if score $PAGES gm.Values matches 1.. run function guimaker:maker/gui/edit_page/list/4
