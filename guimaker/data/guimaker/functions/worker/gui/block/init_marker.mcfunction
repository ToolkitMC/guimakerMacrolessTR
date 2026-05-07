#> Init Marker — @s = yeni summon edilmiş gm.itemcheck marker
#> guimaker:temp place'den GUI_ID ve page_number alınır

#> PAGE.INFO → GUI kimliği (dispatch için)
data modify entity @s data.PAGE.INFO set from storage guimaker:temp place

#> PAGE.INIT → barrel'ın o anki Items snapshot'ı (click detection için baseline)
data modify entity @s data.PAGE.INIT set from block ~ ~ ~ Items

#> Temizle
data remove storage guimaker:temp place
data remove storage guimaker:temp fill_layout
