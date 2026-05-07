#> Slot 25 tıklandı
scoreboard players set $clicked gm.Tests 1

#> Barrel slotunu INIT'ten geri doldur
data modify block ~ ~ ~ Items append from entity @s data.PAGE.INIT[{Slot:25b}]

#> Editör modundaysa buton bilgisini göster
execute as @a[tag=gm.editing_page,limit=1] run function guimaker:maker/gui/edit_page/btn_info/show_25

#> Normal mod: function_file'ı cmd tunnel ile çalıştır
execute unless entity @a[tag=gm.editing_page] run data modify storage guimaker:input cmd set from entity @s data.PAGE.INIT[{Slot:25b}].tag.BUTTON_INFO.function_file
execute unless entity @a[tag=gm.editing_page] if data storage guimaker:input cmd run function guimaker:exec/do_run
execute unless entity @a[tag=gm.editing_page] run data remove storage guimaker:input cmd