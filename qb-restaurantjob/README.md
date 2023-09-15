# Make sure to Checkout my Tebex store for any more Scrips
URL - snipe.tebex.io
#

# Generic Restaurant Job which can be used for any restaurant.

Clone the folder, change the folder name and change the Config.FolderName in Config to the folder name.
### Currently this job is configured for gabz-pizzeria mlo, but can be easily changed to any mlo throughout the city just by editing the config values.

```
Config.Locations = {
    [1] = {coords = vector3(813.7376, -749.700, 27.529), text = "Drink Station", config = Drink},
    [2] = {coords = vector3(809.89, -761.22, 26.78), text = "Prep Station", config = Prep},
    [3] = {coords = vector3(806.64, -757.7, 26.78), text = "Dough Station", config = Dough},
    [4] = {coords = vector3(806.21, -763.18, 26.78), text = "Oven", config = Oven},
}
```

#### Explanation about these values
- coords -> This is the coordinate for where the player can interact
- text -> Text to be displayed on the coordinate for the people to know what this spot does.
- config -> Table that contains information about all the items that can be made at that coordinate.

You can add as many locations as you want to this table.

### Config for items

```
Drink = {
    [1] = {
        label = "Water", --label of the item that can be made when the button is clicked
        description = "Water Bottle", --Description for the item
        item = "water_bottle", --item that will be given(item name in shared.lua)
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Water", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
    [2] = {
        label = "Soda", --label of the item that can be made when the button is clicked
        description = "Soda", --Description for the item
        item = "sodacup", --item that will be given(item name in shared.lua)
         required = {
            [1] = {itemName = "mushrooms", amount = 1},
            [2] = {itemName = "onion", amount = 1},
            [3] = {itemName = "tomatoes", amount = 4},
        }, -- list of items required with the amount on it
        progressbar = "Grabbing Soda", -- text to display on progressbar
        progresstime = 5000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    },
}
```
#### Explanation about item config
- Almost everything in the config is self explanatory. 
- You can create as many configs as you want and add that to Config.Locations table at the appropriate place.

### Config for Job Stash

```
Config.JobStash = {
    [1] =  {coords = vector3(803.23, -757.42, 26.78), name = 'Generic Restaurant Name', size = 4000000, slots = 100},
}
```

#### Explanation about job stash config
- coords -> This is the coordinate for where the player with the job can interact
- name -> name for the stash.
- size -> size of the stash (in grams) (4000000 = 4000 ingame)
- slots -> number of slots in inventory.

### Config for Job

```
Config.Job = "pizza"

```

#### Explanation about job config
- job which will be able to access everything in the job.
- Job needs to be added to ```shared.lua``` for the job to work.
- Link on how to add new jobs in QBCore can be found here - [youtube link](https://www.youtube.com/watch?v=xv6oK1qO9jg&t=18s "Youtube")


# 
# Steps to take care of regarding items

- Make sure you add the items to shared.lua and the images for the items in qb-inventory/html/images/ (if you are using aj-inventory then add the images in aj-inventory/html/images/ )
- To make the items usable, you have to add the items in shared.lua with ```useable = true``` and create them as usable items in ```qb-smallresources/client/consumables.lua```, ```qb-smallresources/server/consumables.lua``` and ```qb-smallresources/config.lua```
- Example to add item as useable in smallresources.

```qb-smallresources/server/consumables.lua``` (one for food and one for drink)
```
QBCore.Functions.CreateUseableItem("cheese-pizza", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("sodacup", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)
```

```qb-smallresources/client/consumables.lua``` (these events already exists)
```
RegisterNetEvent("consumables:client:Eat")
AddEventHandler("consumables:client:Eat", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"eat"})
    QBCore.Functions.Progressbar("eat_something", "Eating..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + Consumeables[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

RegisterNetEvent("consumables:client:Drink")
AddEventHandler("consumables:client:Drink", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar("drink_something", "Drinking..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + Consumeables[itemName])
    end)
end)
```


```qb-smallresources/config.lua```
```
Consumeables = {
    ["sandwich"] = math.random(35, 54),
    ["water_bottle"] = math.random(35, 54),
    ["tosti"] = math.random(40, 50),
    ["kurkakola"] = math.random(35, 54),
    ["twerks_candy"] = math.random(35, 54),
    ["snikkel_candy"] = math.random(40, 50),
    ["coffee"] = math.random(40, 50),
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
    --items above already exists so you can add more items and how much hunger it can cover
    ["cheese-pizza"] = math.random(35, 50),
    ["sodacup"] = math.random(20, 40),
}
```

```Example for - qb-core/shared.lua```
```
	['cheese-pizza'] 			     = {['name'] = 'cheese-pizza', 					['label'] = 'Cheese Pizza', 				['weight'] = 400, 		['type'] = 'item', 		['image'] = 'cheese-pizza.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Delicious Cheese Pizza'},

```

#
# Requirements
- QBCore
- [nh-context](https://github.com/nighmares/nh-context "nh-context") 

#
# Things to take care of:
- Make sure all the items are in ```shared.lua``` and items images are in qb-inventory/html/images
- Make sure the items that are useable in ```shared.lua``` also mentioned in small resources so that people can consume them.
- Make sure to enable nh-context.


