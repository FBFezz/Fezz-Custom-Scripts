RegisterCommand("clearweapons", function() -- Makes the command "clearweapons"
    RemoveAllPedWeapons(GetPlayerPed(-1), true) -- Removes all players weapons
    notify("~r~Cleared All weapons") -- Sends notification that weapons have been cleared
end)

local cars = {"adder", "comet", "cheetah", "faggio"}
RegisterCommand("car", function()

    local car = (cars[math.random(#cars)])
    spawnCar(car)
    notify("~p~Spawned car: ~h~~g~" .. car)
end)

RegisterCommand("pleasedie", function()
    SetEntityHealth(PlayerPedId(), 0)
    notify("~r~You Died.")
end)

Citizen.CreateThread(function()

    local h_key = 74 -- "H" key
    while true do 
        Citizen.Wait(1)
        if IsControlJustReleased(1, h_key) then -- If "H" is just released then
            print("The key ".. h_key .. " was pressed") -- Print "H" was pressed
            giveWeapon("weapon_pistol") -- Gives Pistol
            giveWeapon("weapon_pumpshotgun")
                weaponComponent("weapon_pumpshotgun", "COMPONENT_AT_AR_FLSH")
                weaponComponent("weapon_pumpshotgun", "COMPONENT_AT_SR_SUPP")
            giveWeapon("weapon_knife") -- Gives Knife
            alert("~b~Given Weapons with ~INPUT_VEH_HEADLIGHT~") -- Notification that h gave weapons
        end
    end

end)