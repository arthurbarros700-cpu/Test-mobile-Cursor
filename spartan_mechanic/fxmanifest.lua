fx_version 'cerulean'
game 'gta5'

name 'spartan_mechanic'
author 'Spartan Roleplay'
description 'Painel NUI profissional — oficina FSM, estoque, diagnóstico e auditoria'
version '1.0.0'

lua54 'yes'

shared_scripts {
    'shared/config.lua',
}

client_scripts {
    'client/main.lua',
}

server_scripts {
    'server/workshop.lua',
    'server/features.lua',
    'server/feat_extended.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/css/app.css',
    'html/js/app.js',
}
