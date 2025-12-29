RegisterCommand('playerList', function()
    SendNUIMessage({
        action = "open",
        players = {
            { name = "Erik", joinedAgo = 5400, playTime = 9000 },
            { name = "Robba", joinedAgo = 1800, playTime = 9000 },
            { name = "Knul", joinedAgo = 7200, playTime = 9000 }
        }
    })
    SetNuiFocus(true, true)
end)