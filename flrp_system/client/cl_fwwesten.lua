ESX = nil
Citizen.CreateThread(function()
     while ESX == nil do
        TriggerEvent("esx:getSharedObject" , function(obj) ESX = obj end)
        Citizen.Wait(0)
     end
end)

local presse_weste = false
local eal_weste = false
local el_weste = false
local zfu_weste = false
local grfu_weste = false   
local presse_weste_ff = false
local eal_weste_ff = false
local el_weste_ff = false
local zfu_weste_ff = false
local grfu_weste_ff = false   
local lna_vest = false
local orgl_vest = false   
local weste = false

RegisterNetEvent("flrp_system:westensystem:einsatzabschnittsleiter")
AddEventHandler("flrp_system:westensystem:einsatzabschnittsleiter" , function()
    if eal_weste == false and weste == false then
        exports['progressBars']:startUI(3000, "Die EAL - Weste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 7)
        TriggerEvent("skinchanger:change", "bproof_2", 3)  

        eal_weste = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die EAL - Weste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die EAL - Weste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        eal_weste = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die EAL - Weste wurde ausgezogen', 1000, 'success')
    end
end)

RegisterNetEvent("flrp_system:westensystem:einsatzleiter")
AddEventHandler("flrp_system:westensystem:einsatzleiter" , function()
    if el_weste == false and weste == false then
        exports['progressBars']:startUI(3000, "Die EL - Weste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 7)
        TriggerEvent("skinchanger:change", "bproof_2", 2)  

        el_weste = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die EL - Weste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die EL - Weste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        el_weste = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die EL - Weste wurde ausgezogen', 1000, 'success')
    end
end)

RegisterNetEvent("flrp_system:westensystem:zugf")
AddEventHandler("flrp_system:westensystem:zugf" , function()
    if zfu_weste == false and weste == false then
        exports['progressBars']:startUI(3000, "Die Zugführer Weste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 7)
        TriggerEvent("skinchanger:change", "bproof_2", 1)  

        zfu_weste = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die Zugführer Weste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die Zugführer Weste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        zfu_weste = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die Zugführer Weste wurde ausgezogen', 1000, 'success')
    end
end)

RegisterNetEvent("flrp_system:westensystem:grfu_weste")
AddEventHandler("flrp_system:westensystem:grfu_weste" , function()
    if grfu_weste == false and weste == false then
        exports['progressBars']:startUI(3000, "Die Gruppenführer Weste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 7)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        grfu_weste = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die Gruppenführer Weste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die Gruppenführer Weste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        grfu_weste = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die Gruppenführer Weste wurde ausgezogen', 1000, 'success')
    end
end)

RegisterNetEvent("flrp_system:westensystem:presseweste")
AddEventHandler("flrp_system:westensystem:presseweste" , function()
    if presse_weste == false and weste == false then
        exports['progressBars']:startUI(3000, "Die Presseweste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 7)
        TriggerEvent("skinchanger:change", "bproof_2", 4)  

        presse_weste = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die Presseweste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die Presseweste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        presse_weste = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die Presseweste wurde ausgezogen', 1000, 'success')
    end
end)

-- FF 

RegisterNetEvent("flrp_system:westensystem:einsatzabschnittsleiterff")
AddEventHandler("flrp_system:westensystem:einsatzabschnittsleiterff" , function()
    if eal_weste_ff == false and weste == false then
        exports['progressBars']:startUI(3000, "Die EAL - Weste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 7)
        TriggerEvent("skinchanger:change", "bproof_2", 3)  

        eal_weste_ff = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die EAL - Weste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die EAL - Weste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        eal_weste_ff = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die EAL - Weste wurde ausgezogen', 1000, 'success')
    end
end)

RegisterNetEvent("flrp_system:westensystem:einsatzleiterff")
AddEventHandler("flrp_system:westensystem:einsatzleiterff" , function()
    if el_weste_ff == false and weste == false then
        exports['progressBars']:startUI(3000, "Die EL - Weste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 7)
        TriggerEvent("skinchanger:change", "bproof_2", 2)  

        el_weste_ff = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die EL - Weste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die EL - Weste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        el_weste_ff = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die EL - Weste wurde ausgezogen', 1000, 'success')
    end
end)

RegisterNetEvent("flrp_system:westensystem:zugfff")
AddEventHandler("flrp_system:westensystem:zugfff" , function()
    if zfu_weste_ff == false and weste == false then
        exports['progressBars']:startUI(3000, "Die Zugführer Weste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 7)
        TriggerEvent("skinchanger:change", "bproof_2", 1)  

        zfu_weste_ff = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die Zugführer Weste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die Zugführer Weste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        zfu_weste_ff = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die Zugführer Weste wurde ausgezogen', 1000, 'success')
    end
end)

RegisterNetEvent("flrp_system:westensystem:grfu_weste")
AddEventHandler("flrp_system:westensystem:grfu_weste" , function()
    if grfu_weste_ff == false and weste == false then
        exports['progressBars']:startUI(3000, "Die Gruppenführer Weste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 7)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        grfu_weste_ff = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die Gruppenführer Weste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die Gruppenführer Weste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        grfu_weste_ff = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die Gruppenführer Weste wurde ausgezogen', 1000, 'success')
    end
end)

RegisterNetEvent("flrp_system:westensystem:presseweste")
AddEventHandler("flrp_system:westensystem:presseweste" , function()
    if presse_weste_ff == false and weste == false then
        exports['progressBars']:startUI(3000, "Die Presseweste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 7)
        TriggerEvent("skinchanger:change", "bproof_2", 4)  

        presse_weste_ff = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die Presseweste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die Presseweste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        presse_weste_ff = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die Presseweste wurde ausgezogen', 1000, 'success')
    end
end)

-- LNA / ORGL

RegisterNetEvent("flrp_system:westensystem:orgl")
AddEventHandler("flrp_system:westensystem:orgl" , function()
    if orgl_vest == false and weste == false then
        exports['progressBars']:startUI(3000, "Die ORGL Weste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 3)
        TriggerEvent("skinchanger:change", "bproof_2", 1)  

        orgl_vest = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die ORGL Weste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die ORGL Weste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        orgl_vest = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die ORGL Weste wurde ausgezogen', 1000, 'success')
    end
end)

RegisterNetEvent("flrp_system:westensystem:lna")
AddEventHandler("flrp_system:westensystem:lna" , function()
    if lna_vest == false and weste == false then
        exports['progressBars']:startUI(3000, "Die LNA Weste wird angezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 3)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        lna_vest = true
        weste = true
        exports['okokNotify']:Alert('Feuerwehr', 'Die LNA Weste wurde angezogen', 1000, 'success')
    else
        exports['progressBars']:startUI(3000, "Die LNA Weste wird ausgezogen!")
        Citizen.Wait(3000)
        
        TriggerEvent("skinchanger:change", "bproof_1", 0)
        TriggerEvent("skinchanger:change", "bproof_2", 0)  

        lna_vest = false
        weste = false
        exports['okokNotify']:Alert('Feuerwehr', 'Die LNA weste  wurde ausgezogen', 1000, 'success')
    end
end)

