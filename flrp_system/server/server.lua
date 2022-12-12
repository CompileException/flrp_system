local ESX = nil
TriggerEvent('esx:getSharedObject', function (obj) ESX = obj end)

-----             -----
----- AMPELSYSTEM -----
-----             -----

AddEventHandler('onResourceStart', function(resourceName)

    if resourceName == Config.Ressourcename then
        print(Config.Prefix .. "*-*-*-*-*-*-*-*-*-*-*-*-*-*")
        print(Config.Prefix .. " ")
        print(Config.Prefix .. "System wird hochgefahren .....")
        print(Config.Prefix .. "System wird hochgefahren .....")
        print(Config.Prefix .. " ")
        print(Config.Prefix .. "*-*-*-*-*-*-*-*-*-*-*-*-*-*")
        print(Config.Prefix .. " ")
        print(Config.Prefix .. "- Ampelsync geladen!")
        print(Config.Prefix .. "- Lagshot geladen!")
        print(Config.Prefix .. "- NPCs geladen!")
        print(Config.Prefix .. "- Steuersystem geladen!")
        print(Config.Prefix .. "- Takehostage geladen!")
        print(Config.Prefix .. "- Client Functions geladen!")
        print(Config.Prefix .. "- Client Sync geladen!")
        print(Config.Prefix .. "- Server Functions geladen!")
        print(Config.Prefix .. "- Server Sync geladen!")
        print(Config.Prefix .. "- Disable AI - Emergency geladen!")
        print(Config.Prefix .. " ")
        print(Config.Prefix .. "*-*-*-*-*-*-*-*-*-*-*-*-*-*")
        print(Config.Prefix .. " ")
        print(Config.Prefix .. " DAS SYSTEM IST VOLLSTAENDIG HOCHGEFAHREN!")
        print(Config.Prefix .. " ")
        print(Config.Prefix .. "*-*-*-*-*-*-*-*-*-*-*-*-*-*")
    end
end)

-----             -----
----- AMPELSYSTEM -----
-----             -----

RegisterServerEvent("gerp_system_ampeln:setLight")
AddEventHandler("gerp_system_ampeln:setLight", function(coords)
    TriggerClientEvent("gerp_system_ampeln:setLight", -1, coords)
end)

-----             -----
----- Handysteuer -----
-----             -----

Citizen.CreateThread(function()
    while true do
        for k, playerid in pairs(GetPlayers()) do
            local xPlayer = ESX.GetPlayerFromId(playerid)
            if xPlayer.getInventoryItem("phone") ~= nil then
                local phoneCount = xPlayer.getInventoryItem("phone").count
                if phoneCount > 0 then
                    local price = 50
                    xPlayer.removeAccountMoney('bank', price)

                    TriggerClientEvent('flrp_system_steuern:picturemsg', xPlayer.source, 'CHAR_CHAT_CALL', 'Du hast ~r~' .. price .. ' Euro ~g~ für deinen Handy Vertrag ~s~gezahlt', 'Handy Vertrag')
                 
                    if Config.Debug then
                        print(Config.Prefix .. "[STEUERN] Handy-Steuer erfolgreich abgezogen!")
                    end
                end
            end
        end
        Citizen.Wait(60 * 60000)
    end
end)

-----             -----
----- KFZ-Steuer  -----
-----             -----
Citizen.CreateThread(function()
    while true do
        for k, playerid in pairs(GetPlayers()) do
            local xPlayer = ESX.GetPlayerFromId(playerid)

            if xPlayer ~=nil then
                local vehicleCount = MySQL.Sync.fetchScalar("SELECT COUNT(plate) FROM owned_vehicles WHERE owner = @owner",
                {
                    ['@owner'] = xPlayer.identifier,
                }
                )
                local tax = vehicleCount * 8
                xPlayer.removeAccountMoney('bank', tax)

                TriggerClientEvent('flrp_system_steuern:picturemsg', xPlayer.source, 'CHAR_LS_CUSTOMS', 'Du hast ~r~'.. tax .. ' Euro~s~ für die ~g~KFZ Steuer ~s~gezahlt', 'KFZ-Steuer')
                
                if Config.Debug then
                    print(Config.Prefix .. "[STEUERN] KFZ-Steuer erfolgreich abgezogen!")
                end  
            end   
        end
        Citizen.Wait(60 * 60000)
    end
end)

