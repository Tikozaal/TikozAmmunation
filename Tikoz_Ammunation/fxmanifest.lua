fx_version('cerulean')
games({ 'gta5' })

server_scripts({
    "server.lua",
    '@mysql-async/lib/MySQL.lua'

});

client_scripts({
    "dependencies/pmenu.lua",
    "config.lua",
    "client/client.lua",
    "client/coffre.lua",
    "client/boss.lua",
    "client/garage.lua",
    "client/menu.lua"
});