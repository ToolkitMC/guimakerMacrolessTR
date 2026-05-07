#> GUI Search Loop (unrolled, max 32 GUI)

execute if score $gui_search_i gm.Values matches 0 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[0].GUI_ID
execute if score $gui_search_i gm.Values matches 0 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 0
execute if score $gui_search_i gm.Values matches 0 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 1.. run scoreboard players set $gui_search_i gm.Values 1

execute if score $gui_search_i gm.Values matches 1 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[1].GUI_ID
execute if score $gui_search_i gm.Values matches 1 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 1
execute if score $gui_search_i gm.Values matches 1 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 2.. run scoreboard players set $gui_search_i gm.Values 2

execute if score $gui_search_i gm.Values matches 2 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[2].GUI_ID
execute if score $gui_search_i gm.Values matches 2 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 2
execute if score $gui_search_i gm.Values matches 2 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 3.. run scoreboard players set $gui_search_i gm.Values 3

execute if score $gui_search_i gm.Values matches 3 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[3].GUI_ID
execute if score $gui_search_i gm.Values matches 3 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 3
execute if score $gui_search_i gm.Values matches 3 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 4.. run scoreboard players set $gui_search_i gm.Values 4

execute if score $gui_search_i gm.Values matches 4 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[4].GUI_ID
execute if score $gui_search_i gm.Values matches 4 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 4
execute if score $gui_search_i gm.Values matches 4 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 5.. run scoreboard players set $gui_search_i gm.Values 5

execute if score $gui_search_i gm.Values matches 5 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[5].GUI_ID
execute if score $gui_search_i gm.Values matches 5 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 5
execute if score $gui_search_i gm.Values matches 5 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 6.. run scoreboard players set $gui_search_i gm.Values 6

execute if score $gui_search_i gm.Values matches 6 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[6].GUI_ID
execute if score $gui_search_i gm.Values matches 6 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 6
execute if score $gui_search_i gm.Values matches 6 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 7.. run scoreboard players set $gui_search_i gm.Values 7

execute if score $gui_search_i gm.Values matches 7 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[7].GUI_ID
execute if score $gui_search_i gm.Values matches 7 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 7
execute if score $gui_search_i gm.Values matches 7 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 8.. run scoreboard players set $gui_search_i gm.Values 8

execute if score $gui_search_i gm.Values matches 8 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[8].GUI_ID
execute if score $gui_search_i gm.Values matches 8 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 8
execute if score $gui_search_i gm.Values matches 8 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 9.. run scoreboard players set $gui_search_i gm.Values 9

execute if score $gui_search_i gm.Values matches 9 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[9].GUI_ID
execute if score $gui_search_i gm.Values matches 9 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 9
execute if score $gui_search_i gm.Values matches 9 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 10.. run scoreboard players set $gui_search_i gm.Values 10

execute if score $gui_search_i gm.Values matches 10 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[10].GUI_ID
execute if score $gui_search_i gm.Values matches 10 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 10
execute if score $gui_search_i gm.Values matches 10 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 11.. run scoreboard players set $gui_search_i gm.Values 11

execute if score $gui_search_i gm.Values matches 11 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[11].GUI_ID
execute if score $gui_search_i gm.Values matches 11 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 11
execute if score $gui_search_i gm.Values matches 11 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 12.. run scoreboard players set $gui_search_i gm.Values 12

execute if score $gui_search_i gm.Values matches 12 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[12].GUI_ID
execute if score $gui_search_i gm.Values matches 12 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 12
execute if score $gui_search_i gm.Values matches 12 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 13.. run scoreboard players set $gui_search_i gm.Values 13

execute if score $gui_search_i gm.Values matches 13 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[13].GUI_ID
execute if score $gui_search_i gm.Values matches 13 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 13
execute if score $gui_search_i gm.Values matches 13 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 14.. run scoreboard players set $gui_search_i gm.Values 14

execute if score $gui_search_i gm.Values matches 14 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[14].GUI_ID
execute if score $gui_search_i gm.Values matches 14 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 14
execute if score $gui_search_i gm.Values matches 14 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 15.. run scoreboard players set $gui_search_i gm.Values 15

execute if score $gui_search_i gm.Values matches 15 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[15].GUI_ID
execute if score $gui_search_i gm.Values matches 15 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 15
execute if score $gui_search_i gm.Values matches 15 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 16.. run scoreboard players set $gui_search_i gm.Values 16

