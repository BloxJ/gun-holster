-- This script modifies the player's model when a weapon is equipped to make it appear as if the gun is out of the holster.

-- Event handler for when a player equips a weapon
AddEventHandler('playerSpawned', function()
    SetPedComponentVariation(GetPlayerPed(-1), 9, 0, 0, 0) -- Modifies the player's model to remove the gun from the holster
end)

-- Event handler for when a player holsters a weapon
AddEventHandler('playerWeaponSwitch', function()
    SetPedComponentVariation(GetPlayerPed(-1), 9, 1, 0, 0) -- Modifies the player's model to show the gun back in the holster
end)
