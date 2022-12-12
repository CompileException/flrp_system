Config = {}

--
-- [SYSTEM]
-- 
Config.Prefix = '^0[^1FLRP - System^0] --> ^2'
Config.Debug = true
Config.Ressourcename = 'flrp_system'

--
-- [DISCORD]
-- 
Config.DiscordWebhookSystemInfos = 'https://discord.com/api/webhooks/1035570457656688750/tOxQP7xujgfJQozvOUJrR-GT9vsd4pflhvnEuf3cqn5TKl81QFeB6_48zvuABsHJCbmN'
Config.DiscordWebhookKillinglogs = 'https://discord.com/api/webhooks/1035570457656688750/tOxQP7xujgfJQozvOUJrR-GT9vsd4pflhvnEuf3cqn5TKl81QFeB6_48zvuABsHJCbmN'
Config.DiscordWebhookChat = 'https://discord.com/api/webhooks/1035570457656688750/tOxQP7xujgfJQozvOUJrR-GT9vsd4pflhvnEuf3cqn5TKl81QFeB6_48zvuABsHJCbmN'


-- Bot/Client Avatar and UserName
Config.SystemAvatar = 'https://cdn.discordapp.com/attachments/1002942993344499803/1034884237897244712/unknown.png'

Config.UserAvatar = 'https://cdn.discordapp.com/attachments/1002942993344499803/1034884237897244712/unknown.png' -- Change this to a linn of your choice

Config.SystemName = 'FLRP x System' -- Change this to a name of your choice!

Config.SpecialCommands = {}
Config.BlacklistedCommands = {}

Config.OwnWebhookCommands = {
					  {'/aduty', 'https://discord.com/api/webhooks/1035570457656688750/tOxQP7xujgfJQozvOUJrR-GT9vsd4pflhvnEuf3cqn5TKl81QFeB6_48zvuABsHJCbmN'},
					  {'/car', 'https://discord.com/api/webhooks/1035570457656688750/tOxQP7xujgfJQozvOUJrR-GT9vsd4pflhvnEuf3cqn5TKl81QFeB6_48zvuABsHJCbmN'},
					  {'/dv', 'https://discord.com/api/webhooks/1035570457656688750/tOxQP7xujgfJQozvOUJrR-GT9vsd4pflhvnEuf3cqn5TKl81QFeB6_48zvuABsHJCbmN'},
					 }

--
-- [POLICEARMORY]
-- 
Config.OnlyPolicemen = true

-- This is how much ammo you should get per weapon you take out.
Config.ReceiveAmmo = 550

-- You don't need to edit these if you don't want to.479.2301, -996.6616, 30.6920, 268.5264
Config.Armory = { ["x"] = 479.2301, ["y"] = -996.6616, ["z"] = 30.6920, ["h"] = 268.5264 }
Config.ArmoryPed = { ["x"] = 480.7826, ["y"] = -996.5956, ["z"] = 29.6898, ["h"] = 88.0254, ["hash"] = "s_m_y_cop_01" }

-- This is the available weapons you can pick out.
Config.ArmoryWeapons = {
	{ ["hash"] = "weapon_smg", ["type"] = "rifle" },
	{ ["hash"] = "weapon_pistol", ["type"] = "pistol" },
	{ ["hash"] = "weapon_nightstick", ["type"] = "pistol" },
	{ ["hash"] = "weapon_stungun", ["type"] = "pistol" },
	{ ["hash"] = "weapon_flashlight", ["type"] = "pistol" },
	{ ["hash"] = "weapon_fireextinguisher", ["type"] = "pistol" }
}