local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-toolbox:client:open', function()
    QBCore.Functions.Progressbar("open_toolbox", "Opening Toolbox", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("qb-toolbox:server:opentoolbox")
    end, function()
        TriggerServerEvent("qb-toolbox:server:failtoolbox")
        QBCore.Functions.Notify("Failed!", "error")
    end)
end)
