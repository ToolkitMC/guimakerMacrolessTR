data remove storage guimaker:temp list
scoreboard players set $gui_list_i gm.Values 0
scoreboard players set $page_list_i gm.Values 0
execute store result score $GUIS_OWNED gm.Values run data get storage barden:gui.all GUI
execute if score $GUIS_OWNED gm.Values matches 0 run function guimaker:maker/gui/get_list_of_guis/list/no_entry
execute if score $GUIS_OWNED gm.Values matches 1.. run data modify storage guimaker:temp list set from storage barden:gui.all GUI
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}
execute if score $GUIS_OWNED gm.Values matches 1.. run function guimaker:maker/gui/get_list_of_guis/list/2
tellraw @s {"text":"-------------------------------","color":"#FFDF8D"}

tag @s add .this
