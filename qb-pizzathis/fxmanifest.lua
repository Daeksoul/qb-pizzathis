fx_version 'cerulean'
game 'gta5'

author 'Original script by DrB1ackBeard - adaptation by Daeksoul'
description 'qb-burgershot for QBCore Created By DrB1ackBeard adaptation by Daeksoul to be used for Pizza This! restaurant job.'
version '1.0.0'

shared_scripts {
    'config.lua'
}

client_scripts {
	'client/main.lua',
	'client/garage.lua',
	'client/menus.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua'
}
