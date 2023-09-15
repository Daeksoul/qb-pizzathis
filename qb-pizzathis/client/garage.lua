local QBCore = exports['qb-core']:GetCoreObject()
PlayerData = {}
local pedspawned = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
function QBCore.Functions.GetPlayerData(cb)
    if cb then
        cb(QBCore.PlayerData)
    else
        return QBCore.PlayerData
    end
end

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(job)
     	PlayerData.job = job
end)

RegisterNetEvent('QBCore:Player:SetPlayerData')
AddEventHandler('QBCore:Player:SetPlayerData', function(val)
	PlayerData = val
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		for k, v in pairs(Config.GaragePedLocations) do
			local pos = GetEntityCoords(PlayerPedId())	
			local dist = #(pos - vector3(v.coords.x, v.coords.y, v.coords.z))
			
			if dist < 40 and not pedspawned then
				TriggerEvent('qb-pizzathis:spawn:ped', v.coords)
				pedspawned = true
			end
			if dist >= 35 then
				pedspawned = false
				DeletePed(npc)
			end
		end
	end
end)

RegisterNetEvent('qb-pizzathis:spawn:ped')
AddEventHandler('qb-pizzathis:spawn:ped',function(coords)
	local hash = 'ig_floyd'

	RequestModel(hash)
	while not HasModelLoaded(hash) do 
		Wait(10)
	end

    	pedspawned = true
        npc = CreatePed(5, hash, coords.x, coords.y, coords.z - 1.0, coords.w, false, false)
        FreezeEntityPosition(npc, true)
        SetBlockingOfNonTemporaryEvents(npc, true)
        loadAnimDict("amb@world_human_cop_idles@male@idle_b") 
        TaskPlayAnim(npc, "amb@world_human_cop_idles@male@idle_b", "idle_e", 8.0, 1.0, -1, 17, 0, 0, 0, 0)
end)

function loadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(5)
    end
end

RegisterCommand('livery', function(source, args, rawCommand)
	local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
  local livery = tonumber(args[1])

  SetVehicleLivery(Veh, livery) --CHANGE livery(id)
  drawNotification("Vehicle Livery ~r~"..livery.."~s~ loaded!")
end)

function drawNotification(Notification)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(Notification)
	DrawNotification(false, false)
end

RegisterNetEvent('qb-pizzathis:garage')
AddEventHandler('qb-pizzathis:garage', function(bs)
    local vehicle = bs.vehicle  
    local coords = Config.CarSpawnLocation
        if PlayerData.job.onduty then
            if PlayerData.job.name == Config.Job then
                if vehicle == 'foodbike' then			--Food Delivery Faggio Sport
                    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
                        SetVehicleNumberPlateText(veh, "P1ZZ4TH15"..tostring(math.random(1000, 9999)))
                        exports['LegacyFuel']:SetFuel(veh, 100.0)
                        SetEntityHeading(veh, coords.w)
                        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
                        SetVehicleEngineOn(veh, true, true)
                    end, coords, true)
                elseif vehicle == 'foodcar4' then		--Food Delivery Panto 
                    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
                        SetVehicleNumberPlateText(veh, "P1ZZ4TH15"..tostring(math.random(1000, 9999)))
                        SetVehicleLivery(veh, 14)
                        exports['LegacyFuel']:SetFuel(veh, 100.0)
                        SetEntityHeading(veh, coords.w)
                        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
                        SetVehicleEngineOn(veh, true, true)
                    end, coords, true)
                end
            else 
                QBCore.Functions.Notify('You are not an employee of Pizza This!', 'error')
            end
        end
end)

RegisterNetEvent('qb-pizzathis:storecar')
AddEventHandler('qb-pizzathis:storecar', function()
    QBCore.Functions.Notify('Work Vehicle Stored!')
    local car = GetVehiclePedIsIn(PlayerPedId(),true)
    NetworkFadeOutEntity(car, true,false)
    Citizen.Wait(2000)
    QBCore.Functions.DeleteVehicle(car)
end)

RegisterNetEvent('garage:PizzaThisGarage', function()
    exports['qb-menu']:openMenu({
        {
            header = "| Pizza This! Garage |",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "• Pizza This! Faggio",
            txt = "Pizza This! Delivery Bike",
            params = {
                event = "qb-pizzathis:garage",
                args = {
                    vehicle = 'foodbike',
                }
            }
        },
        {
            header = "• Pizza This! Panto",									--Needs to be amended to the Pizza vehicle
            txt = "Pizza This! Delivery Car",									--Needs to be amended to the Pizza vehicle
            params = {
                event = "qb-pizzathis:garage",
                args = {
                    vehicle = 'foodcar4',									--Needs to be amended to the Pizza vehicle
                }
            }
        },
        {
            header = "• Store Vehicle",
            txt = "Store Vehicle Inside Garage",
            params = {
                event = "qb-pizzathis:storecar",
                args = {
                    
                }
            }
        },	
        {
            header = "Close (ESC)",
            isMenuHeader = true,
        },	
    })
end)
