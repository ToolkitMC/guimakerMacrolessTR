#> GUI kaydını storage'a ekle
#> 1.20.1: makro yok — GUI_NAME için compound storage'dan kopyalanır

#> Geçici olarak GUI_NAME birleştir: "<username>'s GUI #<ID>"
#> 1.20.1'de string birleştirme komutu yok; 
#> Alternatif: GUI_NAME'i sonradan /trigger ile oyuncu değiştirebilir
#> Şimdilik GUI_ID sayısını doğrudan GUI_NAME olarak kullan

execute store result storage guimaker:names Names.GUI_ID int 1 run scoreboard players get $generated_id gm.Values
data modify storage guimaker:names Names.GUI_NAME set value "My GUI"

#> barden:gui.all uyumluluğu — orijinal paketle aynı storage namespace
data modify storage barden:gui.all GUI append from storage guimaker:names Names
