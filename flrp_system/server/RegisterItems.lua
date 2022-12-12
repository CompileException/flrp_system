ESX = nil
TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

-----             -----
----- PERSO       -----
-----             -----

ESX.RegisterUsableItem('personalausweis', function ( source )
	local _source  = source
    TriggerClientEvent('flrp_system:personalausweis', source, 'personalausweis')
end)

ESX.RegisterUsableItem('fuehrerschein', function ( source )
	local _source  = source
    TriggerClientEvent('flrp_system:fuehrerschein', source, 'fuehrerschein')
end)

-----             -----
----- FW Westen       -----
-----             -----

ESX.RegisterUsableItem("eal_weste", function(source) TriggerClientEvent("flrp_system:westensystem:einsatzabschnittsleiter" , source) end)

ESX.RegisterUsableItem("el_weste", function(source) TriggerClientEvent("flrp_system:westensystem:einsatzleiter" , source) end)

ESX.RegisterUsableItem("zfu_weste", function(source) TriggerClientEvent("flrp_system:westensystem:zugf" , source) end)

ESX.RegisterUsableItem("grfu_weste", function(source) TriggerClientEvent("flrp_system:westensystem:grfu_weste" , source) end)

ESX.RegisterUsableItem("presse_weste", function(source) TriggerClientEvent("flrp_system:westensystem:presseweste" , source) end)

-- FF

ESX.RegisterUsableItem("eal_westeff", function(source) TriggerClientEvent("flrp_system:westensystem:einsatzabschnittsleiterff" , source) end)

ESX.RegisterUsableItem("el_westeff", function(source) TriggerClientEvent("flrp_system:westensystem:einsatzleiterff" , source) end)

ESX.RegisterUsableItem("zfu_westeff", function(source) TriggerClientEvent("flrp_system:westensystem:zugfff" , source) end)

ESX.RegisterUsableItem("grfu_westeff", function(source) TriggerClientEvent("flrp_system:westensystem:grfu_westeff" , source) end)

ESX.RegisterUsableItem("presse_westeff", function(source) TriggerClientEvent("flrp_system:westensystem:pressewesteff" , source) end)

-- 

ESX.RegisterUsableItem("orgl_vest", function(source) TriggerClientEvent("flrp_system:westensystem:orgl" , source) end)

ESX.RegisterUsableItem("lna_vest", function(source) TriggerClientEvent("flrp_system:westensystem:lna" , source) end)
