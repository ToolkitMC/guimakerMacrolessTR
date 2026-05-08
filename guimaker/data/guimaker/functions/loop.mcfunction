#> GUI Maker 1.20.1 — Ana Tick Loop

#> Trigger komutlarını işle (creative-only maker)
execute as @a[scores={gm-createGUIprofile=1..}] at @s run function guimaker:maker/gui/create/1
execute as @a[scores={gm-addPage=1..}] at @s run function guimaker:maker/gui/add_page/1
execute as @a[scores={gm-editPage=1..}] at @s run function guimaker:maker/gui/edit_page/1
execute as @a[scores={gm-getListOfAllGUIs=1..}] at @s run function guimaker:maker/gui/get_list_of_guis/1

#> Barrel GUI yerleştirme: gm.gui.container.place marker varsa çalıştır
execute as @e[type=marker,tag=gm.gui.container.place] at @s run function guimaker:worker/gui/block/set

#> Barrel kaybolmuş mu? itemcheck marker'ı temizle
execute as @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block] at @s unless block ~ ~ ~ barrel run kill @s

#> Click detection — her itemcheck marker için slot taraması
execute as @e[type=marker,tag=gm.itemcheck,tag=gm.gui.block] at @s run function guimaker:worker/click/check
execute as @a at @s run clear @s #guimaker:all{gm:{Button:1b}} 6400

#> Düşen buton item'larını temizle
kill @e[type=minecraft:item,nbt={Item:{tag:{gm:{button:1b}}}}]
