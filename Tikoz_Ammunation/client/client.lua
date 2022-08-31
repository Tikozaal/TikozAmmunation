ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local Tikozaal = {}
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

function factureammu()
    local amount = Keyboardput("Entré le montant", "", 15)
    
    if not amount then
      ESX.ShowNotification('~r~Montant invalide')
    else
  
      local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
  
        if closestPlayer == -1 or closestDistance > 3.0 then
          ESX.ShowNotification('Pas de joueurs à ~b~proximité')
        else
          local playerPed = PlayerPedId()
  
            Citizen.CreateThread(function()
           
              ClearPedTasks(playerPed)
              TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_ammu', "~b~Ammunation", amount)
              ESX.ShowNotification("Vous avez bien envoyer la ~b~facture")
            end)
        end
    end
end

menuammu = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Ammunation"},
    Data = { currentMenu = "Menu :"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result)

            if btn.name == "Annonce" then
                OpenMenu('Annonce')
            elseif btn.name == "Facture" then
                factureammu()
            end

            if btn.name == "~b~Ammunation ~s~Ouvert" then
                TriggerServerEvent('Tikoz:AmmunationOuvert')
            elseif btn.name == "~b~Ammunation ~s~Fermé" then
                TriggerServerEvent('Tikoz:AmmunationFermer')
            elseif btn.name == "~b~Ammunation ~s~Personnaliser" then
                local msgpersoAmmunation = Keyboardput("Quel est votre message ? ", "", 150)
                TriggerServerEvent('Tikoz:AmmunationPersonnaliser', msgpersoAmmunation)
            end

            if ESX.PlayerData.job.grade_name == "boss" and ESX.PlayerData.job.name == "ammu" then 
                if btn.name == "Gestion d'entreprise" then
                    menuammu.Menu["Gestion"].b = {}
                    table.insert(menuammu.Menu["Gestion"].b, { name = "Recruter", ask = "", askX = true})   
                    table.insert(menuammu.Menu["Gestion"].b, { name = "Promouvoir", ask = "", askX = true})
                    table.insert(menuammu.Menu["Gestion"].b, { name = "Destituer" , ask = "", askX = true})
                    table.insert(menuammu.Menu["Gestion"].b, { name = "Virer", ask = "", askX = true})
                    OpenMenu('Gestion')
                end
            end
            if btn.name == "Recruter" then 
                if ESX.PlayerData.job.grade_name == 'boss'  then
                    Tikozaal.closestPlayer, Tikozaal.closestDistance = ESX.Game.GetClosestPlayer()
                    if Tikozaal.closestPlayer == -1 or Tikozaal.closestDistance > 3.0 then
                        ESX.ShowNotification('Aucun joueur à ~b~proximité')
                    else
                        TriggerServerEvent('Tikoz:AmmunationRecruter', GetPlayerServerId(Tikozaal.closestPlayer), ESX.PlayerData.job.name, 0)
                    end
                else
                    ESX.ShowNotification('Vous n\'avez pas les ~r~droits~w~')
                end
            elseif btn.name == "Promouvoir" then
                if ESX.PlayerData.job.grade_name == 'boss' then
                    Tikozaal.closestPlayer, Tikozaal.closestDistance = ESX.Game.GetClosestPlayer()
                    if Tikozaal.closestPlayer == -1 or Tikozaal.closestDistance > 3.0 then
                        ESX.ShowNotification('Aucun joueur à ~b~proximité')
                    else
                        TriggerServerEvent('Tikoz:PromotionAmmunation', GetPlayerServerId(Tikozaal.closestPlayer))
                    end
                else
                    ESX.ShowNotification('Vous n\'avez pas les ~r~droits~w~')
                end
            elseif btn.name == "Virer" then 
                if ESX.PlayerData.job.grade_name == 'boss' then
                    Tikozaal.closestPlayer, Tikozaal.closestDistance = ESX.Game.GetClosestPlayer()
                    if Tikozaal.closestPlayer == -1 or Tikozaal.closestDistance > 3.0 then
                        ESX.ShowNotification('Aucun joueur à ~b~proximité')
                    else
                        TriggerServerEvent('Tikoz:AmmunationVirer', GetPlayerServerId(Tikozaal.closestPlayer))
                    end
                else
                    ESX.ShowNotification('Vous n\'avez pas les ~r~droits~w~')
                end
            elseif btn.name == "Destituer" then 
                if ESX.PlayerData.job.grade_name == 'boss' then
                    Tikozaal.closestPlayer, Tikozaal.closestDistance = ESX.Game.GetClosestPlayer()
                    if Tikozaal.closestPlayer == -1 or Tikozaal.closestDistance > 3.0 then
                        ESX.ShowNotification('Aucun joueur à ~b~proximité')
                    else
                        TriggerServerEvent('Tikoz:AmmunationRetrograder', GetPlayerServerId(Tikozaal.closestPlayer))
                    end
                else
                    ESX.ShowNotification('Vous n\'avez pas les ~r~droits~w~')
                end
            end

            if btn.name == "Permis de port d'arme" then
                OpenMenu("Permis d'arme")
            elseif btn.name == "Donner le PPA" then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                    if closestPlayer ~= -1 and closestDistance <= 3.0 then
                        TriggerServerEvent('Tikoz:AddPPA', "weapon")
                        ESX.ShowNotification('Le joueur a bien reçu sont ppa')
                else
                    ESX.ShowNotification('Aucun joueurs à proximité')
                end 
            elseif btn.name == "Retirer le PPA" then
                local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                    if closestPlayer ~= -1 and closestDistance <= 3.0 then
                        TriggerServerEvent('Tikoz:SuppPPa', "weapon")
                        ESX.ShowNotification('Le joueur a bien reçu sont ppa')
                else
                    ESX.ShowNotification('Aucun joueurs à proximité')
                end 
            end



        end,
},
    Menu = {
        ["Menu :"] = {
            b = {
                {name = "Annonce", ask = ">", askX = true},
                {name = "Facture", ask = ">", askX = true},
                {name = "Gestion d'entreprise", ask = ">", askX = true},

            }
        },
        ["Annonce"] = {
            b = {
                {name = "~b~Ammunation ~s~Ouvert", ask = ">", askX = true},
                {name = "~b~Ammunation ~s~Fermé", ask = ">", askX = true},
                {name = "~b~Ammunation ~s~Personnaliser", ask = ">", askX = true},
            }
        },
        ["Gestion"] = {
            b = {
            }
        },
        ["Permis d'arme"] = {
            b = {
                {name = "Donner le PPA", ask = "", askX = true},
                {name = "Retirer le PPA", ask = "", askX = true},
            }
        },
    }
}

RegisterCommand(Config.Commande, function()

    if ESX.PlayerData.job.name == "ammu" then
        CreateMenu(menuammu)
    else 
        ESX.ShowNotification("Cette commande est ~b~~h~réservé~s~ aux ~b~~h~armurier")
    end

end, false)

Citizen.CreateThread(function()

    if Config.PPA == true then
        table.insert(menuammu.Menu["Menu :"].b, { name = "Permis de port d'arme", ask = ">", askX = true})
    end

    if Config.Blip.UseBlip == true then
        local blip = AddBlipForCoord(Config.Blip.Pos)
        SetBlipSprite (blip, Config.Blip.Id)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, Config.Blip.Taille)
        SetBlipColour (blip, Config.Blip.Couleur)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.Blip.Nom)
        EndTextCommandSetBlipName(blip)
    else 
    end
end)