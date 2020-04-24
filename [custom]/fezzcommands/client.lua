-- Custom Code by Fezz ;)

RegisterCommand(discord, function() -- Creates the command "Info" 
    msg("Servers Discord: Discord.gg/b4Z5nQM") -- Send  the message "Servers Discord: Discord.gg/b4Z5nQM"
end, false)

    function msg(text) -- Calls function msg
        TriggerEvent("chatmessage", "[Server]", {255, 0, 0}, text) -- Sends the message in chat with it looking like the server said it and with the chat being red
    end -- Ends the function