# Tag a random wandering trader to be modified.
tag @e[type=minecraft:wandering_trader,limit=1,tag=!shard_modified] add shard_to_be_modified

# Tome of Essentials
data modify entity @e[tag=shard_to_be_modified, limit=1] Offers.Recipes append value {maxUses:1, rewardExp:0b, buy:{id:"emerald",count:1},sell:{id:"enchanted_book",count:1,components:{custom_data:{shard_id:"tome_of_essentials"},custom_model_data:6120033,custom_name:'[{"text":"Tome of Essentials","italic": false, "color":"yellow"}]',lore:['{"text":""}','{"text":"When in off hand:","color":"gray","italic":false}', '{"text":" Teleport to spawn.","color":"dark_green","italic":false}', '{"text":" tome_of_essentials","color":"dark_gray","obfuscated":true}']}}}
tag @s add trade_tomeOfEssentials

# Soul Tools
execute if predicate shard_core:d4 run data modify entity @e[tag=shard_to_be_modified, limit=1] Offers.Recipes append value {buy:{id:"emerald",count:13},buyB:{id:"nether_star",count:1},sell:{id:"iron_axe",components:{custom_data:{shard_id:"soul_axe"},custom_model_data:6120007,custom_name:'{"text":"Soul Axe","color":"yellow","italic":false}',lore:['{"text":"Tools & Utilities","color":"blue","italic": false}', '{"text":"Combat","color":"blue","italic": false}', '{"text":""}', '{"text":"This tool can adapt to its wielder."}'],enchantment_glint_override:true,repair_cost:1000000,unbreakable:{show_in_tooltip:false}},count:1},maxUses:1}
execute if predicate shard_core:d4 run data modify entity @e[tag=shard_to_be_modified, limit=1] Offers.Recipes append value {buy:{id:"emerald",count:4},buyB:{id:"nether_star",count:1},sell:{id:"iron_hoe",components:{custom_data:{shard_id:"soul_hoe"},custom_model_data:6120012,custom_name:'{"text":"Soul Hoe","color":"yellow","italic":false}',lore:['{"text":"Tools & Utilities","color":"blue","italic": false}','{"text":""}','{"text":"This tool can adapt to its wielder."}'],enchantment_glint_override:true,repair_cost:1000000,unbreakable:{show_in_tooltip:false}},count:1},maxUses:1}
execute if predicate shard_core:d4 run data modify entity @e[tag=shard_to_be_modified, limit=1] Offers.Recipes append value {buy:{id:"emerald",count:15},buyB:{id:"nether_star",count:1},sell:{id:"iron_pickaxe",components:{custom_data:{shard_id:"soul_pickaxe"},custom_model_data:6120017,custom_name:'{"text":"Soul Pickaxe","color":"yellow","italic":false}',lore:['{"text":"Tools & Utilities","color":"blue","italic": false}','{"text":""}','{"text":"This tool can adapt to its wielder."}'],enchantment_glint_override:true,repair_cost:1000000,unbreakable:{show_in_tooltip:false}},count:1},maxUses:1}
execute if predicate shard_core:d4 run data modify entity @e[tag=shard_to_be_modified, limit=1] Offers.Recipes append value {buy:{id:"emerald",count:14},buyB:{id:"nether_star",count:1},sell:{id:"iron_shovel",components:{custom_data:{shard_id:"soul_shovel"},custom_model_data:6120022,custom_name:'{"text":"Soul Shovel","color":"yellow","italic":false}',lore:['{"text":"Tools & Utilities","color":"blue","italic": false}','{"text":""}','{"text":"This tool can adapt to its wielder."}'],enchantment_glint_override:true,repair_cost:1000000,unbreakable:{show_in_tooltip:false}},count:1},maxUses:1}

# Potion of Haste
execute if predicate shard_core:d10 run data modify entity @e[tag=shard_to_be_modified, limit=1] Offers.Recipes append value {buy: {id: "emerald", count: 9}, sell: {id: "potion", components: {"minecraft:custom_name":'{"text":"Potion of Haste","italic":false}',"minecraft:potion_contents": {potion: "water", custom_effects:[{id: "haste", amplifier: 0, duration: 72000}]}}, count: 1}, maxUses: 8}
execute if predicate shard_core:d10 run data modify entity @e[tag=shard_to_be_modified, limit=1] Offers.Recipes append value {buy: {id: "emerald", count: 20}, sell: {id: "potion", components: {"minecraft:custom_name":'{"text":"Potion of Haste","italic":false}',"minecraft:potion_contents": {potion: "water", custom_effects:[{id: "haste", amplifier: 1, duration: 18000}]}}, count: 1}, maxUses: 5}


# Phantom Memberane
execute if predicate shard_core:d20 run data modify entity @e[tag=shard_to_be_modified, limit=1] Offers.Recipes append value {buy: {id: "emerald", count: 1}, sell: {id: "phantom_membrane", count: 1}, maxUses: 5}

# Tag the trader to prevent re-adding trades.
tag @e[tag=shard_to_be_modified] add shard_modified
tag @e[tag=shard_to_be_modified] remove shard_to_be_modified

# Schedule the function to run again.
schedule function shard_wandering_trader:modify 1s replace