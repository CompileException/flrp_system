ESX = nil
Citizen.CreateThread(function() CheckESX() end)

function CheckESX()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end

RegisterNetEvent("flrp_system:personalausweis")
AddEventHandler("flrp_system:personalausweis", function(type)
    openPersonalAusweisMenu()
end)

RegisterNetEvent("flrp_system:fuehrerschein")
AddEventHandler("flrp_system:fuehrerschein", function(type)
    openFuehrerscheinMenu()
end)

function openPersonalAusweisMenu()
    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'id_card_menu',
      {
          title    = 'Personalausweis',
          elements = {
              {label = 'Personalausweis angucken', value = 'checkID'},
              {label = 'Personalausweis vorzeigen', value = 'showID'},
          }
      },
      function(data, menu)
          local val = data.current.value
          
          if val == 'checkID' then
              TriggerServerEvent('flrp_idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
          else
              local player, distance = ESX.Game.GetClosestPlayer()
              
              if distance ~= -1 and distance <= 3.0 then
                  TriggerServerEvent('flrp_idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
              else
                exports['okokNotify']:Alert('Personalausweis', 'Keine Person in deiner nähe', 1000, 'error')
              end
          end
      end,
      function(data, menu)
          menu.close()
      end
  )
  end

  function openFuehrerscheinMenu()
    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'id_card_menu',
      {
          title    = 'Führerschein',
          elements = {
              {label = 'Führerschein angucken', value = 'checkDriver'},
              {label = 'Führerschein vorzeigen', value = 'showDriver'},
          }
      },
      function(data, menu)
          local val = data.current.value
          
          if val == 'checkDriver' then
              TriggerServerEvent('flrp_idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
          else
              local player, distance = ESX.Game.GetClosestPlayer()
              
              if distance ~= -1 and distance <= 3.0 then
                    TriggerServerEvent('flrp_idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'driver')
              else
                exports['okokNotify']:Alert('Führerschein', 'Keine Person in deiner nähe', 1000, 'error')
              end
          end
      end,
      function(data, menu)
          menu.close()
      end
  )
  end
