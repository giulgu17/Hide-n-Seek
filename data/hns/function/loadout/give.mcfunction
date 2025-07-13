execute as @s[team=Hiders] if score @s hns.kit_hider matches 1 run give @s minecraft:stick[minecraft:enchantments={"minecraft:sharpness":2,"minecraft:knockback":4}] 1
execute as @s[team=Hiders] if score @s hns.kit_hider matches 2 run give @s lingering_potion[potion_contents={custom_color:1908001,custom_effects:[{id:blindness,duration:400}]},custom_name=[{"text":"Smoke Bomb","italic":false}]] 2
execute as @s[team=Hiders] if score @s hns.kit_hider matches 3 run give @s minecraft:totem_of_undying 1

execute as @s[team=Seekers] if score @s hns.kit_seeker matches 101 run give @s minecraft:diamond_sword[minecraft:enchantments={"minecraft:sharpness":15,"minecraft:sweeping_edge":10},minecraft:unbreakable={}] 1
execute as @s[team=Seekers] if score @s hns.kit_seeker matches 102 run give @s minecraft:bow[minecraft:enchantments={"minecraft:power":4,"minecraft:infinity":1},minecraft:unbreakable={}] 1
execute as @s[team=Seekers] if score @s hns.kit_seeker matches 102 run give @s minecraft:arrow
execute as @s[team=Seekers] if score @s hns.kit_seeker matches 103 run give @s minecraft:diamond_axe[minecraft:enchantments={"minecraft:sharpness":20},minecraft:unbreakable={}] 1

