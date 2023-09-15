Config = {}

Config.Job = "pizza"

Config.FolderName = "qb-restaurant"

Config.Locations = {
    [1] = {coords = vector3(813.52, -749.39, 26.78), text = "Drink Station", config = Drink},
    [2] = {coords = vector3(809.87, -761.2, 26.78), text = "Prep Station", config = Prep},
    [3] = {coords = vector3(806.91, -757.58, 26.78), text = "Dough Station", config = Dough},
    [4] = {coords = vector3(813.34, -752.86, 26.78), text = "Oven", config = Oven},
    [5] = {coords = vector3(814.75, -760.27, 22.3), text = "Cheese", config = Cheese},
}

Config.JobStash = {
    [1] =  {coords = vector3(806.28, -761.96, 26.78), name = 'Pizza This Employee Stash', size = 4000000, slots = 100},
	[2] =  {coords = vector3(810.5, -764.3, 31.27), name = 'Private Pizza This Employee Stash', size = 4000000, slots = 100},
}

Drink = {
    [1] = {
        label = "Water", 
        description = "Water Bottle", 
        item = "water_bottle", --item that will be given
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Water", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
    [2] = {
        label = "Soda", 
        description = "Cup Of Soda", 
        item = "sodacup", --item that will be given
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Cup Of Soda", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
    [3] = {
        label = "White Wine", 
        description = "Finest Italian White Wine", 
        item = "whitewine", --item that will be given
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Bottle Of White Wine", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
    [4] = {
        label = "Red Wine", 
        description = "Finest Italian Red Wine", 
        item = "redwine", --item that will be given
        required = {}, -- required items to make (empty if no items required)
        progressbar = "Grabbing Bottle Of Red Wine", -- text to display on progressbar
        progresstime = 5000, -- time required to make in milliseconds
        dictionary = 'amb@prop_human_bbq@male@idle_a', --dictionary name for animation
        animname = "idle_b", --animation name
    },
}

Prep = {
    [1] = {
        label = "Make Pizza Sauce", 
        description = "Water 1x | Vegetables 1x", 
        item = "sauce", --item that will be given
        required = {
            [1] = {itemName = "water_bottle", amount = 1},
            [2] = {itemName = "vegetables", amount = 1},
        },
        progressbar = "Making Pizza Sauce", -- text to display on progressbar
        progresstime = 10000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    },
    [2] = {
        label = "Make Tiramisu", 
        description = "Eggs 2x | Ground Coffee 2x | Dairy Products 2x | Chocolate Products 2x | Lady Fingers 2x", 
        item = "tiramisu", --item that will be given
        required = {
            [1] = {itemName = "eggs", amount = 2},
            [2] = {itemName = "groundcoffee", amount = 2},
			[3] = {itemName = "dairyproducts", amount = 2},
			[4] = {itemName = "chocolateproducts", amount = 2},
			[5] = {itemName = "ladyfingers", amount = 2},
        },
        progressbar = "Making Tiramisu", -- text to display on progressbar
        progresstime = 10000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    },
	[3] = {
        label = "Make Calamari Marinara", 
        description = "Squid 1x | Spaghetti 3x | Sauce 3x", 
        item = "calamri-marinara", --item that will be given
        required = {
            [1] = {itemName = "squid", amount = 1},
            [2] = {itemName = "spaghetti", amount = 3},
			[3] = {itemName = "sauce", amount = 3},
        }, -- required items to make
        progressbar = "Making Calamari Marinara", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
	[4] = {
        label = "Make Homemade Spaghetti Meatballs", 
        description = "Spaghetti 1x | Sauce 3x | Mince Beef 3x", 
        item = "spaghetti-meatballs", --item that will be given
        required = {
            [1] = {itemName = "spaghetti", amount = 1},
            [2] = {itemName = "sauce", amount = 3},
			[3] = {itemName = "mincebeef", amount = 3},
        }, -- required items to make
        progressbar = "Making Spaghetti Meatballs", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
	[5] = {
        label = "Make Alla Vodka", 
        description = "Spaghetti 1x | Vodka 3x | Dairy Products 2x | Vegetables 2x", 
        item = "alla-vodka", --item that will be given
        required = {
            [1] = {itemName = "spaghetti", amount = 1},
            [2] = {itemName = "vodka", amount = 3},
			[3] = {itemName = "dairyproducts", amount = 2},
			[4] = {itemName = "vegetables", amount = 2},
        }, -- required items to make
        progressbar = "Making Alla Vodka", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
}

Oven = {
    [1] = {
        label = "Make Margherita Pizza", 
        description = "Pizza Dough 1x | Pizza Sauce 3x | Cheese 4x", 
        item = "cheese-pizza", --item that will be given
        required = {
            [1] = {itemName = "dough", amount = 1},
            [2] = {itemName = "sauce", amount = 3},
            [3] = {itemName = "cheese", amount = 4},
        }, -- required items to make
        progressbar = "Making Margherita Pizza", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
	[2] = {
        label = "Make Diavola Pizza", 
        description = "Pizza Dough 1x | Pizza Sauce 3x | Cheese 4x | Vegetables 2x | Salami 2x", 
        item = "diavola-pizza", --item that will be given
        required = {
            [1] = {itemName = "dough", amount = 1},
            [2] = {itemName = "sauce", amount = 3},
            [3] = {itemName = "cheese", amount = 4},
			[4] = {itemName = "vegetables", amount = 2},
			[5] = {itemName = "salami", amount = 2},
        }, -- required items to make
        progressbar = "Making Diavola Pizza", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
	[3] = {
        label = "Make Vegetarian Pizza", 
        description = "Pizza Dough 1x | Pizza Sauce 3x | Cheese 4x | Vegetables 2x", 
        item = "vegetarian-pizza", --item that will be given
        required = {
            [1] = {itemName = "dough", amount = 1},
            [2] = {itemName = "sauce", amount = 3},
            [3] = {itemName = "cheese", amount = 4},
			[4] = {itemName = "vegetables", amount = 2},
        }, -- required items to make
        progressbar = "Making Vegetarian Pizza", -- text to display on progressbar
        progresstime = 15000, -- in milliseconds
        dictionary = "anim@mp_player_intmenu@key_fob@", --dictionary name for animation
        animname = "fob_click", --animation name
    },
}

Dough = {
    [1] = {
        label = "Make Dough", 
        description = "Yeast 2x | Flour 3x | Salt 2x", 
        item = "dough", --item that will be given
        required = {
            [1] = {itemName = "yeast", amount = 2},
            [2] = {itemName = "salt", amount = 3},
            [3] = {itemName = "flour", amount = 2},
        }, -- required items to make
        progressbar = "Making Pizza Dough", -- text to display on progressbar
        progresstime = 10000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    },
}

Cheese = {
    [1] = {
        label = "Cheese", 
        description = "", 
        item = "cheese", --item that will be given
        required = {}, -- required items to make
        progressbar = "Grabbing Cheese", -- text to display on progressbar
        progresstime = 10000, -- in milliseconds
        dictionary = "mini@repair", --dictionary name for animation
        animname = "fixing_a_player", --animation name
    }
}