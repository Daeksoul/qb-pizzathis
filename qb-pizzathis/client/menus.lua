local QBCore = exports['qb-core']:GetCoreObject()

isLoggedIn = true
PlayerJob = {}

local onDuty = false

-- target

Citizen.CreateThread(function()

    exports['qb-target']:AddTargetModel('ig_talcc', {
        options = {
            {
                type = "client",
                event = "garage:PizzaThisGarage",
                icon = "fas fa-car",
                label = "Pizza This! Garage",
                job = Config.Job,
            },
        },
        distance = 2.5
    })

	exports['qb-target']:AddBoxZone("PizzaThisDuty", vector3(807.99, -748.54, 26.78), 1, 1.2, {
		name = "PizzaThisDuty",
		heading = 32,
		debugPoly = false,
		minZ=26.78,
		maxZ=28.78,
	}, {
		options = {
		    {  
			event = "qb-pizzathis:DutyB",
			icon = "far fa-clipboard",
			label = "Clock On / Off",
			job = Config.Job,
		    },
		},
		distance = 1.5
	})

    exports['qb-target']:AddBoxZone("pizza_tray_1", vector3(810.87, -751.99, 28.03), 1.05, 1.0, {
        name = "pizza_tray_1",
        heading = 35.0,
        debugPoly = false,
        minZ=26.54,
        maxZ=28.54,
    }, {
        options = {
            {
            event = "qb-pizzathis:Tray1",
            icon = "fa-solid fa-plate-wheat",
            label = "Tray 1",
            },
        },
        distance = 1.5
    })

---ROOM FOR EXPANSION IF EXTRA NEEDED
--[[ exports['qb-target']:AddBoxZone("pizza_tray_2", vector3(810.84, -750.73, 28.03), 0.5, 0.7, {
    name="pizza_tray_2",
    heading=318,
    debugPoly=false,
    minZ=26.54,
    maxZ=28.54,
}, {
    options = {
        {
        event = "qb-pizzathis:Tray2",
        icon = "far fa-clipboard",
        label = "Tray 2",
        },
    },
    distance = 1.5
}) ]]


--[[ 	exports['qb-target']:AddBoxZone("pizza_tray_3", vector3(-1193.88, -906.98, 14.0), 1, 1, {
    name="pizza_tray_3",
    heading=350,
    debugPoly=false,
    minZ=13.2,
    maxZ=14.2,
}, {
    options = {
        {
        event = "qb-pizzathis:Tray3",
        icon = "far fa-clipboard",
        label = "Tray 3",
        },
    },
    distance = 3.5
}) ]]

---LEFT SIDE OF PIZZA OVEN BEHIND BAR // UNUSED FOR NOW, AS USING 'CRAFT STATION - MAY MAKE USE TO CREATE THE DOUGH, SAUCE, ETC. IN FUTURE'
--[[ exports['qb-target']:AddBoxZone("pizzathiscooker", vector3(814.24, -752.95, 26.34), 1.8, 1.0, {
    name="pizzathiscooker",
    heading=34,
    debugPoly=false,
    minZ=26.34,
    maxZ=28.34,
}, {
    options = {
        {
            event = "qb-pizzathis:PattyFry",
            icon = "fa-solid fa-pizza-slice",
            label = "Cooking Station - Left",
            job = Config.Job,
        },
    },
    distance = 1.5
}) ]]

--POSSIBLY AMEND COORDS TO SOMETHING IN THE KITCHEN? // UNUSED FOR NOW AS NOWHERE TO PUT IT.
--[[ 	exports['qb-target']:AddBoxZone("pizzathiscooker2 ", vector3(-1202.94, -897.38, 14.0), 1.7, 1, {
		name="pizzathiscooker2 ",
		heading=34,
		debugPoly=false,
		minZ=13.0,
		maxZ=14.3,
	}, {
		options = {
			{
				event = "qb-pizzathis:PattyFry",
				icon = "fas fa-hamburger",
				label = "Burger Cook Station 2",
				job = Config.Job,
			},
		},
		distance = 1.5
	}) ]]

    exports['qb-target']:AddBoxZone("pizzathisfryer", vector3(807.68, -761.2, 26.78), 2.5, 1.5, {
		name="pizzathisfryer",
		heading=35,
		debugPoly=false,
		minZ=20.78,
		maxZ=22.78,
		}, {
		    options = {
			{
			    event = "qb-pizzathis:pizzathis-wedges",
			    icon = "fas fa-box",
			    label = "Make Wedges",
			    job = Config.Job,
			},
		    },
		    distance = 1.5
		})


    exports['qb-target']:AddBoxZone("pizzathisdrinks", vector3(813.48, -749.32, 26.78), 2.2, 0.6, {
            name="pizzathisdrinks",
            heading=34,
            debugPoly=false,
            minZ=26.78,
            maxZ=28.78,
            }, {
            options = {
                {
                event = "qb-pizzathis-menu:DrinkMenu",
                icon = "fas fa-filter",
                label = "Make Drinks",
                job = Config.Job,
                },
            },
            distance = 1.5
            })
    
--[[         exports['qb-target']:AddBoxZone("pizzathisdrinks2", vector3(-1189.08, -905.28, 14.0), 1.15, 0.7, {
                name="pizzathisdrinks2",
                heading=33,
                debugPoly=false,
                minZ=13.8,
                maxZ=14.8,
                }, {
                    options = {
                        {
                            event = "qb-pizzathis-menu:DrinkMenu",
                            icon = "fas fa-filter",
                            label = "Make Some Drinks",
                            job = Config.Job,
                        },
                    },
                    distance = 1.5
                }) ]]

     exports['qb-target']:AddBoxZone("pizzeriafridge", vector3(806.2, -761.67, 26.78), 1.6, 1, {
        name="pizzeriafridge",
        heading=35,
        debugPoly=false,
        minZ=26.78,
        maxZ=28.78,
    }, {
            options = {
                {
                    event = "qb-pizzathis-menu:OrderMenu",
                    icon = "fas fa-laptop",
                    label = "Order Ingredients / Open Fridge",
                    job = Config.Job,
                },
            },
            distance = 1.5
        })

    exports['qb-target']:AddBoxZone("pizzathisdisplay", vector3(812.13, -754.89, 26.78), 4.6, 1.2, {
        name="pizzathisdisplay",
        heading=34,
        debugPoly=false,
        minZ=26.78,
        maxZ=28.78,
    }, {
            options = {
                {
                    event = "qb-pizzathis:Storage",
                    icon = "fas fa-box",
                    label = "Storage",
                    job = Config.Job,
                },
            },
            distance = 1.5
        })

            ---RIGHT SIDE OF THE PIZZA OVEN BEHIND THE BAR
            exports['qb-target']:AddBoxZone("craftburger", vector3(814.24, -752.95, 26.34), 1.8, 0.7, {
                name="craftburger",
                heading=304,
                debugPoly=false,
                minZ=26.78,
                maxZ=28.78,
            }, {
                    options = {
                        {
                            event = "qb-pizzathis-menu:Burgers",
                            icon = "fa-solid fa-pizza-slice",
                            label = "Cooking Station - Right",
                            job = Config.Job,
                        },
                    },
                    distance = 1.5
                })
    
    
            exports['qb-target']:AddBoxZone("PizzaThis_register_1", vector3(811.5, -752.03, 26.4), 0.5, 0.4, {
                name="PizzaThis_register_1",
                debugPoly=false,
                heading=125,
                minZ=26.4,
                maxZ=28.4,
            }, {
                    options = {
                        {
                            event = "qb-pizzathis:bill",
                            parms = "1",
                            icon = "fas fa-credit-card",
                            label = "Charge Customer",
                            job = Config.Job,
                        },
                    },
                    distance = 1.5
                })
    
            exports['qb-target']:AddBoxZone("PizzaThis_register_2", vector3(811.36, -750.7, 26.1), 0.6, 0.5, {
                name="PizzaThis_register_2",
                debugPoly=false,
                heading=302,
                minZ=26.1,
                maxZ=28.1,
                }, {
                        options = {
                            {
                                event = "qb-pizzathis:bill",
                                parms = "2",
                                icon = "fas fa-credit-card",
                                label = "Charge Customer",
                                job = Config.Job,
                            },
                        },
                        distance = 1.5
                    })  
    
    
    --[[         exports['qb-target']:AddBoxZone("PizzaThis_register_3", vector3(-1193.39, -895.22, 14.0), 0.6, 0.4, {
                name="PizzaThis_register_3",
                debugPoly=false,
                heading=125,
                minZ=14.0,
                maxZ=14.4,
                        }, {
                                options = {
                                    {
                                        event = "qb-pizzathis:bill",
                                        parms = "3",
                                        icon = "fas fa-credit-card",
                                        label = "Charge Customer",
                                        job = Config.Job,
                                    },
                                },
                                distance = 1.5
                            })  
    
    
    
    
            exports['qb-target']:AddBoxZone("PizzaThis_register_4", vector3(-1192.52, -906.65, 14.0), 0.5, 0.5, {
                name="PizzaThis_register_4",
                heading=0,
                debugPoly=false,
                minZ=13.8,
                maxZ=14.2,
                    }, {
                            options = {
                                {
                                    event = "qb-pizzathis:bill",
                                    parms = "4",
                                    icon = "fas fa-credit-card",
                                    label = "Charge Customer",
                                    job = Config.Job,
                                },
                            },
                            distance = 1.5
                }) ]]
    
    end)


