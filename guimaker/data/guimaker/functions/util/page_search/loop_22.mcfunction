#> Page Loop for GUI[22]

execute if score $page_search_i gm.Values matches 0 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[0].page_number
execute if score $page_search_i gm.Values matches 0 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 0
execute if score $page_search_i gm.Values matches 0 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 1.. run scoreboard players set $page_search_i gm.Values 1

execute if score $page_search_i gm.Values matches 1 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[1].page_number
execute if score $page_search_i gm.Values matches 1 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 1
execute if score $page_search_i gm.Values matches 1 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 2.. run scoreboard players set $page_search_i gm.Values 2

execute if score $page_search_i gm.Values matches 2 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[2].page_number
execute if score $page_search_i gm.Values matches 2 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 2
execute if score $page_search_i gm.Values matches 2 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 3.. run scoreboard players set $page_search_i gm.Values 3

execute if score $page_search_i gm.Values matches 3 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[3].page_number
execute if score $page_search_i gm.Values matches 3 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 3
execute if score $page_search_i gm.Values matches 3 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 4.. run scoreboard players set $page_search_i gm.Values 4

execute if score $page_search_i gm.Values matches 4 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[4].page_number
execute if score $page_search_i gm.Values matches 4 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 4
execute if score $page_search_i gm.Values matches 4 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 5.. run scoreboard players set $page_search_i gm.Values 5

execute if score $page_search_i gm.Values matches 5 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[5].page_number
execute if score $page_search_i gm.Values matches 5 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 5
execute if score $page_search_i gm.Values matches 5 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 6.. run scoreboard players set $page_search_i gm.Values 6

execute if score $page_search_i gm.Values matches 6 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[6].page_number
execute if score $page_search_i gm.Values matches 6 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 6
execute if score $page_search_i gm.Values matches 6 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 7.. run scoreboard players set $page_search_i gm.Values 7

execute if score $page_search_i gm.Values matches 7 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[7].page_number
execute if score $page_search_i gm.Values matches 7 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 7
execute if score $page_search_i gm.Values matches 7 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 8.. run scoreboard players set $page_search_i gm.Values 8

execute if score $page_search_i gm.Values matches 8 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[8].page_number
execute if score $page_search_i gm.Values matches 8 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 8
execute if score $page_search_i gm.Values matches 8 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 9.. run scoreboard players set $page_search_i gm.Values 9

execute if score $page_search_i gm.Values matches 9 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[9].page_number
execute if score $page_search_i gm.Values matches 9 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 9
execute if score $page_search_i gm.Values matches 9 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 10.. run scoreboard players set $page_search_i gm.Values 10

execute if score $page_search_i gm.Values matches 10 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[10].page_number
execute if score $page_search_i gm.Values matches 10 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 10
execute if score $page_search_i gm.Values matches 10 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 11.. run scoreboard players set $page_search_i gm.Values 11

execute if score $page_search_i gm.Values matches 11 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[11].page_number
execute if score $page_search_i gm.Values matches 11 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 11
execute if score $page_search_i gm.Values matches 11 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 12.. run scoreboard players set $page_search_i gm.Values 12

execute if score $page_search_i gm.Values matches 12 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[12].page_number
execute if score $page_search_i gm.Values matches 12 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 12
execute if score $page_search_i gm.Values matches 12 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 13.. run scoreboard players set $page_search_i gm.Values 13

execute if score $page_search_i gm.Values matches 13 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[13].page_number
execute if score $page_search_i gm.Values matches 13 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 13
execute if score $page_search_i gm.Values matches 13 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 14.. run scoreboard players set $page_search_i gm.Values 14

execute if score $page_search_i gm.Values matches 14 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[14].page_number
execute if score $page_search_i gm.Values matches 14 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 14
execute if score $page_search_i gm.Values matches 14 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 15.. run scoreboard players set $page_search_i gm.Values 15

execute if score $page_search_i gm.Values matches 15 if score $found_page_idx gm.Values matches -1 store result score $check_page gm.Values run data get storage barden:gui.all GUI[22].PAGES[15].page_number
execute if score $page_search_i gm.Values matches 15 if score $check_page gm.Values = $target_page gm.Values run scoreboard players set $found_page_idx gm.Values 15
execute if score $page_search_i gm.Values matches 15 if score $found_page_idx gm.Values matches -1 if score $page_count gm.Values matches 16.. run scoreboard players set $page_search_i gm.Values 16

