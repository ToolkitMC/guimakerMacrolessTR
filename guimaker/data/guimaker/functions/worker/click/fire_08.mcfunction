#> Slot 8 tıklandı
scoreboard players set $clicked gm.Tests 1

#> Barrel slotunu INIT'ten geri doldur
data modify block ~ ~ ~ Items append from entity @s data.PAGE.INIT[{Slot:8b}]

#> Editör modundaysa buton bilgisini göster
execute as @a[tag=gm.editing_page,limit=1] run function guimaker:maker/gui/edit_page/btn_info/show_08

#> Sayfa geçişi var mı kontrol et (switch_page > 0)
scoreboard players set $switch_target gm.Values 0
execute unless entity @a[tag=gm.editing_page] store result score $switch_target gm.Values run data get entity @s data.PAGE.INIT[{Slot:8b}].tag.BUTTON_INFO.switch_page
execute unless entity @a[tag=gm.editing_page] if score $switch_target gm.Values matches 1.. run function guimaker:worker/gui/block/switch_page

#> Normal mod: sayfa geçişi yoksa function_file çalıştır
execute unless entity @a[tag=gm.editing_page] if score $switch_target gm.Values matches 0 run data modify storage guimaker:input cmd set from entity @s data.PAGE.INIT[{Slot:8b}].tag.BUTTON_INFO.function_file
execute unless entity @a[tag=gm.editing_page] if score $switch_target gm.Values matches 0 if data storage guimaker:input cmd run function guimaker:exec/do_run
execute unless entity @a[tag=gm.editing_page] if score $switch_target gm.Values matches 0 run data remove storage guimaker:input cmd
