local QBCore = exports['qb-core']:GetCoreObject()


--TOYS ARE A WORK IN PROGRESS!
-- RegisterNetEvent('qb-pizzathis:open:murdermeal', function()
    -- local src = source
    -- local Player = QBCore.Functions.GetPlayer(src)
    -- local randomToy = math.random(1,10)

    -- Player.Functions.RemoveItem("burger-murdermeal",1)
    -- TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["burger-murdermeal"], "remove")

    -- Player.Functions.AddItem("burger-heartstopper", 1)
    -- TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-heartstopper"], "add")
    -- Player.Functions.AddItem("burger-softdrink", 1)
    -- TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-softdrink"], "add")
    -- Player.Functions.AddItem("burger-fries", 1)
    -- TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["burger-fries"], "add")

    -- if randomToy < 4 then
        -- Player.Functions.AddItem("pizza-coupon10", 1)
        -- TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["pizza-coupon10"], "add")
            
    -- elseif randomToy == 4 then
        -- Player.Functions.AddItem("pizza-toy1", 1)
        -- TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["pizza-toy1"], "add")
            
    -- elseif randomToy < 10 and randomToy > 4 then
       -- Player.Functions.AddItem("pizza-coupon15", 1)
        -- TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["pizza-coupon15"], "add")
            
    -- elseif randomToy == 10 then
        -- Player.Functions.AddItem("pizza-toy2", 1)
        -- TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["pizza-toy2"], "add")
            
    -- elseif randomToy > 10 and randomToy < 15 then
        -- TriggerClientEvent("QBCore:Notify", src, "No toy in Box Looool", "error")
    -- elseif randomToy == 15 then
        -- Player.Functions.AddItem("pizza-coupon25", 1)
        -- TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["pizza-coupon25"], "add")
                        
    -- end  
-- end)


--NON-PIZZA FOOD ITEMS

RegisterNetEvent('qb-pizzathis:create:tiramisu', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("eggs",2)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["eggs"], "remove")
    Player.Functions.RemoveItem("groundcoffee",2)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["groundcoffee"], "remove")
    Player.Functions.RemoveItem("dairyproducts",2)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["dairyproducts"], "remove")
    Player.Functions.RemoveItem("chocolateproducts",2)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["chocolateproducts"], "remove")
    Player.Functions.RemoveItem("ladyfingers",2)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["ladyfingers"], "remove")
    
    Player.Functions.AddItem("tiramisu", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["tiramisu"], "add")
end)

RegisterNetEvent('qb-pizzathis:create:calamri-marinara', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("squid",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["squid"], "remove")
    Player.Functions.RemoveItem("spaghetti",3)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["spaghetti"], "remove")
    Player.Functions.RemoveItem("sauce",3)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["sauce"], "remove")
    
    Player.Functions.AddItem("calamri-marinara", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["calamri-marinara"], "add")
end)

RegisterNetEvent('qb-pizzathis:create:spaghetti-meatballs', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("spaghetti",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["spaghetti"], "remove")
    Player.Functions.RemoveItem("sauce",3)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["sauce"], "remove")
    Player.Functions.RemoveItem("mincebeef",3)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["mincebeef"], "remove")
    
    Player.Functions.AddItem("spaghetti-meatballs", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["spaghetti-meatballs"], "add")
end)

RegisterNetEvent('qb-pizzathis:create:alla-vodka', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("spaghetti",1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["spaghetti"], "remove")
    Player.Functions.RemoveItem("vodka",3)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["vodka"], "remove")
    Player.Functions.RemoveItem("dairyproducts",2)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["dairyproducts"], "remove")
    Player.Functions.RemoveItem("vegetables",2)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["vegetables"], "remove")
    
    Player.Functions.AddItem("alla-vodka", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["alla-vodka"], "add")
end)

--PIZZA FOOD ITEMS

RegisterNetEvent('qb-pizzathis:create:cheese-pizza', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("dough",1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["dough"], "remove")
    Player.Functions.RemoveItem("sauce",3)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["sauce"], "remove")
	Player.Functions.RemoveItem("cheese",4)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["cheese"], "remove")

    Player.Functions.AddItem("cheese-pizza", 1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["cheese-pizza"], "add")


end)

RegisterNetEvent('qb-pizzathis:create:diavola-pizza', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("dough",1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["dough"], "remove")
    Player.Functions.RemoveItem("sauce",3)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["sauce"], "remove")
    Player.Functions.RemoveItem("cheese",4)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["cheese"], "remove")
    Player.Functions.RemoveItem("vegetables",2)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["vegetables"], "remove")
	Player.Functions.RemoveItem("salami",2)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["salami"], "remove")

    Player.Functions.AddItem("diavola-pizza", 1)
    TriggerClientEvent("inventory:client:ItemBox", src,  QBCore.Shared.Items["diavola-pizza"], "add")
end)


RegisterNetEvent('qb-pizzathis:create:vegetarian-pizza', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("dough",1)
    TriggerClientEvent("inventory:client:ItemBox", src,QBCore.Shared.Items["dough"], "remove")
    Player.Functions.RemoveItem("sauce",3)
    TriggerClientEvent("inventory:client:ItemBox", src,QBCore.Shared.Items["sauce"], "remove")
    Player.Functions.RemoveItem("cheese",4)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["cheese"], "remove")
    Player.Functions.RemoveItem("vegetables",2)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["vegetables"], "remove")
    
    Player.Functions.AddItem("vegetarian-pizza", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["vegetarian-pizza"], "add")
end)

--INGREDIENTS - UNSURE HOW THESE ACTUALLY WORK?

QBCore.Functions.CreateCallback('qb-pizzathis:server:get:sauce', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local water = Ply.Functions.GetItemByName("water_bottle")
    local veg = Ply.Functions.GetItemByName("vegetables")
    if water ~= nil and veg ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-pizzathis:server:get:dough', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local yeast = Ply.Functions.GetItemByName("yeast")
    local salt = Ply.Functions.GetItemByName("salt")
	local flour = Ply.Functions.GetItemByName("flour")
    if meat ~= nil and bun ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('qb-pizzathis:add:water', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("water_bottle", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["water_bottle"], "add")
end)

RegisterNetEvent('qb-pizzathis:add:soda', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("sodacup", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["sodacup"], "add")
end)

RegisterNetEvent('qb-pizzathis:add:whitewine', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("whitewine", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["whitewine"], "add")
end)

RegisterNetEvent('qb-pizzathis:add:redwine', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("redwine", 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["redwine"], "add")
end)

--BILLING

RegisterServerEvent("qb-pizzathis:bill:player")
AddEventHandler("qb-pizzathis:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'pizzathis' then
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
