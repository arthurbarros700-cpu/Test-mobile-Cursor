fx_version 'cerulean'
game 'gta5'

lua54 'yes'

name 'vx_mechanic_pro'
author 'Cursor Cloud Agent'
description 'Sistema de mecanica ultra realista com danos por componentes, estoque, ordens de servico e tunagem profissional'
version '1.0.0'

ui_page 'html/index.html'

shared_scripts {
    'shared/config.lua',
    'shared/utils.lua',
    'shared/components.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

files {
    'html/index.html',
    'html/style.css',
    'html/app.js',
    'data/stock.json',
    'data/vehicles.json'
}
