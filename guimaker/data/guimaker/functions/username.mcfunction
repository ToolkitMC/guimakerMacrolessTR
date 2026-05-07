#> Username tespiti — orijinal gui.maker:username ile aynı yaklaşım
#> 1.20.1: loot insert + shulker box → Items[0].tag.SkullOwner.Name ile username

forceload add 0 0
setblock 0 300 0 air
setblock 0 300 0 minecraft:black_shulker_box
loot insert 0 300 0 loot guimaker:fph
data remove storage guimaker:names Names
data modify storage guimaker:names Names.username set from block 0 300 0 Items[0].tag.SkullOwner.Name
data modify storage guimaker:names Names.UUID set from entity @s UUID[0]
setblock 0 300 0 air
