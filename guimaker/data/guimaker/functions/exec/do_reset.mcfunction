#> Command block tunnel — DO RESET
#> do_run'dan 2t sonra schedule ile çağrılır

data modify block 0 -64 0 auto set value 0b
setblock 0 -64 0 minecraft:air replace
forceload remove 0 0