-- QB-MENU --
RegisterNetEvent('qb-pizzathis-menu:Burgers', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Available Food Items |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "• Tiramisu",
            txt = "Eggs, Ground Coffee, Dairy Products, Chocolate Products, Lady Fingers ",
            params = {
                event = "qb-pizzathis:tiramisu"
            }
        },
        {
            
            header = "• Calamri Marinara",
            txt = "Squid, Spaghetti, Sauce",
            params = {
                event = "qb-pizzathis:calamri-marinara"
            }
        },
        {
            
            header = "• Spaghetti Meatballs",
            txt = "spaghetti, Mince Beef, Sauce",
            params = {
                event = "qb-pizzathis:spaghetti-meatballs"
            }
        },
        {
            
            header = "• Pasta Alla Vodka",
            txt = "Spaghetti, Vodka, Dairy Products, Vegetables",
            params = {
                event = "qb-pizzathis:alla-vodka"
            }
        },
        {
            
            header = "• Cheese Pizza",
            txt = "Dough, Sauce, Cheese",
            params = {
                event = "qb-pizzathis:cheese-pizza"
            }
        },
        {
            
            header = "• Diavola Pizza",
            txt = "Dough, Sauce, Cheese, Vegetables, Salami",
            params = {
                event = "qb-pizzathis:diavola-pizza"
            }
        },
        {
            
            header = "• Vegetarian Pizza",
            txt = "Dough, Sauce, Cheese, Vegetables",
            params = {
                event = "qb-pizzathis:vegetarian-pizza"
            }
        },
        {
            id = 7,
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)

