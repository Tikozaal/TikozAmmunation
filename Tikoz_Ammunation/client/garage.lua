ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local PlayerData = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)  
	PlayerData.job = job  
	Citizen.Wait(5000) 
end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
    end
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RegisterNetEvent('esx:setJob2')
AddEventHandler('esx:setJob2', function(job2)
    ESX.PlayerData.job2 = job2
end)


function Keyboardput(TextEntry, ExampleText, MaxStringLength) 
    AddTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockinput = true
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Citizen.Wait(0)
    end
    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Citizen.Wait(500)
        blockinput = false
        return result
    else
        Citizen.Wait(500)
        blockinput = false
        return nil
    end
end

menugarage = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Garage"},
    Data = { currentMenu = "Quelle véhicule voulez-vous ?"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result)

            for i=1, #listevehicule, 1 do
                if btn.name == "~b~"..listevehicule[i].name then
                    
                    local ped = PlayerPedId()
                    local pi = listevehicule[i].label
                    local po = GetHashKey(pi)
                    RequestModel(po)
                    while not HasModelLoaded(po) do Citizen.Wait(0) end
                    local pipo = CreateVehicle(po, Config.Pos.SpawnVehicule, true, false)
                    TaskWarpPedIntoVehicle(ped, pipo, -1)
                    SetVehRadioStation(pipo, "OFF")
                    ESX.ShowNotification("Vous avez sorti : ~b~"..listevehicule[i].name)
                    CloseMenu()
                    
                    Citizen.CreateThread(function()
                    
                    while true do 

                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local menu2 = Config.Pos.DeleteVeh
                        local dist2 = #(pos - menu2)

                        if dist2 <= 5 and ESX.PlayerData.job.name == "ammu" then

                            ESX.ShowHelpNotification("Appuie sur ~INPUT_CONTEXT~ pour rangé le ~b~véhicule")
                            DrawMarker(6, menu2, nil, nil, nil, -90, nil, nil, 0.7, 0.7, 0.7, 0, 251, 255, 200, false, true, 2, false, false, false, false)

                            if IsControlJustPressed(1, 51) then
                                DeleteVehicle(pipo)
                                ESX.ShowNotification("Vous avez rangé : ~b~"..listevehicule[i].name)
                                return
                            end

                        else
                            Citizen.Wait(1000)
                        end
                        Citizen.Wait(0)
                    end

                end)

                end
            end

        end,
},
    Menu = {
        ["Quelle véhicule voulez-vous ?"] = {
            b = {                
            }
        },
    }
}

Citizen.CreateThread(function()

    for i=1, #listevehicule, 1 do 
        table.insert(menugarage.Menu["Quelle véhicule voulez-vous ?"].b, {name = "~b~"..listevehicule[i].name, ask = "", askX = true})
    end

    while true do 

        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local menu = Config.Pos.Garage
        local dist = #(pos - menu)

        if dist <= 2 and ESX.PlayerData.job.name == "ammu" then

            ESX.ShowHelpNotification('Appuie sur ~INPUT_CONTEXT~ pour ouvrir le ~b~garage')
            DrawMarker(6, menu, nil, nil, nil, -90, nil, nil, 0.7, 0.7, 0.7, 0, 251, 255, 200, false, true, 2, false, false, false, false)

            if IsControlJustPressed(1, 51) then
                CreateMenu(menugarage)
            end

        else 
            Citizen.Wait(1000)
        end
        Citizen.Wait(0)
    end
end)
