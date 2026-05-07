#> Yeni sayfa compound oluştur ve storage'a ekle
data remove storage guimaker:temp ops.new_page
data modify storage guimaker:temp ops.new_page.page_number set from storage guimaker:names Names.page_number
data modify storage guimaker:temp ops.new_page.page_name set value "[{\"text\":\"Yeni Sayfa\"}]"
data modify storage guimaker:temp ops.new_page.layout set from storage guimaker:temp add.layout
data modify storage guimaker:temp ops.new_page.layout[].tag.gm.Button set value 1b
data modify storage guimaker:temp ops.new_page.layout[].tag.BUTTON_INFO.function_file set value "guimaker:extra/empty"
data modify storage guimaker:temp ops.new_page.layout[].tag.BUTTON_INFO.item_modifier set value "empty"
function guimaker:util/ops/add_page
data remove storage guimaker:temp add
data remove storage guimaker:temp ops.new_page
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"[GUI Maker] ","bold":true,"color":"#3FFEFE"},{"text":"Sayfa eklendi!","color":"white"}]
