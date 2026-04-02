fx_version 'cerulean'
game 'gta5'

name        'adv_mecanica'
description 'Sistema Avançado de Mecânica Veicular – Ultra Realista'
author      'ADV Scripts'
version     '1.0.0'

lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
    'locales/pt-BR.lua',
}

client_scripts {
    'client/main.lua',
    'client/damage.lua',
    'client/animations.lua',
    'client/minigame.lua',
    'client/ui.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/database.lua',
    'server/stock.lua',
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/css/style.css',
    'ui/js/app.js',
    'ui/js/particles.js',
    'ui/img/*.png',
}

dependencies {
    'ox_lib',
    'oxmysql',
    'ox_inventory',
    'qbx_core',
}
