fx_version "cerulean"
game "gta5"
lua54 "yes"

name "ultra_mechanic"
author "Cursor Cloud Agent"
description "Sistema de mecanica ultra realista com painel, estoque e danos avancados."
version "1.0.0"

shared_scripts {
    "config.lua",
    "locales/*.lua"
}

client_scripts {
    "client/main.lua"
}

server_scripts {
    "server/main.lua"
}

ui_page "web/index.html"

files {
    "web/index.html",
    "web/style.css",
    "web/app.js"
}
