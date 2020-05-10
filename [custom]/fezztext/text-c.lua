-- By Fezz 
-- Some Code concepts taken from https://forum.cfx.re/t/release-simple-watermark/7140/35


-- Sets where, the color and size of the text
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)

		rgb = RGBRainbow(1)
		SetTextColour(rgb.r, rgb.g, rgb.b, 255)

        -- The Text 
        SetTextFont(0) -- 0 -> 5
        SetTextScale(0.3, 0.3)
        SetTextEntry("STRING")
        AddTextComponentString("Best Of British")
        DrawText(0.005, 0.010)
    end
end)

-- Function for Getting Rainbow Color
function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end