-----             -----
----- Krankenversicherung  -----
-----             -----
Citizen.CreateThread(function()
    while true do
        for k, playerid in pairs(GetPlayers()) do
            local xPlayer = ESX.GetPlayerFromId(playerid)

            if xPlayer ~=nil then
                xPlayer.removeAccountMoney('bank', 50)

                TriggerClientEvent('flrp_system_steuern:picturemsg', xPlayer.source, 'CHAR_MP_MORS_MUTUAL', 'Du hast ~r~50 Euro~s~ fuer die ~g~Krankenversicherung ~s~gezahlt', 'Krankenversicherung')
                
                if Config.Debug then
                    print(Config.Prefix .. "[STEUERN] Krankenversicherung erfolgreich abgezogen!")
                end  
            end   
        end
        Citizen.Wait(60 * 60000)
    end
end)

-----             -----
----- Takehostage -----
-----             -----

RegisterServerEvent('flrp_system_animations:sync')
AddEventHandler('flrp_system_animations:sync', function(target, animationLib,animationLib2, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget,attachFlag)
	TriggerClientEvent('flrp_system_animations:syncTarget', targetSrc, source, animationLib2, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget,attachFlag)
	TriggerClientEvent('flrp_system_animations:syncMe', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterServerEvent('flrp_system_animations:stop')
AddEventHandler('flrp_system_animations:stop', function(targetSrc)
	TriggerClientEvent('flrp_system_animations:cl_stop', targetSrc)
end)


-----             -----
----- Police Armory -----
-----             -----

local ESX = nil

local CachedPedState = false

TriggerEvent("esx:getSharedObject", function(response)
    ESX = response
end)

ESX.RegisterServerCallback("flrp_system:policearmory:pedExists", function(source, cb)
    if CachedPedState then
        cb(true)
    else
        CachedPedState = true

        cb(false)
    end
end)

RegisterServerEvent("flrp_system:policearmory:giveWeapon")
AddEventHandler("flrp_system:policearmory:giveWeapon", function(weapon)
    local player = ESX.GetPlayerFromId(source)

    if player then
        player.addWeapon(weapon, Config.ReceiveAmmo)

        TriggerClientEvent("esx:showNotification", source, "Erhalten: 1x " .. ESX.GetWeaponLabel(weapon) .. " mit " .. Config.ReceiveAmmo .. "x Schuss")
    end
end)

-----             -----
----- Realtime    -----
-----             -----

RegisterNetEvent("realtime:event")
AddEventHandler("realtime:event", function()
	TriggerClientEvent("realtime:event", source, tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")))
end)


-----             -----
----- Weapondeleter    -----
-----             -----

local Cops = {
	"steam:100000000000",
}

RegisterServerEvent("PoliceVehicleWeaponDeleter:askDropWeapon")
AddEventHandler("PoliceVehicleWeaponDeleter:askDropWeapon", function(wea)
	local isCop = false

	for _,k in pairs(Cops) do
		if(k == getPlayerID(source)) then
			isCop = true
			break;
		end
	end

	if(not isCop) then
		print(1)
		TriggerClientEvent("PoliceVehicleWeaponDeleter:drop", source, wea)
	end

end)


function getPlayerID(source)
    local identifiers = GetPlayerIdentifiers(source)
    local player = getIdentifiant(identifiers)
    return player
end

-- gets the actual player id unique to the player,
-- independent of whether the player changes their screen name
function getIdentifiant(id)
    for _, v in ipairs(id) do
        return v
    end
end


-----             -----
----- CARLOCK     -----
-----             -----

ESX.RegisterServerCallback('flrp_system:carlock:isVehicleOwner', function(source, cb, plate)
	local identifier = GetPlayerIdentifier(source, 0)

	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
		['@owner'] = identifier,
		['@plate'] = plate
	}, function(result)
		if result[1] then
			cb(result[1].owner == identifier)
		else
			cb(false)
		end
	end)
end)

