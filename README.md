# GUI Maker — Kullanım Kılavuzu

**Sürüm:** 1.20.1 · **Pack Format:** 15 · **Namespace:** `guimaker`  
**Makro kullanmaz.** Command block tunnel + hardcoded NBT dispatch ile çalışır.

---

## Gereksinimler

| Gereksinim | Detay |
|---|---|
| Minecraft | Java Edition 1.20.1 |
| Oyun modu | Maker komutları **Creative** modda çalışır |
| Chunk | `0, -64, 0` koordinatı forceload edilir (command block tunnel) |
| Koordinat | `0, 300, 0` geçici shulker box için kullanılır (username tespiti) |

> **Uyarı:** `0, -64, 0` ve `0, 300, 0` koordinatlarını başka amaçla kullanmayın.

---

## Kurulum

```
/datapack list
```
Datapeck listede `[file/guimaker]` olarak görünüyorsa aktif. Görünmüyorsa:
```
/datapack enable "file/guimaker"
```
Init fonksiyonu otomatik çalışır (scoreboards ve forceload kurulur).

---

## Temel Kavramlar

### Storage yapısı

Tüm GUI verileri `barden:gui.all` storage'ında tutulur:

```
barden:gui.all {
  GUI: [
    {
      GUI_ID: 1,
      GUI_NAME: "My GUI",
      PAGES: [
        {
          page_number: 1,
          page_name: '[{"text":"Ana Sayfa"}]',
          layout: [
            {
              Slot: 0b,
              id: "minecraft:stone",
              Count: 1b,
              tag: {
                gm: { Button: 1b },
                BUTTON_INFO: {
                  function_file: "mynamespace:my_function",
                  item_modifier: "empty",
                  command: "",
                  switch_page: 0
                }
              }
            },
            ...
          ]
        }
      ]
    }
  ]
}
```

### Click detection