RegisterNetEvent('qb-pizzathis-menu:OrderMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Fridge |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "• Order Items",
            txt = "Order Ingredients",
            params = {
                event = "qb-pizzathis:shop"
            }
        },
        {
           
            header = "• Open Fridge",
            txt = "Open the Fridge",
            params = {
                event = "qb-pizzathis:Storage2"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)

RegisterNetEvent('qb-pizzathis-menu:DrinkMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            id = 0,
            header = "| Drink Menu |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "• Soft Drink",
            txt = "Fizzy Soda Drink, in a styrofoam cup",
            params = {
                event = "qb-pizzathis:SoftDrink"
            }
        },
        {
            
            header = "• Milkshake",
            txt = "Flavoured Milkshake, yum",
            params = {
                event = "qb-pizzathis:mShake"
            }
        },
        {
            
            header = "• Bottle of Water",
            txt = "bo'ohw'o'wo'er, innit bruv",
            params = {
                event = "qb-pizzathis:water_bottle"
            }
        },
        {
            
            header = "• Coffee",
            txt = "Wake me up, before you go-go.",
            params = {
                event = "qb-pizzathis:coffee"
            }
        },
        {
            
            header = "• Grape Juice",
            txt = "Tart and Fruity",
            params = {
                event = "qb-pizzathis:grapejuice"
            }
        },
        {
            header = "• Pißwasser Beer",
            txt = "You're In, For A Good Time",
            params = {
            event = "qb-pizzathis:beer"
            }
        },
        {
            header = "• Red Wine",
            txt = "For those sophistocated types",
            params = {
            event = "qb-pizzathis:redwine"
            }
        },
        {
            header = "• White Wine",
            txt = "For those sophistocated types",
            params = {
            event = "qb-pizzathis:whitewine"
            }
        },
        {
           
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)


-- Till Stuff --
RegisterNetEvent("qb-pizzathis:bill")
AddEventHandler("qb-pizzathis:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Create Receipt",
		submitText = "Bill",
        inputs = {
            {
                text = "Server ID(#)",
				name = "citizenid", -- name of the input should be unique otherwise it might override
                type = "text", -- type of the input
                isRequired = true -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            },
            {
                text = "Bill Price ($)", -- text you want to be displayed as a place holder
                name = "billprice", -- name of the input should be unique otherwise it might override
                type = "number", -- type of the input - number will not allow non-number characters in the field so only accepts 0-9
                isRequired = false -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            }
			
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("qb-pizzathis:bill:player", bill.citizenid, bill.billprice)
    end
end)

