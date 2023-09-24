Config = {}

Config.Job = 'pizzeria'

Config.GaragePedLocations = {
    {coords = vector4(815.69, -748.07, 26.73, 2.78)},
}

Config.CarSpawnLocation = vector4(808.75, -737.97, 27.61, 78.37)


--if u are not using qb-target uncomment this.

-- Config.Locations = {
--     ["duty"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },    
--     ["tray1"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },
--     ["tray2"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },
--     ["tray3"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },  
--     ["pattycooker"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--         [2] = vector4(0 , 0 , 0, 0),
--     }, 
--     ["fryer"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     }, 
--     ["drinks"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--         [2] = vector4(0 , 0 , 0, 0),
--     },   
--     ["fridge"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },      
--     ["storage"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },
--     ["craftburger"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },    
--     ["cashregister"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--         [2] = vector4(0 , 0 , 0, 0),
--         [3] = vector4(0 , 0 , 0, 0),
--         [4] = vector4(0 , 0 , 0, 0),
--     },   
--     ["garage"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     }, 
--  }


Config.Items = {
label = "Shop",
    slots = 20,
    items = {
        [1] = {
            name = "vegetables",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 2,
        },
        [2] = {
            name = "eggs",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [3] = {
            name = "groundcoffee",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 4,
        },
        [4] = {
            name = "dairyproducts",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 5,
        },
        [5] = {
            name = "pizzathis-mshakeformula",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 6,
        },
        [6] = {
            name = "pizzathis-sodasyrup",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 7,
        },
        [7] = {
            name = "chocolateproducts",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 8,
        },
        [8] = {
            name = "ladyfingers",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 9,
        },
        [9] = {
            name = "squid",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 10,
        },
        [10] = {
            name = "spaghetti",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 11,
        },
        [11] = {
            name = "mincebeef",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 12,
        },
        [12] = {
            name = "ladyfingers",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 14,
        },
        [13] = {
            name = "emptybottle",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 18,
        },     
        [14] = {
            name = "pizzathis-potato",  --Item needs adding to shared items, picture etc.
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 13,
        },
--[[    [15] = {
            name = "pineapple",  --Item needs adding to shared items, picture etc.
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "ham",  --Item needs adding to shared items, picture etc.
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 16,
        },
        [17] = {
            name = "mushrooms",  --Item needs adding to shared items, picture etc.
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 17,
        },
        [18] = {
            name = "ladyfingers",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 18,
        },       
        [19] = {
            name = "salt",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 19,
        },
        [20] = {
            name = "flour",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 20,
        }, ]]
    }
}