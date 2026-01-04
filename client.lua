RegisterNetEvent('showTestList', function(data)
    SendNUIMessage({
        action = "open",
        players = data.players
    })
    SetNuiFocus(true, true)
end)