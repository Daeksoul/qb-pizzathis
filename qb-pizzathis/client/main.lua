local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local onDuty = false
PlayerJob = {}

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        if PlayerData.job.onduty then
            if PlayerData.job.name == Config.Job then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
	onDuty = duty
end)

Citizen.CreateThread(function()
    PizzaThis = AddBlipForCoord(-1197.32, -897.655, 13.995)
    SetBlipSprite (PizzaThis, 106)
    SetBlipDisplay(PizzaThis, 4)
    SetBlipScale  (PizzaThis, 0.5)
    SetBlipAsShortRange(PizzaThis, true)
    SetBlipColour(PizzaThis, 75)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("PizzaThis")
    EndTextCommandSetBlipName(PizzaThis)
end) 

RegisterNetEvent("qb-pizzathis:DutyB", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("qb-pizzathis:Tray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pizzatray1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pizzatray1", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-pizzathis:Tray4", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pizzatray4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pizzatray4", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-pizzathis:Tray3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pizzatray3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pizzatray3", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-pizzathis:Storage", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pizzastorage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pizzastorage", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-pizzathis:Storage2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pizzastorage2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pizzastorage2", {
        maxweight = 250000,
        slots = 40,
    })
end)

--POSSIBLE FUTURE 'MEAL DEAL' CREATIONS??
-- RegisterNetEvent("qb-pizzathis:MurderMeal", function()
		-- TriggerServerEvent('qb-pizzathis:open:murdermeal')
-- end)

RegisterNetEvent("qb-pizzathis:tiramisu", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-pizzathis:server:get:tiramisu', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Tiramisu..", 4000, false, false, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function()
					TriggerServerEvent('qb-pizzathis:create:tiramisu')
                    QBCore.Functions.Notify("You made Tiramisu", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
	else
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-pizzathis:calamri-marinara", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-pizzathis:server:get:calamri-marinara', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Calamri Marinara..", 4000, false, false, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function()
					TriggerServerEvent('qb-pizzathis:create:calamri-marinara')
                    QBCore.Functions.Notify("You made Calamri Marinara", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-pizzathis:spaghetti-meatballs", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-pizzathis:server:get:spaghetti-meatballs', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Spaghetti Meatballs..", 4000, false, false, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function()
					TriggerServerEvent('qb-pizzathis:create:spaghetti-meatballs')
           			QBCore.Functions.Notify("You made Spaghetti Meatballs", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-pizzathis:alla-vodka", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-pizzathis:server:get:alla-vodka', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Pasta Alla Vodka..", 4000, false, false, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function()
					TriggerServerEvent('qb-pizzathis:create:alla-vodka')
           			QBCore.Functions.Notify("You made Pasta Alla Vodka", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-pizzathis:cheese-pizza", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-pizzathis:server:get:cheese-pizza', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making A Cheese Pizza..", 4000, false, false, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function()
					TriggerServerEvent('qb-pizzathis:create:cheese-pizza')
           			QBCore.Functions.Notify("You made a Cheese Pizza", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end  
end)

RegisterNetEvent("qb-pizzathis:diavola-pizza", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-pizzathis:server:get:diavola-pizza', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making A Diavola Pizza..", 4000, false, false, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function()
					TriggerServerEvent('qb-pizzathis:create:diavola-pizza')
                   	QBCore.Functions.Notify("You made a Diavola Pizza", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end  
end)

RegisterNetEvent("qb-pizzathis:vegetarian-pizza", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-pizzathis:server:get:vegetarian-pizza', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making A Vegetarian Pizza..", 4000, false, false, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function()
					TriggerServerEvent('qb-pizzathis:create:vegetarian-pizza')
                   	QBCore.Functions.Notify("You made a Vegetarian Pizza", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end  
end)

--POSSIBLE FUTURE SIDES??
-- RegisterNetEvent("qb-pizzathis:Wedges", function()
    -- if onDuty then
		-- local HasItem = QBCore.Functions.HasItem("potato")
        -- if HasItem then
           -- MakeFries()
        -- else
            -- QBCore.Functions.Notify("You don't have any potatoes..", "error")
        -- end
    -- else
        -- QBCore.Functions.Notify("You must be Clocked into work", "error")
    -- end
-- end)
-- RegisterNetEvent("qb-pizzathis:CheeseSticks", function()
    -- if onDuty then
		-- local HasItem = QBCore.Functions.HasItems("cheese-sticks")
        -- if HasItems then
           -- MakeFries()
        -- else
            -- QBCore.Functions.Notify("You don't have the ingredients..", "error")
        -- end
    -- else
        -- QBCore.Functions.Notify("You must be Clocked into work", "error")
    -- end
-- end)


-- Functions --
function MakeDough()
	TriggerServerEvent('qb-pizzathis:remove:yeast')
	TriggerServerEvent('qb-pizzathis:remove:salt')
	TriggerServerEvent('qb-pizzathis:remove:flour')
	QBCore.Functions.Progressbar("pickup", "Kneading Dough..", 4000, false, false, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "mini@repair",
	    anim = "fixing_a_player",
	    flags = 8,
	    }, {
		-- model = "prop_cs_fork",
		-- bone = 28422,
		-- coords = vector3(-0.005, 0.00, 0.00),
		-- rotation = vector3(175.0, 160.0, 0.0),
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('qb-pizzathis:add:dough')
	QBCore.Functions.Notify("You made Pizza Dough", "success")
	StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
end


function MakeSauce()
	TriggerServerEvent('qb-pizzathis:remove:water_bottle')
	TriggerServerEvent('qb-pizzathis:remove:vegetables')
    QBCore.Functions.Progressbar("pickup", "Making the Sauce..", 4000, false, false, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    },{
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 8,
    }, {
        -- model = "prop_cs_fork",
        -- bone = 28422,
        -- coords = vector3(-0.005, 0.00, 0.00),
        -- rotation = vector3(175.0, 160.0, 0.0),
    }    
)
    Citizen.Wait(4000)
	TriggerServerEvent('qb-pizzathis:add:sauce')
    QBCore.Functions.Notify("You cooked the meat", "success")
    StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
end
   
RegisterNetEvent("qb-pizzathis:shop")
AddEventHandler("qb-pizzathis:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", Config.Job, Config.Items)
end)
