scoreboard players enable @a spectator

scoreboard players set @a mobsnear 0
execute as @a at @s run execute if entity @e[type=#nisos:hostile_mobs, distance=..5] run scoreboard players set @s mobsnear 1

execute as @a run execute if score @s mobsnear matches 1 run execute if score @s spectator matches 1 run tag @s add cant

title @a[tag=cant] actionbar {"text": "You can't now, there are monsters neaby!", "color": "white"}
scoreboard players set @a[tag=cant] spectator 0

tag @a[tag=cant] remove cant

gamemode survival @a[scores={spectator=2}]
scoreboard players set @a[scores={spectator=2}] spectator 0
gamemode spectator @a[scores={spectator=1}]
