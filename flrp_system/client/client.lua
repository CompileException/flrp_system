---            ---
--- Antipolice ---
---            ---

SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_LOST"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_SALVA"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_HILLBILLY"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_BALLAS"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_MEXICAN"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_FAMILY"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_MARABUNTE"), GetHashKey("PLAYER"))

SetRelationshipBetweenGroups(1, GetHashKey("GANG_1"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("GANG_2"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("GANG_9"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("GANG_10"), GetHashKey("PLAYER"))

SetRelationshipBetweenGroups(1, GetHashKey("FIREMAN"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("MEDIC"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("COP"), GetHashKey("PLAYER"))

local dispatchTypes =
{
	DT_PoliceAutomobile = { ID = 1, ACTIVE = false },
	DT_PoliceHelicopter = { ID = 2, ACTIVE = false },
	DT_FireDepartment = { ID = 3, ACTIVE = false },
	DT_SwatAutomobile = { ID = 4, ACTIVE = false },
	DT_AmbulanceDepartment = { ID = 5, ACTIVE = false },
	DT_PoliceRiders = { ID = 6, ACTIVE = false },
	DT_PoliceVehicleRequest = { ID = 7, ACTIVE = false },
	DT_PoliceRoadBlock = { ID = 8, ACTIVE = false},
	DT_PoliceAutomobileWaitPulledOver = { ID = 9, ACTIVE = false },
	DT_PoliceAutomobileWaitCruising = { ID = 10, ACTIVE = false },
	DT_Gangs = { ID = 11, ACTIVE = false },
	DT_SwatHelicopter = { ID = 12, ACTIVE = false },
	DT_PoliceBoat = { ID = 13, ACTIVE = false },
	DT_ArmyVehicle = { ID = 14, ACTIVE = false },
	DT_BikerBackup = { ID = 15, ACTIVE = false }
}

Citizen.CreateThread(function()
	while true do
		Wait(0)
		if NetworkIsPlayerActive(PlayerId()) then
			for k,v in pairs(dispatchTypes) do
				EnableDispatchService(dispatchTypes[k].ID, dispatchTypes[k].ACTIVE)
			end
			SetMaxWantedLevel(0)
			break;
		end
	end
end)

---              ---
--- NPC´s reduzieren ---
---              ---


-- -- Density values from 0.0 to 1.0.
-- DensityMultiplier = 0.1
-- Citizen.CreateThread(function()
-- 	while true do
-- 	    Citizen.Wait(0)
-- 	    SetVehicleDensityMultiplierThisFrame(DensityMultiplier)
-- 	    SetPedDensityMultiplierThisFrame(DensityMultiplier)
-- 	    SetRandomVehicleDensityMultiplierThisFrame(DensityMultiplier)
-- 	    SetParkedVehicleDensityMultiplierThisFrame(DensityMultiplier)
-- 	    SetScenarioPedDensityMultiplierThisFrame(DensityMultiplier, DensityMultiplier)
-- 	end
-- end)

---              ---
--- Bartwachstum ---
---              ---

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(30 * 60000) --- 30min

        TriggerEvent('skinchanger:getSkin', function (skinData)
            if skinData ~= nil then
                if skinData['beard_2'] > 0 and skinData['beard_2'] < 10 then
                    skinData['beard_2'] = skinData['beard_2'] + 1
                    TriggerEvent('skinchanger:loadSkin', skinData)
                    TriggerServerEvent('esx_skin:save', skinData)

                    if Config.Debug then
                        print(Config.Prefix .. "[Bartwachstum] Der bart wächst!")
                    end
                end
            end
        end)
    end
end)

---              ---
---     NPC      ---
---              ---

local koordinaten = {
    {0000.00, 0000.00, 00.00, 000.19, "hash vom NPC", "Ped Model Name"}
}

Citizen.CreateThread(function ()
    for _,v in pairs(koordinaten) do
        RequestModel(GetHashKey(v[6]))
        while not HasModelLoaded(GetHashKey(v[6])) do
            Wait(1)
        end

        RequestAnimDict("mini@strip_club@idles@bouncer@base")
        while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
            Wait(1)
        end

        ped = CreatePed(4, v[4], v[1], v[2], v[3], v[4], false, true)
        SetEntityHeading(ped, v[4])
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskPlayAnim(ped, "mini@strip_club@idles@bouncer@base", "base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)

---              ---
---   Realtime   ---
---              ---

SetMillisecondsPerGameMinute(60000)
RegisterNetEvent("realtime:event")
AddEventHandler("realtime:event", function(h, m, s)
	NetworkOverrideClockTime(h, m, s)
end)
TriggerServerEvent("realtime:event")


---              ---
--- Steuersystem ---
---              ---

ESX = nil
Citizen.CreateThread(function()
 while ESX == nil do TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)Citizen.Wait(0)end
end)

RegisterNetEvent('flrp_system_steuern:picturemsg')
AddEventHandler('flrp_system_steuern:picturemsg', function (icon, msg, title, subtitle)
    showPictureNotification(icon, msg, title, subtitle)
end)


function showPictureNotification(icon, msg, title, subtitle)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg);
    SetNotificationMessage(icon, icon, true, 1, title, subtitle);
    DrawNotification(false, true);
end