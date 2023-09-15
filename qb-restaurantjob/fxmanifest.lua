fx_version 'cerulean'
game 'gta5'

description 'Configurable Restaurant Job for QBCore'
version '1.0.0'

lua54 'yes'

shared_scripts { 
	'config.lua'
}

client_scripts {
	"client/*.lua",
    "config.lua",
}

server_scripts {
    "server/main.lua",
    "config.lua",
}

escrow_ignore{
    "client/customise_client.lua",
    'config.lua',
    'README.md'
}