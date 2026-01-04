RegisterCommand('playerList', function(source)
    local time = os.time()

    local players = {
        { name = "Erik",  joinTimestamp = time - 7200, playTime = 9000 },
        { name = "Robba", joinTimestamp = time - 1800, playTime = 9000 },
        { name = "Knul",  joinTimestamp = time - 5000, playTime = 9000 }
    }

    TriggerClientEvent('showTestList', source, {
            players = players
        })
end)