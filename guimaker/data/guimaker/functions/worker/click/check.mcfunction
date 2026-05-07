#> Barrel click detection — Items[0]..Items[26] hardcode (no macros)
#> @s = gm.itemcheck marker, ~ ~ ~ = barrel konumu
#> Mantık: INIT'te olan slot barrel'da yoksa → oyuncu tıkladı

scoreboard players set $clicked gm.Tests 0

execute if data entity @s data.PAGE.INIT[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:0b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_00
execute if data entity @s data.PAGE.INIT[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_01
execute if data entity @s data.PAGE.INIT[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_02
execute if data entity @s data.PAGE.INIT[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_03
execute if data entity @s data.PAGE.INIT[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_04
execute if data entity @s data.PAGE.INIT[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:5b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_05
execute if data entity @s data.PAGE.INIT[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:6b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_06
execute if data entity @s data.PAGE.INIT[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:7b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_07
execute if data entity @s data.PAGE.INIT[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:8b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_08
execute if data entity @s data.PAGE.INIT[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:9b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_09
execute if data entity @s data.PAGE.INIT[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:10b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_10
execute if data entity @s data.PAGE.INIT[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_11
execute if data entity @s data.PAGE.INIT[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_12
execute if data entity @s data.PAGE.INIT[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_13
execute if data entity @s data.PAGE.INIT[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:14b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_14
execute if data entity @s data.PAGE.INIT[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_15
execute if data entity @s data.PAGE.INIT[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:16b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_16
execute if data entity @s data.PAGE.INIT[{Slot:17b}] unless data block ~ ~ ~ Items[{Slot:17b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_17
execute if data entity @s data.PAGE.INIT[{Slot:18b}] unless data block ~ ~ ~ Items[{Slot:18b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_18
execute if data entity @s data.PAGE.INIT[{Slot:19b}] unless data block ~ ~ ~ Items[{Slot:19b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_19
execute if data entity @s data.PAGE.INIT[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_20
execute if data entity @s data.PAGE.INIT[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_21
execute if data entity @s data.PAGE.INIT[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_22
execute if data entity @s data.PAGE.INIT[{Slot:23b}] unless data block ~ ~ ~ Items[{Slot:23b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_23
execute if data entity @s data.PAGE.INIT[{Slot:24b}] unless data block ~ ~ ~ Items[{Slot:24b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_24
execute if data entity @s data.PAGE.INIT[{Slot:25b}] unless data block ~ ~ ~ Items[{Slot:25b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_25
execute if data entity @s data.PAGE.INIT[{Slot:26b}] unless data block ~ ~ ~ Items[{Slot:26b}] if score $clicked gm.Tests matches 0 run function guimaker:worker/click/fire_26

#> Editör modundaki oyuncu varsa buton bilgisini göster (normal callback yerine)
#> (fire_XX içindeki editör kontrolü halleder — burada sadece slot tespiti yeterli)