Barrel yerleştirildiğinde yanına bir `marker` entity summon edilir. Bu marker:
- Barrel'ın `Items` snapshot'ını (`PAGE.INIT`) tutar.
- Her tick, slot 0–26'yı karşılaştırır: `INIT[{Slot:Nb}]` var ama blokta yoksa → tıklandı.
- Tıklanan slot'un `BUTTON_INFO` alanları öncelik sırasıyla işlenir:
  1. `switch_page > 0` → aynı GUI'nin hedef sayfasına geçiş yapılır, diğer alanlar çalışmaz.
  2. `function_file` → **command block tunnel** üzerinden fonksiyon çağrısı.
  3. `command` → **command block tunnel** üzerinden ham komut çalıştırılır (`function_file`'dan bağımsız, ikisi birden çalışabilir).

### BUTTON_INFO alanları

| Alan | Tip | Açıklama |
|---|---|---|
| `function_file` | string | `namespace:path` formatında fonksiyon adı. Tunnel üzerinden `function` olarak çalıştırılır. |
| `item_modifier` | string | Item modifier adı. |
| `command` | string | Ham MC komutu (ör. `"say merhaba"`). Tunnel üzerinden doğrudan çalıştırılır. |
| `switch_page` | int | `> 0` ise o `page_number`'a geçiş yapar. `0` = pasif. |

### Command block tunnel

Makro olmadığı için string değerler doğrudan çalıştırılamaz. Bunun yerine:

1. `guimaker:input { cmd: "..." }` storage'a yazılır.
2. `0, -64, 0` koordinatına bir command block yerleştirilir.
3. `Command` alanına storage'daki string kopyalanır, `auto:1b` yapılır.
4. 2 tick sonra command block temizlenir.

`function_file` → `namespace:path` formatında (command block `function` komutu gibi çalıştırır).  
`command` → ham komut string'i (ör. `"give @p minecraft:diamond"`). Aynı tunnel'ı kullanır.

### Limitler

| Limit | Değer |
|---|---|
| Maksimum GUI sayısı | 32 |
| GUI başına maksimum sayfa | 16 |
| Sayfa başına slot | 27 (barrel) |

---

## Maker Komutları (Creative Mod)

Tüm maker komutları `/trigger` ile tetiklenir. **Sadece Creative modda** etkindir.

### 1. GUI oluştur

```
/trigger gm-createGUIprofile
```

- Otomatik bir `GUI_ID` (integer) ve `"My GUI"` adıyla yeni bir GUI kaydı açar.
- Oluşturulan ID chat'te bildirilir.
- GUI adını sonradan değiştirmek için doğrudan storage'ı düzenleyin:

```
/data modify storage barden:gui.all GUI[{GUI_ID:1}].GUI_NAME set value "Benim GUI'm"
```

---

### 2. Sayfa ekle

```
/trigger gm-addPage
```

- Chat'te mevcut GUI'lerin listesi açılır.
- Sayfa eklemek istediğiniz GUI'nin yanındaki **[Sayfa Ekle]** butonuna tıklayın.
- **Ayağınızın altında bir barrel olması gerekir.** Barrel'daki itemlar sayfanın buton layoutu olur.

**Barrel hazırlama:**
1. Yere bir barrel koyun.
2. İçine buton olarak kullanmak istediğiniz itemları yerleştirin (Slot 0–26).
3. Üzerinde durun ve trigger'ı çalıştırın, ardından GUI'yi seçin.

> Boş slotlar tıklanamaz. Sadece item bulunan slotlar buton olarak kaydedilir.

---

### 3. Sayfayı barrel olarak yerleştir

```
/trigger gm-getListOfAllGUIs
```

- Tüm GUI'ler ve sayfaları listelenir.
- Bir sayfanın yanındaki **[Barrel]** butonuna tıklayın.
- Ayağınızın hemen altına barrel yerleştirilir ve aktif hale gelir.

---

### 4. Butonu düzenle (Editör modu)

```
/trigger gm-editPage
```

- GUI ve sayfa listesi açılır.
- **[Düzenle]** butonuna tıklayın → editör barrel'ı ayağınızın altına yerleştirilir.
- Barrel açık durumdayken bir butona tıklayın → chat'te o slotun `BUTTON_INFO`'su görünür.

Butonu güncellemek için:

```
# function_file
/data modify storage guimaker:temp ops.function_file set value "mynamespace:my_function"
/function guimaker:maker/gui/edit_page/btn_info/set_nbt

# item_modifier
/data modify storage guimaker:temp ops.item_modifier set value "my_modifier"
/function guimaker:maker/gui/edit_page/btn_info/set_nbt

# command (ham MC komutu)
/data modify storage guimaker:temp ops.command set value "say merhaba"
/function guimaker:maker/gui/edit_page/btn_info/set_nbt

# switch_page (hedef page_number — 0 = pasif)
/data modify storage guimaker:temp ops.switch_page set value 2
/function guimaker:maker/gui/edit_page/btn_info/set_nbt
```

Alanları temizlemek için editör barrel açıkken butona tıklayın → chat'te **[command temizle]** ve **[switch_page temizle]** butonları çıkar. Ya da doğrudan:

```
# $target_slot show_XX tarafından set edilmiş olmalı
/function guimaker:maker/gui/edit_page/btn_info/clear_command
/function guimaker:maker/gui/edit_page/btn_info/clear_switch_page
```

---

### 5. GUI / sayfa sil

**GUI silmek:**
```
/data modify storage guimaker:temp del.GUI_ID set value 1
/function guimaker:maker/gui/delete_gui/1
```

**Sayfa silmek:**
```
/data modify storage guimaker:temp del.GUI_ID set value 1
/data modify storage guimaker:temp del.page_number set value 1
/function guimaker:maker/gui/delete_page/1
```

---

### 6. Sayfa adını değiştir

```
/data modify storage guimaker:temp rename.GUI_ID set value 1
/data modify storage guimaker:temp rename.page_number set value 1
/data modify storage guimaker:temp rename.page_name set value '[{"text":"Yeni Ad","color":"gold"}]'
/function guimaker:maker/gui/change_name/1
```

`page_name` tam JSON text component formatında olmalıdır (interpret:true ile görüntülenir).

---

## Kendi Datapack'inize Entegrasyon

### Barrel yerleştirme

Kendi datapack'inizden bir GUI sayfasını barrel olarak yerleştirmek için:

```mcfunction
# GUI_ID=1, page_number=1 olan sayfayı yerleştir
function guimaker:worker/gui/block/place_0_0
```

`place_G_P` fonksiyonlarında `G` = `GUI` array index'i (0'dan başlar), `P` = `PAGES` array index'i. Hangi index'te hangi GUI/sayfa olduğunu bulmak için:

