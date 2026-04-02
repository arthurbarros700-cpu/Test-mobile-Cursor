fx_version 'cerulean'
game 'gta5'

name 'mechanic_pro'
author 'cursor-agent'
version '1.0.0'
description 'Mecânica avançada: danos por subsistema, estoque, painel NUI e reparos (incl. tubagem).'

lua54 'yes'

shared_scripts {
    'shared/config.lua',
    'shared/locale.lua',
}

client_scripts {
    'client/main.lua',
}

server_scripts {
    'server/main.lua',
}

ui_page 'nui/index.html'

files {
    'nui/index.html',
    'nui/style.css',
    'nui/app.js',
    'data/stock_default.json',
}
