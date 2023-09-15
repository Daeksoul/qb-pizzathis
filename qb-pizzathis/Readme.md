# A PizzaThis script for QBCore Framework, adapted from the qb-BurgerShot script

## Please note

- There is an option for people not using qb-target to replace the menus.lua file with the menus-notarget.lua file and uncomment lines in the config file.
- Please ensure that the latest dependencies are used aswell as core for this in order to work.
- This is still currently a WIP and subject to changes.
- This is an adaption from the qb-BurgerShot script by [NAME TBC] - All kudos go to them for making the script to begin with!

## Dependencies :

QBCore Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone (OPTIONAL: Only needed if using qb-target)

qb-target - https://github.com/BerkieBb/qb-target (OPTIONAL: Only needed if not using draw text)

qb-input - https://github.com/qbcore-framework/qb-input

qb-menu - https://github.com/qbcore-framework/qb-menu

Map - Gabz 'Pizza This' Restaurant MLO

Delivery Vehicles - https://www.gta5-mods.com/vehicles/foodworks-food-delivery-pack


## Insert into @qb-smallresources --> server --> consumables.lua
```
--PIZZA THIS!

--DRINK ITEMS
QBCore.Functions.CreateUseableItem("water_bottle", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("sodacup", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("whitewine", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("redwine", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

--FOOD ITEMS
QBCore.Functions.CreateUseableItem("tiramisu", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("calamri-marinara", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("spaghetti-meatballs", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("alla-vodka", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("cheese-pizza", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("diavola-pizza", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("vegetarian-pizza", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)
```



## Insert into @qb-smallresources --> config.lua
```
Config.ConsumablesEat = {

-- PIZZA THIS! 

	["tiramisu"] = math.random(35, 54),
	["calamri-marinara"] = math.random(35, 54),
	["spaghetti-meatballs"] = math.random(35, 54),
	["alla-vodka"] = math.random(35, 54),
	["cheese-pizza"] = math.random(35, 54),
	["diavola-pizza"] = math.random(35, 54),
	["vegetarian-pizza"] = math.random(35, 54),
}

Config.ConsumablesDrink = {

	-- PIZZA THIS! 

	["water_bottle"] = math.random(40, 50),
	["sodacup"] = math.random(40, 50),
	["whitewine"] = math.random(40, 50),
	["redwine"] = math.random(40, 50),
} 
```

## Insert into @qb-core/shared/items.lua 

```
SHARED ITEMS TO BE CONFIRMED

```

## Insert into @qb-core/shared/jobs.lua 
```
QBShared.Jobs = {
    ["pizzathis"] = {
		label = "Pizza This! Employee",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 50
            },
			['1'] = {
                name = "Waiter",
                payment = 75
            },
			['2'] = {
                name = "Chef",
                payment = 100
            },
			['3'] = {
                name = "Manager",
                payment = 125
            },
			['4'] = {
                name = "Proprietor",
				isboss = true,
                payment = 150
            },
        },
	},
}		
```



## Insert into @qb-management/client - cl_config.lua
```
Config.BossMenus = {

--COORDS TO BE CHANGED
	['pizzathis'] = {
		vector3(-1192.04, -902.476, 13.998),
	},
}

Config.BossMenuZones = {

--COORDS TO BE CHANGED
	['pizzathis'] = {
        { coords = vector3(-1192.04, -902.476, 13.998), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
}
```

