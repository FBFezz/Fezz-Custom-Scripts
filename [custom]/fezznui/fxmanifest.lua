-- Resource Metadata
fx_version 'bodacious'
games { 'gta5' }

author 'Fezz'
description 'nui_example'
version '1.0.0'

-- What to run
client_scripts {
    'main.lua'--,
 --   'client_two.lua'
}
--server_script 'server.lua'

-- Extra data can be used as well
--my_data 'one' { two = 42 }
--my_data 'three' { four = 69 }

-- due to Lua syntax, the following works too:
--my_data('nine')({ninety = "nein"})

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/reset.css',
    'html/listener.js'
}