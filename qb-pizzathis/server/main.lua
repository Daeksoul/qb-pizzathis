local QBCore = exports['qb-core']:GetCoreObject()

--FUTURE MEAL DEAL IDEA
--[[ RegisterNetEvent('qb-pizzathis:open:murdermeal', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local randomToy = math.random(1,10)

    Player.Functions.RemoveItem("burger-murdermeal",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["burger-murdermeal"], "remove")

    Player.Functions.AddItem("burger-heartstopper", 1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-heartstopper"], "add")
    Player.Functions.AddItem("burger-softdrink", 1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-softdrink"], "add")
    Player.Functions.AddItem("burger-fries", 1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-fries"], "add")

    if randomToy < 4 then
        Player.Functions.AddItem("burger-coupon10", 1)
        TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-coupon10"], "add")
            
    elseif randomToy == 4 then
        Player.Functions.AddItem("burger-toy1", 1)
        TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-toy1"], "add")
            
    elseif randomToy < 10 and randomToy > 4 then
       Player.Functions.AddItem("burger-coupon15", 1)
        TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-coupon15"], "add")
            
    elseif randomToy == 10 then
        Player.Functions.AddItem("burger-toy2", 1)
        TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-toy2"], "add")
            
    elseif randomToy > 10 and randomToy < 15 then
        TriggerClientEvent("QBCore:Notify", src, "No toy in Box Looool", "error")

    elseif randomToy == 15 then
        Player.Functions.AddItem("burger-coupon25", 1)
        TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-coupon25"], "add")
                        
    end  
end) ]]

---FUTURE MEAL DEAL IDEA
--[[ RegisterNetEvent('qb-pizzathis:create:murdermeal', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("burger-heartstopper",1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-heartstopper"], "remove")
    Player.Functions.RemoveItem("burger-softdrink",1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-softdrink"], "remove")
    Player.Functions.AddItem("burger-murdermeal", 1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-murdermeal"], "add")


end) ]]

--Margherita Pizza
RegisterNetEvent('qb-pizzathis:create:cheese-pizza', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("dough",1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["dough"], "remove")
    Player.Functions.RemoveItem("sauce",1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["sauce"], "remove")
    Player.Functions.RemoveItem("cheese",1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["cheese"], "remove")
    Player.Functions.AddItem("cheese-pizza", 1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["cheese-pizza"], "add")
end)

--Diavola Pizza
RegisterNetEvent('qb-pizzathis:create:diavola-pizza', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("dough",1)
    TriggerClientEvent("inventory:client:ItemBox", src,QBCore.Shared.Items["dough"], "remove")
    Player.Functions.RemoveItem("sauce",1)
    TriggerClientEvent("inventory:client:ItemBox", src,QBCore.Shared.Items["sauce"], "remove")
    Player.Functions.RemoveItem("cheese",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["cheese"], "remove")
    Player.Functions.RemoveItem("vegetables",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["vegetables"], "remove")
    Player.Functions.RemoveItem("salami",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["salami"], "remove")
    Player.Functions.AddItem("diavola-pizza", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["diavola-pizza"], "add")
end)

--Vegetarian Pizza
RegisterNetEvent('qb-pizzathis:create:vegetarian-pizza', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("dough",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["dough"], "remove")
    Player.Functions.RemoveItem("sauce",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["sauce"], "remove")
    Player.Functions.RemoveItem("cheese",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["cheese"], "remove")
    Player.Functions.RemoveItem("vegetables",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["vegetables"], "remove")
    Player.Functions.AddItem("vegetarian-pizza", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["vegetarian-pizza"], "add")
end)

RegisterNetEvent('qb-pizzathis:create:calamari-marinara', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("squid",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["squid"], "remove")
    Player.Functions.RemoveItem("spaghetti",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["spaghetti"], "remove")
    Player.Functions.RemoveItem("sauce",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["sauce"], "remove")
    Player.Functions.AddItem("calamari-marinara", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["calamari-marinara"], "add")
end)


--ITEM CREATION CALL BACKS, NEEDED TO MAKE THE ITEMS ABOVE

--PIZZAS ITEMS
QBCore.Functions.CreateCallback('qb-pizzathis:server:get:cheese-pizza', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local dough = Ply.Functions.GetItemByName("dough")
    local sauce = Ply.Functions.GetItemByName("sauce")
    local cheese = Ply.Functions.GetItemByName("cheese")
    if dough ~= nil and sauce ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-pizzathis:server:get:diavola-pizza', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local meat = Ply.Functions.GetItemByName("salami")
    local cheese = Ply.Functions.GetItemByName("cheese")
    local veg = Ply.Functions.GetItemByName("vegetables")
    local dough = Ply.Functions.GetItemByName("dough")
    local sauce = Ply.Functions.GetItemByName("sauce")
    if meat ~= nil and cheese ~= nil and veg ~= nil and dough ~= nil and sauce ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-pizzathis:server:get:vegetarian-pizza', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local dough = Ply.Functions.GetItemByName("dough")
    local sauce = Ply.Functions.GetItemByName("sauce")
    local cheese = Ply.Functions.GetItemByName("cheese")
    local veg = Ply.Functions.GetItemByName("vegetables")
    if dough ~= nil and sauce ~= nil and cheese ~= nil and veg ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

--PASTA ITEMS
QBCore.Functions.CreateCallback('qb-pizzathis:server:get:calamari-marinara', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local squid = Ply.Functions.GetItemByName("squid")
    local spaghetti = Ply.Functions.GetItemByName("spaghetti")
    local sauce = Ply.Functions.GetItemByName("sauce")
    if squid ~= nil and spaghetti ~= nil and sauce ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-pizzathis:server:get:spaghetti-meatballs', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local mincebeef = Ply.Functions.GetItemByName("mincebeef")
    local spaghetti = Ply.Functions.GetItemByName("spaghetti")
    local sauce = Ply.Functions.GetItemByName("sauce")
    if mincebeef ~= nil and spaghetti ~= nil and sauce ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-pizzathis:server:get:alla-vodka', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local dairy = Ply.Functions.GetItemByName("dairyproducts")
    local spaghetti = Ply.Functions.GetItemByName("spaghetti")
    local vodka = Ply.Functions.GetItemByName("vodka")
    local veg = Ply.Functions.GetItemByName("vegetables")
    if dairy ~= nil and spaghetti ~= nil and vodka ~= nil and veg ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

--DESERT ITEMS
QBCore.Functions.CreateCallback('qb-pizzathis:server:get:tiramisu', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local eggs = Ply.Functions.GetItemByName("eggs")
    local grndcoff = Ply.Functions.GetItemByName("groundcoffee")
    local dairy = Ply.Functions.GetItemByName("dairyproducts")
    local choc = Ply.Functions.GetItemByName("chocolateproducts")
    local lfingers = Ply.Functions.GetItemByName("ladyfingers")
    if eggs ~= nil and grndcoff ~= nil and dairy ~= nil and choc ~= nil and lfingers ~=nil then
        cb(true)
    else
        cb(false)
    end
end)

--COMING SOON?
--[[ QBCore.Functions.CreateCallback('qb-pizzathis:server:get:hawaiian-pizza', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local dough = Ply.Functions.GetItemByName("dough")
    local sauce = Ply.Functions.GetItemByName("sauce")
    local pineapple = Ply.Functions.GetItemByName("pineapple")
    local cheese = Ply.Functions.GetItemByName("cheese")
    local ham = Ply.Functions.GetItemByName("ham")
    if dough ~= nil and sauce ~= nil and mushrooms ~= nil and cheese ~= nil and ham ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-pizzathis:server:get:mushroom-pizza', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local dough = Ply.Functions.GetItemByName("dough")
    local sauce = Ply.Functions.GetItemByName("sauce")
    local mushrooms = Ply.Functions.GetItemByName("mushrooms")
    local cheese = Ply.Functions.GetItemByName("cheese")
    if dough ~= nil and sauce ~= nil and mushrooms ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end) ]]


--FUTURE MEAL DEAL IDEA
--[[ QBCore.Functions.CreateCallback('qb-pizzathis:server:get:ingredientMurderMeal', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local fries = Ply.Functions.GetItemByName("burger-fries")
    local heartstopper = Ply.Functions.GetItemByName("burger-heartstopper")
    local software = Ply.Functions.GetItemByName("burger-softdrink")
    if fries ~= nil and heartstopper ~= nil and software ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateUseableItem("burger-murdermeal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-pizzathis:MurderMeal", source, item.name)
end) ]]




RegisterNetEvent('qb-pizzathis:remove:pizzathis-potato', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("pizzathis-potato", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["pizzathis-potato"], "remove")
end)

--ITEM NEEDS ADDING TO SHARED ITEMS/PICTURE MADE/ETC.
RegisterNetEvent('qb-pizzathis:add:pizzathis-wedges', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("pizzathis-wedges", 4)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["pizzathis-wedges"], "add")
end)


RegisterNetEvent('qb-pizzathis:remove:sodasyrup', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("pizzathis-sodasyrup", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["pizzathis-sodasyrup"], "remove")
end)

RegisterNetEvent('qb-pizzathis:add:softdrink', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("pizzathis-softdrink", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["pizzathis-softdrink"], "add")
end)

RegisterNetEvent('qb-pizzathis:remove:mshakeformula', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("pizzathis-mshakeformula", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["pizzathis-mshakeformula"], "remove")
end)

RegisterNetEvent('qb-pizzathis:add:mshake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("pizzathis-mshake", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["pizzathis-mshake"], "add")
end)

RegisterNetEvent('qb-pizzathis:remove:emptybottle', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("emptybottle", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["emptybottle"], "remove")
end)

RegisterNetEvent('qb-pizzathis:add:water_bottle', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("water_bottle", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["water_bottle"], "add")
end)

--[[ RegisterNetEvent('qb-pizzathis:remove:rawpatty', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("burger-raw", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["burger-raw"], "remove")
end)

RegisterNetEvent('qb-pizzathis:add:burgermeat', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("burger-meat", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["burger-meat"], "add")
end) ]]

RegisterServerEvent("qb-pizzathis:bill:player")
AddEventHandler("qb-pizzathis:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'burgershot' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
                            ['citizenid'] = billed.PlayerData.citizenid,
                            ['amount'] = amount,
                            ['society'] = biller.PlayerData.job.name,
                            ['sender'] = biller.PlayerData.charinfo.firstname
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No Access', 'error')
        end
end)