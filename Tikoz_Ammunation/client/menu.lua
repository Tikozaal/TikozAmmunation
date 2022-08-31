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

menushop = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Ammunation"},
    Data = { currentMenu = "Menu :"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result)

            if btn.name == "Liste des categories" then
                menushop.Menu["Categorie"].b = {}
                if Config.CategoryShop.Armeblanche == true then
                    table.insert(menushop.Menu["Categorie"].b, {name = "Arme blanche", ask = ">", askX = true})
                else 
                end
                if Config.CategoryShop.Pistolet == true then
                    table.insert(menushop.Menu["Categorie"].b, {name = "Arme de poing", ask = ">", askX = true})
                else 
                end
                if Config.CategoryShop.Mitraillette == true then
                    table.insert(menushop.Menu["Categorie"].b, {name = "Mitraillette", ask = ">", askX = true})
                else 
                end
                if Config.CategoryShop.FusilaPompe == true then
                    table.insert(menushop.Menu["Categorie"].b, {name = "Fusil à pompe", ask = ">", askX = true})
                else 
                end
                if Config.CategoryShop.FusilAssault == true then
                    table.insert(menushop.Menu["Categorie"].b, {name = "Fusil d'assault", ask = ">", askX = true})
                else
                end
                if Config.CategoryShop.FusilMitrailleur == true then
                    table.insert(menushop.Menu["Categorie"].b, {name = "Fusil mitrailleur", ask = ">", askX = true})
                else 
                end
                if Config.CategoryShop.Sniper == true then
                    table.insert(menushop.Menu["Categorie"].b, {name = "Sniper", ask = ">", askX = true})
                else 
                end
                if Config.CategoryShop.Lanceur == true then
                    table.insert(menushop.Menu["Categorie"].b, {name = "Lanceur", ask = ">", askX = true})
                else 
                end
                if Config.CategoryShop.Grenade == true then
                    table.insert(menushop.Menu["Categorie"].b, {name = "Grenade", ask = ">", askX = true})
                else 
                end
                if Config.CategoryShop.Accessoire == true then
                    table.insert(menushop.Menu["Categorie"].b, {name = "Accessoire", ask = ">", askX = true})
                else 
                end
                OpenMenu("Categorie")
            end

            if btn.name == "Arme de poing" then
                menushop.Menu["Arme de poing"].b = {}
                for i=1, #listepistolet, 1 do
                        table.insert(menushop.Menu["Arme de poing"].b, { name = listepistolet[i].name, ask = "~g~"..listepistolet[i].prix.."$", askX = true})
                end
                OpenMenu('Arme de poing')
            end

            if btn.name == "Mitraillette" then
                menushop.Menu["Mitraillette"].b = {}
                for i=1, #listemitraillette, 1 do
                        table.insert(menushop.Menu["Mitraillette"].b, { name = listemitraillette[i].name, ask = "~g~"..listemitraillette[i].prix.."$", askX = true})
                end
                OpenMenu('Mitraillette')
            end
            
            if btn.name == "Fusil à pompe" then
                menushop.Menu["Fusil à pompe"].b = {}
                for i=1, #listepompe, 1 do
                        table.insert(menushop.Menu["Fusil à pompe"].b, { name = listepompe[i].name, ask = "~g~"..listepompe[i].prix.."$", askX = true})
                end
                OpenMenu('Fusil à pompe')
            end

            if btn.name == "Fusil d'assault" then
                menushop.Menu["Fusil d'assault"].b = {}
                for i=1, #listeassault, 1 do
                        table.insert(menushop.Menu["Fusil d'assault"].b, { name = listeassault[i].name, ask = "~g~"..listeassault[i].prix.."$", askX = true})
                end
                OpenMenu("Fusil d'assault")
            end

            if btn.name == "Fusil mitrailleur" then
                menushop.Menu["Fusil mitrailleur"].b = {}
                for i=1, #listefusilmitrailleur, 1 do
                        table.insert(menushop.Menu["Fusil mitrailleur"].b, { name = listefusilmitrailleur[i].name, ask = "~g~"..listefusilmitrailleur[i].prix.."$", askX = true})
                end
                OpenMenu("Fusil mitrailleur")
            end

            if btn.name == "Sniper" then
                menushop.Menu["Sniper"].b = {}
                for i=1, #listesniper, 1 do
                        table.insert(menushop.Menu["Sniper"].b, { name = listesniper[i].name, ask = "~g~"..listesniper[i].prix.."$", askX = true})
                end
                OpenMenu('Sniper')
            end

            if btn.name == "Lanceur" then
                menushop.Menu["Lanceur"].b = {}
                for i=1, #listelanceur, 1 do
                        table.insert(menushop.Menu["Lanceur"].b, { name = listelanceur[i].name, ask = "~g~"..listelanceur[i].prix.."$", askX = true})
                end
                OpenMenu('Lanceur')
            end

            if btn.name == "Grenade" then
                menushop.Menu["Grenade"].b = {}
                for i=1, #listegrenade, 1 do
                        table.insert(menushop.Menu["Grenade"].b, { name = listegrenade[i].name, ask = "~g~"..listegrenade[i].prix.."$", askX = true})
                end
                OpenMenu('Grenade')
            end

            if btn.name == "Arme blanche" then
                menushop.Menu["Arme blanche"].b = {}
                for i=1, #listearmeblanche, 1 do
                        table.insert(menushop.Menu["Arme blanche"].b, { name = listearmeblanche[i].name, ask = "~g~"..listearmeblanche[i].prix.."$", askX = true})
                end
                OpenMenu('Arme blanche')
            end  

            if btn.name == "Accessoire" then
                menushop.Menu["Accessoire"].b = {}
                for i=1, #listeaccessoire, 1 do
                        table.insert(menushop.Menu["Accessoire"].b, { name = listeaccessoire[i].name, ask = "~g~"..listeaccessoire[i].prix.."$", askX = true})
                end
                OpenMenu('Accessoire')
            end

            for i=1, #listepistolet, 1 do
                if btn.name == listepistolet[i].name then
                    prix = listepistolet[i].prix
                    label = listepistolet[i].label
                    name = listepistolet[i].name
                    TriggerServerEvent("Tikoz:AmmuAchatPistolet", prix, label, name)
                    TriggerServerEvent('Tikoz:AmmuHistoriqueAchat', prix, label, name)

                end
            end

            for i=1, #listemitraillette, 1 do
                if btn.name == listemitraillette[i].name then
                    prix = listemitraillette[i].prix
                    label = listemitraillette[i].label
                    name = listemitraillette[i].name
                    TriggerServerEvent("Tikoz:AmmuAchatMitraillette", prix, label, name)
                    TriggerServerEvent('Tikoz:AmmuHistoriqueAchat', prix, label, name)

                end
            end
            
            for i=1, #listepompe, 1 do
                if btn.name == listepompe[i].name then
                    prix = listepompe[i].prix
                    label = listepompe[i].label
                    name = listepompe[i].name
                    TriggerServerEvent("Tikoz:AmmuAchatPompe", prix, label, name)
                    TriggerServerEvent('Tikoz:AmmuHistoriqueAchat', prix, label, name)

                end
            end

            for i=1, #listeassault, 1 do
                if btn.name == listeassault[i].name then
                    prix = listeassault[i].prix
                    label = listeassault[i].label
                    name = listeassault[i].name
                    TriggerServerEvent("Tikoz:AmmuAchatAssault", prix, label, name)
                    TriggerServerEvent('Tikoz:AmmuHistoriqueAchat', prix, label, name)

                end
            end

            for i=1, #listefusilmitrailleur, 1 do
                if btn.name == listefusilmitrailleur[i].name then
                    prix = listefusilmitrailleur[i].prix
                    label = listefusilmitrailleur[i].label
                    name = listefusilmitrailleur[i].name
                    TriggerServerEvent("Tikoz:AmmuAchatMitrailleur", prix, label, name)
                    TriggerServerEvent('Tikoz:AmmuHistoriqueAchat', prix, label, name)

                end
            end

            for i=1, #listesniper, 1 do
                if btn.name == listesniper[i].name then
                    prix = listesniper[i].prix
                    label = listesniper[i].label
                    name = listesniper[i].name
                    TriggerServerEvent("Tikoz:AmmuAchatSniper", prix, label, name)
                    TriggerServerEvent('Tikoz:AmmuHistoriqueAchat', prix, label, name)

                end
            end

            for i=1, #listelanceur, 1 do
                if btn.name == listelanceur[i].name then
                    prix = listelanceur[i].prix
                    label = listelanceur[i].label
                    name = listelanceur[i].name
                    TriggerServerEvent("Tikoz:AmmuAchatLanceur", prix, label, name)
                    TriggerServerEvent('Tikoz:AmmuHistoriqueAchat', prix, label, name)
                end
            end

            for i=1, #listegrenade, 1 do
                if btn.name == listegrenade[i].name then
                    prix = listegrenade[i].prix
                    label = listegrenade[i].label
                    name = listegrenade[i].name
                    TriggerServerEvent("Tikoz:AmmuAchatGrenade", prix, label, name)
                    TriggerServerEvent('Tikoz:AmmuHistoriqueAchat', prix, label, name)
                end
            end

            for i=1, #listearmeblanche, 1 do
                if btn.name == listearmeblanche[i].name then
                    prix = listearmeblanche[i].prix
                    label = listearmeblanche[i].label
                    name = listearmeblanche[i].name
                    TriggerServerEvent("Tikoz:AmmuAchatArmeBlanche", prix, label, name)
                    TriggerServerEvent('Tikoz:AmmuHistoriqueAchat', prix, label, name)
                end
            end
            
            for i=1, #listeaccessoire, 1 do
                if btn.name == listeaccessoire[i].name then
                    prix = listeaccessoire[i].prix
                    label = listeaccessoire[i].label
                    name = listeaccessoire[i].name
                    TriggerServerEvent("Tikoz:AmmuAchatAccessoire", prix, label, name)
                    TriggerServerEvent('Tikoz:AmmuHistoriqueAchat', prix, label, name)
                end
            end

            if btn.name == "~r~Fermé" then
                CloseMenu()
            end

            ESX.TriggerServerCallback("Tikoz:AmmuHistorique", function(ammuhistorique) 
                
                if btn.name == "Historique d'achat" then
                    menushop.Menu["Historique"].b = {}
                    for i=1, #ammuhistorique, 1 do 
                        table.insert(menushop.Menu["Historique"].b, { name = "~s~"..ammuhistorique[i].name, ask = ammuhistorique[i].date.."             ~g~"..ammuhistorique[i].prix.."$", askX = true})
                    end
                    OpenMenu('Historique')
                end

                for i=1, #ammuhistorique, 1 do
                    if btn.name == "~s~"..ammuhistorique[i].name then
                        id = ammuhistorique[i].id
                        itemName = ammuhistorique[i].name
                        TriggerServerEvent('Tikoz:AmmuHistoriqueSupp', id, itemName)
                        ESX.ShowNotification("Vous avez supprimé la ~b~facture")
                        OpenMenu("Menu :")
                    end
                end

            end, args)            

        end,
},
    Menu = {
        ["Menu :"] = {
            b = {
                {name = "Liste des categories", ask = ">", askX = true},
                {name = "Historique d'achat", ask = ">", askX = true},
                {name = "~r~Fermé", ask = "", askX = true},
            }
        },
        ["Historique"] = {
            b = {
            }
        },
        ["Categorie"] = {
            b = {
            }
        },
        ["Arme de poing"] = {
            b = {
            }
        },
        ["Arme blanche"] = {
            b = {
            }
        },
        ["Mitraillette"] = {
            b = {
            }
        },
        ["Fusil à pompe"] = {
            b = {
            }
        },
        ["Fusil d'assault"] = {
            b = {
            }
        },
        ["Fusil mitrailleur"] = {
            b = {
            }
        },
        ["Sniper"] = {
            b = {
            }
        },
        ["Lanceur"] = {
            b = {
            }
        },
        ["Grenade"] = {
            b = {
            }
        },
        ["Accessoire"] = {
            b = {
            }
        },
    }
}

Citizen.CreateThread(function()

    while true do 

        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local menu = Config.Pos.Shop 
        local dist = #(pos - menu)

        if dist <= 2 and ESX.PlayerData.job.name == "ammu" then

            ESX.ShowHelpNotification('Appuie sur ~INPUT_CONTEXT~ pour ouvrir le ~b~menu')
            DrawMarker(6, menu, nil, nil, nil, -90, nil, nil, 0.7, 0.7, 0.7, 0, 251, 255, 200, false, true, 2, false, false, false, false)

            if IsControlJustPressed(1, 51) then
                CreateMenu(menushop)
            end

        else 
            Citizen.Wait(1000)
        end
        Citizen.Wait(0)
    end
end)