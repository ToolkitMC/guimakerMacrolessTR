#> Edit Page trigger girişi
function guimaker:username
function guimaker:maker/gui/edit_page/list/1
tag @s add gm.editing_page
scoreboard players reset @s gm-editPage
scoreboard players enable @s gm-editPage
scoreboard objectives add gm-editorMenu trigger
scoreboard players enable @s gm-editorMenu