execute if score $gui_search_i gm.Values matches 16 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[16].GUI_ID
execute if score $gui_search_i gm.Values matches 16 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 16
execute if score $gui_search_i gm.Values matches 16 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 17.. run scoreboard players set $gui_search_i gm.Values 17

execute if score $gui_search_i gm.Values matches 17 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[17].GUI_ID
execute if score $gui_search_i gm.Values matches 17 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 17
execute if score $gui_search_i gm.Values matches 17 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 18.. run scoreboard players set $gui_search_i gm.Values 18

execute if score $gui_search_i gm.Values matches 18 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[18].GUI_ID
execute if score $gui_search_i gm.Values matches 18 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 18
execute if score $gui_search_i gm.Values matches 18 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 19.. run scoreboard players set $gui_search_i gm.Values 19

execute if score $gui_search_i gm.Values matches 19 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[19].GUI_ID
execute if score $gui_search_i gm.Values matches 19 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 19
execute if score $gui_search_i gm.Values matches 19 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 20.. run scoreboard players set $gui_search_i gm.Values 20

execute if score $gui_search_i gm.Values matches 20 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[20].GUI_ID
execute if score $gui_search_i gm.Values matches 20 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 20
execute if score $gui_search_i gm.Values matches 20 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 21.. run scoreboard players set $gui_search_i gm.Values 21

execute if score $gui_search_i gm.Values matches 21 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[21].GUI_ID
execute if score $gui_search_i gm.Values matches 21 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 21
execute if score $gui_search_i gm.Values matches 21 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 22.. run scoreboard players set $gui_search_i gm.Values 22

execute if score $gui_search_i gm.Values matches 22 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[22].GUI_ID
execute if score $gui_search_i gm.Values matches 22 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 22
execute if score $gui_search_i gm.Values matches 22 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 23.. run scoreboard players set $gui_search_i gm.Values 23

execute if score $gui_search_i gm.Values matches 23 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[23].GUI_ID
execute if score $gui_search_i gm.Values matches 23 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 23
execute if score $gui_search_i gm.Values matches 23 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 24.. run scoreboard players set $gui_search_i gm.Values 24

execute if score $gui_search_i gm.Values matches 24 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[24].GUI_ID
execute if score $gui_search_i gm.Values matches 24 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 24
execute if score $gui_search_i gm.Values matches 24 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 25.. run scoreboard players set $gui_search_i gm.Values 25

execute if score $gui_search_i gm.Values matches 25 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[25].GUI_ID
execute if score $gui_search_i gm.Values matches 25 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 25
execute if score $gui_search_i gm.Values matches 25 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 26.. run scoreboard players set $gui_search_i gm.Values 26

execute if score $gui_search_i gm.Values matches 26 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[26].GUI_ID
execute if score $gui_search_i gm.Values matches 26 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 26
execute if score $gui_search_i gm.Values matches 26 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 27.. run scoreboard players set $gui_search_i gm.Values 27

execute if score $gui_search_i gm.Values matches 27 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[27].GUI_ID
execute if score $gui_search_i gm.Values matches 27 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 27
execute if score $gui_search_i gm.Values matches 27 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 28.. run scoreboard players set $gui_search_i gm.Values 28

execute if score $gui_search_i gm.Values matches 28 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[28].GUI_ID
execute if score $gui_search_i gm.Values matches 28 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 28
execute if score $gui_search_i gm.Values matches 28 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 29.. run scoreboard players set $gui_search_i gm.Values 29

execute if score $gui_search_i gm.Values matches 29 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[29].GUI_ID
execute if score $gui_search_i gm.Values matches 29 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 29
execute if score $gui_search_i gm.Values matches 29 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 30.. run scoreboard players set $gui_search_i gm.Values 30

execute if score $gui_search_i gm.Values matches 30 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[30].GUI_ID
execute if score $gui_search_i gm.Values matches 30 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 30
execute if score $gui_search_i gm.Values matches 30 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 31.. run scoreboard players set $gui_search_i gm.Values 31

execute if score $gui_search_i gm.Values matches 31 if score $found_gui_idx gm.Values matches -1 store result score $check_id gm.Values run data get storage barden:gui.all GUI[31].GUI_ID
execute if score $gui_search_i gm.Values matches 31 if score $check_id gm.Values = $target_gui gm.Values run scoreboard players set $found_gui_idx gm.Values 31
execute if score $gui_search_i gm.Values matches 31 if score $found_gui_idx gm.Values matches -1 if score $gui_count gm.Values matches 32.. run scoreboard players set $gui_search_i gm.Values 32

