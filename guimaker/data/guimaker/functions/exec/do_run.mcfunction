#> Command block tunnel — DO RUN
#> Beklenen storage: guimaker:input { cmd: "..." }

# Add forceload (idempotent, güvenli)
forceload add 0 0

# Command block'u yerleştir, komutu storage'dan yükle, tetikle
setblock 0 -64 0 minecraft:command_block{Command:"",auto:0b,TrackOutput:0b} replace
data modify block 0 -64 0 Command set from storage guimaker:input cmd
data modify block 0 -64 0 auto set value 1b

# Reset'i 2 tick sonra çalıştır (command block'un tetiklenmesi için süre tanı)
schedule function guimaker:exec/do_reset 2t replace
