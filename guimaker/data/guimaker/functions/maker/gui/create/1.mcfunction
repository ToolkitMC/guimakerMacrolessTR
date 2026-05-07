#> GUI Oluştur — 1.20.1 uyumlu (makro yok)
function guimaker:username

scoreboard players operation $generated_id gm.Values = $globalCreationID gm.Values
execute store result storage guimaker:names Names.GUI_ID int 1 run scoreboard players get $generated_id gm.Values
scoreboard players add $globalCreationID gm.Values 1

#> GUI_NAME'i username'den oluştur — storage üzerinden tell komutu yerine
#> 1.20.1: data modify storage ... set value ile sabit prefix, username eklenir
data modify storage guimaker:names Names.GUI_NAME set value ""
function guimaker:maker/gui/create/2

function guimaker:maker/gui/create/tellraw

scoreboard players reset @s gm-createGUIprofile
scoreboard players enable @s gm-createGUIprofile
