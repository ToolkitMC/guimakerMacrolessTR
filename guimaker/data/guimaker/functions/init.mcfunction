#> Scoreboards
scoreboard objectives add gm.Values dummy
scoreboard objectives add gm.Tests dummy
scoreboard objectives add gm.Linking dummy
scoreboard objectives add gm.Drop dummy

#> Global GUI creation counter
scoreboard players add $globalCreationID gm.Values 1

#> Trigger objectives (creative-only maker commands)
scoreboard objectives add gm-createGUIprofile trigger
scoreboard players enable @a[gamemode=creative] gm-createGUIprofile
scoreboard objectives add gm-addPage trigger
scoreboard players enable @a[gamemode=creative] gm-addPage
scoreboard objectives add gm-editPage trigger
scoreboard players enable @a[gamemode=creative] gm-editPage
scoreboard objectives add gm-getListOfAllGUIs trigger
scoreboard players enable @a[gamemode=creative] gm-getListOfAllGUIs

#> Command block tunnel — forceload chunk 0 0 permanently
forceload add 0 0
scoreboard objectives add gm-editorMenu trigger
