local WaitTime = 2500 -- How often do you want to update the status (In MS)

--local DiscordAppId = tonumber(GetConvar("RichAppId", "740006241832796160"))
local DiscordAppAsset = GetConvar("RichAssetId", "logo512x512")
local UseKMH = GetConvar("RichUseKMH", true)
	
Citizen.CreateThread(function()
	SetDiscordAppId(740006241832796160)
	SetDiscordRichPresenceAsset(DiscordAppAsset)
	while true do
	--Here you can add hover text for the "large" icon.
    SetDiscordRichPresenceAssetText('Webseite: https://flensburg-rp.de/')
       
    --Here you will have to put the image name for the "small" icon.
    SetDiscordRichPresenceAssetSmall('logo512x512')

    --Here you can add hover text for the "small" icon.
    SetDiscordRichPresenceAssetSmallText('Discord: https://discord.gg/flensburgrp')
	
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId(),true))
		local StreetHash = GetStreetNameAtCoord(x, y, z)
		Citizen.Wait(WaitTime)
		if StreetHash ~= nil then
			StreetName = GetStreetNameFromHashKey(StreetHash)
			if IsPedOnFoot(PlayerPedId()) and not IsEntityInWater(PlayerPedId()) then
				if IsPedSprinting(PlayerPedId()) then
					SetRichPresence("Rennt die Straße: "..StreetName.." runter")
				elseif IsPedRunning(PlayerPedId()) then
					SetRichPresence("Rennt die Straße: "..StreetName.." runter")
				elseif IsPedWalking(PlayerPedId()) then
					SetRichPresence("Geht die Straße: "..StreetName.." runter")
				elseif IsPedStill(PlayerPedId()) then
					SetRichPresence("Steht bei: "..StreetName)
				end
			elseif GetVehiclePedIsUsing(PlayerPedId()) ~= nil and not IsPedInAnyHeli(PlayerPedId()) and not IsPedInAnyPlane(PlayerPedId()) and not IsPedOnFoot(PlayerPedId()) and not IsPedInAnySub(PlayerPedId()) and not IsPedInAnyBoat(PlayerPedId()) then
				local VehSpeed = GetEntitySpeed(GetVehiclePedIsUsing(PlayerPedId()))
				local CurSpeed = UseKMH and math.ceil(VehSpeed * 3.6) or math.ceil(VehSpeed * 2.236936)
				local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))))
				if CurSpeed > 50 then
					SetRichPresence("Fährt die Straße: "..StreetName.." in einem "..VehName)
				elseif CurSpeed <= 50 and CurSpeed > 0 then
					SetRichPresence("Fährt die Straße: "..StreetName.." in einem "..VehName)
				elseif CurSpeed == 0 then
					SetRichPresence("Parkt auf der Straße: "..StreetName.." in einem "..VehName)
				end
			elseif IsPedInAnyHeli(PlayerPedId()) or IsPedInAnyPlane(PlayerPedId()) then
				local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))))
				if IsEntityInAir(GetVehiclePedIsUsing(PlayerPedId())) or GetEntityHeightAboveGround(GetVehiclePedIsUsing(PlayerPedId())) > 5.0 then
					SetRichPresence("Fliegt über "..StreetName.." in einem "..VehName)
				else
					SetRichPresence("Landet bei "..StreetName.." in einem "..VehName)
				end
			elseif IsEntityInWater(PlayerPedId()) then
				SetRichPresence("Schwimmt rum")
			elseif IsPedInAnyBoat(PlayerPedId()) and IsEntityInWater(GetVehiclePedIsUsing(PlayerPedId())) then
				local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))))
				SetRichPresence("Segelt herum in einem: "..VehName)
			elseif IsPedInAnySub(PlayerPedId()) and IsEntityInWater(GetVehiclePedIsUsing(PlayerPedId())) then
				SetRichPresence("In einer gelben Ente")
			end
		end
	end
end)