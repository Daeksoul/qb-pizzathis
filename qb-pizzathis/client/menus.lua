local QBCore = exports['qb-core']:GetCoreObject()

isLoggedIn = true
PlayerJob = {}

local onDuty = false

-- target

Citizen.CreateThread(function()

    exports['qb-target']:AddTargetModel('ig_floyd', {
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
			label = "Clock On/Off",
			job = Config.Job,
		    },
		},
		distance = 1.5
	})

		exports['qb-target']:AddBoxZone("pizza_tray_1", vector3(810.97, -752.97, 26.54), 1.05, 1.0, {
			name = "pizzeria_tray_1",
			heading = 35.0,
			debugPoly = false,
			minZ=26.54,
			maxZ=28.54,
		}, {
			options = {
			    {
				event = "qb-pizzathis:Tray1",
				icon = "far fa-clipboard",
				label = "Tray 1",
			    },
			},
			distance = 1.5
		})

--[[ 	exports['qb-target']:AddBoxZone("pizza_tray_2", vector3(-1193.87, -894.38, 14.0), 0.5, 0.7, {
		name="pizzeria_tray_2",
		heading=318,
		debugPoly=false,
		minZ=14.0,
		maxZ=14.4,
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
		name="pizzeria_tray_3",
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


	exports['qb-target']:AddBoxZone("pizzeriaoven", vector3(814.24, -752.95, 26.34), 1.8, 1.0, {
		name="pizzeriaoven",
		heading=34,
		debugPoly=false,
		minZ=26.34,
		maxZ=28.34,
	}, {
		options = {
			{
				event = "qb-pizzathis:PizzeriaOven",
				icon = "fa-solid fa-fire-burner",
				label = "Pizza Oven",
				job = Config.Job,
			},
		},
		distance = 1.5
	})

--[[ 	exports['qb-target']:AddBoxZone("burgershotcooker2 ", vector3(-1202.94, -897.38, 14.0), 1.7, 1, {
		name="burgershotcooker2 ",
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

--[[ 		exports['qb-target']:AddBoxZone("pizzeriafryer", vector3(807.66, -761.21, 26.78), 2.5, 1.5, {
		name="pizzeriafryer",
		heading=35,
		debugPoly=false,
		minZ=13.0,
		maxZ=14.4,
		}, {
		    options = {
			{
			    event = "qb-pizzathis:Fries",
			    icon = "fas fa-box",
			    label = "Make Fries",
			    job = Config.Job,
			},
		    },
		    distance = 1.5
		}) ]]


--[[ 	exports['qb-target']:AddBoxZone("pizzeriadrinks", vector3(813.48, -749.32, 26.78), 2.2, 0.6, {
	    name="pizzeriadrinks",
	    heading=34,
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

--[[         exports['qb-target']:AddBoxZone("burgershotdrinks2", vector3(-1189.08, -905.28, 14.0), 1.15, 0.7, {
            name="burgershotdrinks2",
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
                        label = "Order Ingredients!",
                        job = Config.Job,
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("pizzeriadisplay", vector3(812.13, -754.89, 26.78), 4.6, 1.2, {
            name="pizzeriadisplay",
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


            -----NEED TO FIGURE OUT WHAT THIS IS/DOES
        exports['qb-target']:AddBoxZone("craftfood", vector3(807.71, -757.5, 26.78), 1.8, 0.7, {
            name="craftfood",
            heading=304,
            debugPoly=false,
            minZ=26.78,
            maxZ=28.78,
        }, {
                options = {
                    {
                        event = "qb-pizzathis-menu:Food",
                        icon = "fa-solid fa-pizza-slice",
                        label = "Pizzeria Work Station",
                        job = Config.Job,
                    },
                },
                distance = 1.5
            })


        exports['qb-target']:AddBoxZone("Pizzeria_register_1", vector3(811.5, -752.03, 26.4), 0.5, 0.4, {
            name="Pizzeria_register_1",
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

        exports['qb-target']:AddBoxZone("Pizzeria_register_2", vector3(811.36, -750.7, 26.1), 0.6, 0.5, {
            name="Pizzeria_register_2",
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


--[[         exports['qb-target']:AddBoxZone("BurgerShot_register_3", vector3(-1193.39, -895.22, 14.0), 0.6, 0.4, {
            name="BurgerShot_register_3",
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




        exports['qb-target']:AddBoxZone("BurgerShot_register_4", vector3(-1192.52, -906.65, 14.0), 0.5, 0.5, {
            name="BurgerShot_register_4",
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

RegisterNetEvent('qb-pizzathis-menu:Food', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Available Food Items |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "• Tiramisu",
            txt = "Eggs (2) , Ground Coffee (2) , Dairy Products (2) , Chocolate Products (2) , Lady Fingers (2) ",
            params = {
                event = "qb-pizzathis:tiramisu"
            }
        },
        {
            
            header = "• Calamri Marinara",
            txt = "Squid (1) , Spaghetti (3) , Sauce (3)",
            params = {
                event = "qb-pizzathis:calamri-marinara"
            }
        },
        {
            
            header = "• Spaghetti Meatballs",
            txt = "spaghetti (1) , Mince Beef (3) , sauce (3)",
            params = {
                event = "qb-pizzathis:spaghetti-meatballs"
            }
        },
        {
            
            header = "• Pasta Alla Vodka",
            txt = "spaghetti (1) , Vodka (3) , Dairy Products (2) , Vegetables (2)",
            params = {
                event = "qb-pizzathis:alla-vodka"
            }
        },
        {
            
            header = "• Cheese Pizza",
            txt = "Dough (1) , Sauce (3) , Cheese (4)",
            params = {
                event = "qb-pizzathis:cheese-pizza"
            }
        },
        {
            
            header = "• Diavola Pizza",
            txt = "Dough (1) , Sauce (3) , Cheese (4) , Vegetables (2) , Salami (2)",
            params = {
                event = "qb-pizzathis:diavola-pizza"
            }
        },
        {
            
            header = "• Vegetarian Pizza",
            txt = "Dough (1) , Sauce (3) , Cheese (4) , Vegetables (2)",
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
            txt = "Order New Ingredients!",
            params = {
                event = "qb-pizzathis:shop"
            }
        },
        {
           
            header = "• Open Fridge",
            txt = "See what you have in storage",
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

--[[ RegisterNetEvent('qb-pizzathis-menu:DrinkMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            id = 0,
            header = "| Drink Menu |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "• Soft Drink",
            txt = "Soda Syrup",
            params = {
                event = "qb-pizzathis:SoftDrink"
            }
        },
        {
            
            header = "• Milkshake",
            txt = "Milkshake Formula",
            params = {
                event = "qb-pizzathis:mShake"
            }
        },
        {
           
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end) ]]


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