```
/data get storage barden:gui.all GUI
```

### Buton callback

Bir butona tıklandığında `BUTTON_INFO` alanları işlenir. `function_file` ve `command` aynı tunnel'ı kullanır:

```mcfunction
# data/mynamespace/functions/on_click.mcfunction
tellraw @a {"text":"Butona basıldı!","color":"green"}
```

```
/data modify storage guimaker:temp ops.function_file set value "mynamespace:on_click"
/function guimaker:maker/gui/edit_page/btn_info/set_nbt
```

Ham komut için:
```
/data modify storage guimaker:temp ops.command set value "give @p minecraft:diamond"
/function guimaker:maker/gui/edit_page/btn_info/set_nbt
```

Sayfa geçişi için (`page_number` 2'ye geçiş):
```
/data modify storage guimaker:temp ops.switch_page set value 2
/function guimaker:maker/gui/edit_page/btn_info/set_nbt
```

### GUI verilerini okuma

```mcfunction
# Tüm GUI'leri listele
data get storage barden:gui.all GUI

# GUI_ID=1'in tüm sayfalarını getir
data get storage barden:gui.all GUI[{GUI_ID:1}].PAGES

# GUI_ID=1, page_number=2'nin layout'unu getir
# (Önce GUI ve page index'ini bilmeniz gerekir — bkz. util/search)
```

Datapack içinden dinamik arama için:
```mcfunction
scoreboard players set $target_gui gm.Values 1
function guimaker:util/search/gui
# Sonuç: $found_gui_idx gm.Values (−1 = bulunamadı)

scoreboard players set $target_page gm.Values 1
function guimaker:util/ops/get_page_count
function guimaker:util/page_search/page
# Sonuç: $found_page_idx gm.Values (−1 = bulunamadı)
```

---

## Scoreboard Değişkenleri

| Değişken | Objective | Açıklama |
|---|---|---|
| `$globalCreationID` | `gm.Values` | Sonraki GUI'ye verilecek ID |
| `$found_gui_idx` | `gm.Values` | Son arama sonucu — GUI array index |
| `$found_page_idx` | `gm.Values` | Son arama sonucu — PAGES array index |
| `$target_gui` | `gm.Values` | Aranacak GUI_ID |
| `$target_page` | `gm.Values` | Aranacak page_number |
| `$target_slot` | `gm.Values` | set_nbt için slot numarası (0–26) |
| `$clicked` | `gm.Tests` | 1 = bu tick tıklama işlendi |
| `$page_count` | `gm.Values` | Seçili GUI'nin sayfa sayısı |
| `$switch_target` | `gm.Values` | Tıklanan slot'un switch_page değeri (0 = yok) |

---

## Bilinen Kısıtlar

**Eş zamanlı tıklama:** Aynı tick'te iki oyuncu iki farklı barrel'a tıklarsa sadece ilki işlenir (`$clicked gm.Tests 0` koruması). Çok oyunculu sunucularda her barrel için ayrı marker çalışır, sorun yoktur; ancak aynı barrel'a eş zamanlı tıklama tek tick'e düşer.

**Command block koordinatı:** `0, -64, 0` her zaman boş olmalıdır. Bu chunk'ta başka command block veya yapı bulundurmayın.

**GUI_NAME düzenleme:** `gm-createGUIprofile` trigger'ı GUI adını `"My GUI"` olarak sabitler. Adı oluşturduktan hemen sonra `data modify storage barden:gui.all GUI[{GUI_ID:N}].GUI_NAME set value "..."` ile değiştirin.

**Barrel konumu:** Barrel'ı taşımayın veya silmeyin — marker entity hala eski koordinatı izler. Yeni konumda tekrar `place_G_P` fonksiyonunu çalıştırın.

**Editör modu çakışması:** `gm.editing_page` tag'i olan oyuncu varken normal kullanıcılar barrel'a tıklasa editör callback'i tetiklenir. Editör bitince tag'i kaldırın (trigger reset ile otomatik kaldırılmaz; manuel `tag @s remove gm.editing_page` gerekebilir).