-----             -----
----- Essen       -----
-----             -----

ESX.RegisterUsableItem('bread', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bread', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Brot gegessen', 1000, 'success')
end)

-----			  -----
-----     KFC     -----
-----			  -----

ESX.RegisterUsableItem('salat', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('salat', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Salat gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('mais', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mais', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Mais gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('chicken', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chicken', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Chicken gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('crispychicken', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('crispychicken', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Crispy Chicken gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('chickennuggets', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chickennuggets', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Chickennuggets gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('chickenmenu', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chickenmenu', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Chickenmen� gegessen', 1000, 'success')
end)

-----			  -----
----- Starbucks   -----
-----			  -----

ESX.RegisterUsableItem('blaubeermuffin', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('blaubeermuffin', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Blaubeer Muffin gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('schokomuffin', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('schokomuffin', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Schoko Muffin gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('kekse', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kekse', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Kekse gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('crossaint', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('crossaint', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Croissant gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('erdbeerkuchen', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('erdbeerkuchen', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Erdbeerkuchen gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('johannisbeerkuchen', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('johannisbeerkuchen', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Johannisbeerkuchen gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('himbeerkuchen', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('himbeerkuchen', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Himbeerkuchen gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('donoutbox', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('donoutbox', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Donoutbox gegessen', 1000, 'success')
end)

-----     MCS     -----

ESX.RegisterUsableItem('cheeseburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cheeseburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Cheeseburger gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('bigmac', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bigmac', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Bigmac gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('pommes', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pommes', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Pommes gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('wrap', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('wrap', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Wrap gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('kinderbox', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kinderbox', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Kinderbox gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('eis', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('eis', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Eis gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('bigtastybacon', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bigtastybacon', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Big Tasty Bacon gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('hamburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('hamburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Hamburger gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('veganerburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('veganerburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Veganen Burger gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('su�igkeiten', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('su�igkeiten', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x S��igkeiten gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('eisamstiel', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('eisamstiel', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Eis am Stiel gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('salzstangen', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('salzstangen', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Salzstangen gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('riegel', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('riegel', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Riegel gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('chips', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chips', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Chips gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('schokolade', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('schokolade', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Schokolade gegessen', 1000, 'success')
end)



-----             -----
----- Trinken     -----
-----             -----

ESX.RegisterUsableItem('water', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Wasser getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('cola', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cola', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Cola getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('fanta', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('fanta', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Fanta getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('sprite', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sprite', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Sprite getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('eistee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('eistee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Eistee getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('lattemacchiato', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('lattemacchiato', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Latte Macchiato getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('capoccino', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('capoccino', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Capoccino getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('bubbletee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bubbletee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Bubbletee getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('espresso', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('espresso', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Espresso getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('schwarzertee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('schwarzertee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Schwarzer Tee getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('krautertee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('krautertee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Kr�uter Tee getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('eiskaffee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('eiskaffee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Eiskaffee getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('whiskey', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('whiskey', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Whiskey getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('rotwein', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('rotwein', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Rotwein getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('bier', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bier', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Bier getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('champagner', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('champagner', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Champagner getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('tequilla', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('tequilla', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Tequilla getrunken', 1000, 'success')
end)

-----			  -----
----- Weihnachtsmarkt   -----
-----			  -----

ESX.RegisterUsableItem('lebkuchen', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('lebkuchen', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Lebkuchen gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('spekulatius', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('spekulatius', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Spekulatius gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('crepes', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('crepes', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Crepes gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('waffeln', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('waffeln', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Waffeln gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('bratapfel', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bratapfel', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Bratapfel gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('currywurst', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('currywurst', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Currywurst gegessen', 1000, 'success')
end)



ESX.RegisterUsableItem('kinderpunsch', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kinderpunsch', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Trinken', 'Du hast 1x Kinderpunsch getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('wei�ergluhwein', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('wei�ergluhwein', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Trinken', 'Du hast 1x Wei�er Gl�hwein getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('rotergluhwein', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('rotergluhwein', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Trinken', 'Du hast 1x Roter Gl�hwein getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('kakao', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kakao', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Trinken', 'Du hast 1x Kakao getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('kakaomitschuss', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kakaomitschuss', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Trinken', 'Du hast 1x Kakao mit Schuss getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('feuerzangenbowle', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('feuerzangenbowle', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Trinken', 'Du hast 1x Feuerzangenbowle getrunken', 1000, 'success')
end)

ESX.RegisterUsableItem('eierpunsch', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('eierpunsch', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Trinken', 'Du hast 1x Eierpunsch getrunken', 1000, 'success')
end)


-----                      -----
-----     PizzaHermann     -----
-----                      -----

ESX.RegisterUsableItem('pizzaalahermann', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzaalahermann', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Pizza ala Herrmann gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('pizzacolzone', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzacolzone', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Pizza Colzone gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('pizzadekirby', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzadekirby', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Pizza de Kirby gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('pizzadeneumann', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzadeneumann', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Pizza de Neumann gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('pizzadeswan', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzadeswan', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Pizza de Swan gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('pizzadiablo', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzadiablo', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Pizza Diabolo gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('pizzafungi', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzafungi', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x Pizza fungi Famara gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('pizzahawaiie', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzahawaiie', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x gegessen', 1000, 'success')
end)

ESX.RegisterUsableItem('', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('okokNotify:Alert', source, 'Essen', 'Du hast 1x gegessen', 1000, 'success')
end)


