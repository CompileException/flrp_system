fx_version 'adamant'
game 'gta5'

author 'LucasL.'
description 'FLRP x Serversystem'
version '2.0'

client_scripts {
	'@es_extended/locale.lua',
	'client/*.lua',
	'events/xmas.lua',
	'events/xmas_weather.lua',
	'utils/*.lua',
	'discord/*.lua',
	'config.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'server/*.lua',
	'discord/*.lua',
	'events/xmas.lua',
	'events/xmas_weather.lua',
	'utils/*.lua',
	'config.lua'
}

config {
	'config.lua'
}

-- files {
-- 	'html/*.*'
-- }