local ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent("nc-headbag:getClosestPlayer", function(closestPlayer)
    getPlayer = closestPlayer;
    local name = GetPlayerName(getPlayer);
    TriggerClientEvent("StartThread", getPlayer);
end)

RegisterNetEvent("nc-headbag:getClosestPlayer2", function()
    TriggerClientEvent("RemoveHeadBag", getPlayer);
end)

ESX.RegisterUsableItem("head_bag", function(source, item)
    local xPlayer = ESX.GetPlayerFromId(source);
    if xPlayer.getInventoryItem("head_bag") ~= nil then
        TriggerClientEvent("CheckThread", source);
    end
end)
