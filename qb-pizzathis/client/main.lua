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
    PizzaThis = AddBlipForCoord(804.21, -747.59, 26.78)
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

--FUTURE MEAL DEALS IDEA
-- RegisterNetEvent("qb-pizzathis:MurderMeal", function()
-- 		TriggerServerEvent('qb-pizzathis:open:murdermeal')
-- end)

---FUTURE MEAL DEALS IDEA
--[[ RegisterNetEvent("qb-pizzathis:CreateMurderMeal", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-pizzathis:server:get:ingredientMurderMeal', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making A Murder Meal..", 4000, false, false, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function()
					TriggerServerEvent('qb-pizzathis:create:murdermeal')
                    QBCore.Functions.Notify("You made a A Murder Meal", "success")
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
end) ]]

RegisterNetEvent("qb-pizzathis:cheese-pizza", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-pizzathis:server:get:cheese-pizza', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making a Margherita Pizza..", 4000, false, false, {
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
                    QBCore.Functions.Notify("You made a Margherita Pizza", "success")
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
				QBCore.Functions.Progressbar("pickup_sla", "Making a Diavola Pizza..", 4000, false, false, {
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
				QBCore.Functions.Progressbar("pickup_sla", "Making a Vegetarian Pizza..", 4000, false, false, {
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

RegisterNetEvent("qb-pizzathis:calamari-marinara", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-pizzathis:server:get:calamari-marinara', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Calamari Alla Marinara..", 4000, false, false, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function()
					TriggerServerEvent('qb-pizzathis:create:calamari-marinara')
           			QBCore.Functions.Notify("You made Calamari Alla Marinara", "success")
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
				QBCore.Functions.Progressbar("pickup_sla", "Making Homemade Spaghetti Meatballs..", 4000, false, false, {
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
                   	QBCore.Functions.Notify("You made Homemade Spaghetti Meatballs", "success")
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
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end  
end)

RegisterNetEvent("qb-pizzathis:SoftDrink", function()
    if onDuty then
		local HasItem = QBCore.Functions.HasItem("pizzathis-sodasyrup")
        if HasItem then
           MakeSoftDrink()
        else
            QBCore.Functions.Notify("You don't have any soda syrup..", "error")
        end
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-pizzathis:mShake", function()
    if onDuty then
	local HasItem = QBCore.Functions.HasItem("pizzathis-mshakeformula")
        if HasItem then
           MakeMShake()
        else
            QBCore.Functions.Notify("You don't have any Milkshake Formula..", "error")
        end
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-pizzathis:emptybottle", function()
    if onDuty then
	local HasItem = QBCore.Functions.HasItem("pizzathis-emptybottle")
		if HasItem then
           MakeWater()
		else
            QBCore.Functions.Notify("You don't have an empty bottle..", "error")
        end
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-pizzathis:pizzathis-wedges", function()
    if onDuty then
		local HasItem = QBCore.Functions.HasItem("pizzathis-potato")
        if HasItem then
           MakeFries()
        else
            QBCore.Functions.Notify("You don't have any potatoes..", "error")
        end
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)


--[[ RegisterNetEvent("qb-pizzathis:PattyFry", function()
    if onDuty then
	local HasItem = QBCore.Functions.HasItem("burger-raw")
        if HasItem then
           MakePatty()
        else
            QBCore.Functions.Notify("You don't have any raw patties..", "error")
        end
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end) ]]

-- Functions --
function MakeFries()
	TriggerServerEvent('qb-pizzathis:remove:pizzathis-potato')
	QBCore.Functions.Progressbar("pickup", "Frying the wedges..", 4000, false, false, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }, {
		model = "prop_cs_fork",
		bone = 28422,
		coords = vector3(-0.005, 0.00, 0.00),
		rotation = vector3(175.0, 160.0, 0.0),
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('qb-pizzathis:add:pizzathis-wedges')
	QBCore.Functions.Notify("You made 4 wedges", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end


function MakePatty()
	TriggerServerEvent('qb-pizzathis:remove:rawpatty')
    QBCore.Functions.Progressbar("pickup", "Cooking the Patty..", 4000, false, false, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    },{
        animDict = "amb@prop_human_bbq@male@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_cs_fork",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    }    
)
    Citizen.Wait(4000)
	TriggerServerEvent('qb-pizzathis:add:burgermeat')
    QBCore.Functions.Notify("You cooked the meat", "success")
    StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function MakeSoftDrink()
	TriggerServerEvent('qb-pizzathis:remove:sodasyrup')
    QBCore.Functions.Progressbar("pickup", "Filling a cup..", 4000, false, false, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
    Citizen.Wait(4000)
	TriggerServerEvent('qb-pizzathis:add:softdrink')
    QBCore.Functions.Notify("You made a Soda", "success")
end  


function MakeMShake()
	TriggerServerEvent('qb-pizzathis:remove:mshakeformula')
    Player.Functions.RemoveItem("pizzathis-mshakeformula", 1)
    QBCore.Functions.Progressbar("pickup", "Filling up a cup..", 4000, false, false, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
    Citizen.Wait(4000)
	TriggerServerEvent('qb-pizzathis:add:mshake')
    QBCore.Functions.Notify("You made a Milkshake", "success")
end  

function MakeWater()
    QBCore.Functions.Progressbar("pickup", "Grabbing a bottle..", 4000, false, false, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
    Citizen.Wait(4000)
	TriggerServerEvent('qb-pizzathis:add:water_bottle')
    QBCore.Functions.Notify("You grabbed a bottle of water", "success")
end  
   
RegisterNetEvent("qb-pizzathis:shop")
AddEventHandler("qb-pizzathis:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", Config.Job, Config.Items)
end)