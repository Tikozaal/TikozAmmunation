ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('esx_society:registerSociety', 'ammunation', 'ammunation', 'society_ammu', 'society_ammu', 'society_ammu', {type = 'public'})

ESX.RegisterServerCallback('Tikoz:getSocietyMoney', function(source, cb, societyName)
	if societyName ~= nil then
	  local society = "society_ammu"
	  TriggerEvent('esx_addonaccount:getSharedAccount', society, function(account)
		cb(account.money)
	  end)
	else
	  cb(0)
	end
end)

RegisterServerEvent("Tikoz:AmmuAchatPistolet")
AddEventHandler("Tikoz:AmmuAchatPistolet", function(prix, label, name)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ammu' , function (account)
		if account.money >= prix then
			xPlayer.addWeapon(label, 1)
			account.removeMoney(prix)
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Ammunation', "~b~Achat d'arme", "Vous avez acheté un ~b~"..name.."~s~ pour ~g~"..prix.."$", 'CHAR_BANK_FLEECA', 9)
		else
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez pas ~r~assez d'argent~w~ dans ~b~l'entreprise", 'CHAR_BANK_FLEECA', 9)
		end
	end)
end)

RegisterServerEvent("Tikoz:AmmuAchatMitraillette")
AddEventHandler("Tikoz:AmmuAchatMitraillette", function(prix, label, name)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ammu' , function (account)
		if account.money >= prix then
			xPlayer.addWeapon(label, 1)
			account.removeMoney(prix)
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Ammunation', "~b~Achat d'arme", "Vous avez acheté un ~b~"..name.."~s~ pour ~g~"..prix.."$", 'CHAR_BANK_FLEECA', 9)
		else
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez pas ~r~assez d'argent~w~ dans ~b~l'entreprise", 'CHAR_BANK_FLEECA', 9)
		end
	end)
end)

RegisterServerEvent("Tikoz:AmmuAchatPompe")
AddEventHandler("Tikoz:AmmuAchatPompe", function(prix, label, name)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ammu' , function (account)
		if account.money >= prix then
			xPlayer.addWeapon(label, 1)
			account.removeMoney(prix)
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Ammunation', "~b~Achat d'arme", "Vous avez acheté un ~b~"..name.."~s~ pour ~g~"..prix.."$", 'CHAR_BANK_FLEECA', 9)
		else
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez pas ~r~assez d'argent~w~ dans ~b~l'entreprise", 'CHAR_BANK_FLEECA', 9)
		end
	end)
end)

RegisterServerEvent("Tikoz:AmmuAchatAssault")
AddEventHandler("Tikoz:AmmuAchatAssault", function(prix, label, name)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ammu' , function (account)
		if account.money >= prix then
			xPlayer.addWeapon(label, 1)
			account.removeMoney(prix)
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Ammunation', "~b~Achat d'arme", "Vous avez acheté un ~b~"..name.."~s~ pour ~g~"..prix.."$", 'CHAR_BANK_FLEECA', 9)
		else
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez pas ~r~assez d'argent~w~ dans ~b~l'entreprise", 'CHAR_BANK_FLEECA', 9)
		end
	end)
end)

RegisterServerEvent("Tikoz:AmmuAchatMitrailleur")
AddEventHandler("Tikoz:AmmuAchatMitrailleur", function(prix, label, name)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ammu' , function (account)
		if account.money >= prix then
			xPlayer.addWeapon(label, 1)
			account.removeMoney(prix)
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Ammunation', "~b~Achat d'arme", "Vous avez acheté un ~b~"..name.."~s~ pour ~g~"..prix.."$", 'CHAR_BANK_FLEECA', 9)
		else
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez pas ~r~assez d'argent~w~ dans ~b~l'entreprise", 'CHAR_BANK_FLEECA', 9)
		end
	end)
end)

RegisterServerEvent("Tikoz:AmmuAchatSniper")
AddEventHandler("Tikoz:AmmuAchatSniper", function(prix, label, name)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ammu' , function (account)
		if account.money >= prix then
			xPlayer.addWeapon(label, 1)
			account.removeMoney(prix)
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Ammunation', "~b~Achat d'arme", "Vous avez acheté un ~b~"..name.."~s~ pour ~g~"..prix.."$", 'CHAR_BANK_FLEECA', 9)
		else
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez pas ~r~assez d'argent~w~ dans ~b~l'entreprise", 'CHAR_BANK_FLEECA', 9)
		end
	end)
end)

RegisterServerEvent("Tikoz:AmmuAchatLanceur")
AddEventHandler("Tikoz:AmmuAchatLanceur", function(prix, label, name)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ammu' , function (account)
		if account.money >= prix then
			xPlayer.addWeapon(label, 1)
			account.removeMoney(prix)
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Ammunation', "~b~Achat d'arme", "Vous avez acheté un ~b~"..name.."~s~ pour ~g~"..prix.."$", 'CHAR_BANK_FLEECA', 9)
		else
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez pas ~r~assez d'argent~w~ dans ~b~l'entreprise", 'CHAR_BANK_FLEECA', 9)
		end
	end)
end)

RegisterServerEvent("Tikoz:AmmuAchatGrenade")
AddEventHandler("Tikoz:AmmuAchatGrenade", function(prix, label, name)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ammu' , function (account)
		if account.money >= prix then
			xPlayer.addWeapon(label, 1)
			account.removeMoney(prix)
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Ammunation', "~b~Achat d'arme", "Vous avez acheté un ~b~"..name.."~s~ pour ~g~"..prix.."$", 'CHAR_BANK_FLEECA', 9)
		else
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez pas ~r~assez d'argent~w~ dans ~b~l'entreprise", 'CHAR_BANK_FLEECA', 9)
		end
	end)
end)

RegisterServerEvent("Tikoz:AmmuAchatArmeBlanche")
AddEventHandler("Tikoz:AmmuAchatArmeBlanche", function(prix, label, name)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ammu' , function (account)
		if account.money >= prix then
			xPlayer.addWeapon(label, 1)
			account.removeMoney(prix)
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Ammunation', "~b~Achat d'arme", "Vous avez acheté un ~b~"..name.."~s~ pour ~g~"..prix.."$", 'CHAR_BANK_FLEECA', 9)
		else
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez pas ~r~assez d'argent~w~ dans ~b~l'entreprise", 'CHAR_BANK_FLEECA', 9)
		end
	end)
end)

RegisterServerEvent("Tikoz:AmmuAchatAccessoire")
AddEventHandler("Tikoz:AmmuAchatAccessoire", function(prix, label, name)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ammu' , function (account)
		if account.money >= prix then
			xPlayer.addInventoryItem(label, 1)
			account.removeMoney(prix)
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Ammunation', "~b~Achat d'arme", "Vous avez acheté un ~b~"..name.."~s~ pour ~g~"..prix.."$", 'CHAR_BANK_FLEECA', 9)
		else
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez pas ~r~assez d'argent~w~ dans ~b~l'entreprise", 'CHAR_BANK_FLEECA', 9)
		end
	end)
end)

RegisterServerEvent("Tikoz:AmmuHistoriqueAchat")
AddEventHandler("Tikoz:AmmuHistoriqueAchat", function(prix, label, name)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local date = os.date('~b~%d/%m/%Y %H:%M')

			MySQL.Async.execute('INSERT INTO tikoz_ammuhistoriqueachat (id, date, name, prix) VALUES (@id, @date, @name, @prix)', {
				["@id"] = id,
				['@name'] = name,
                ['@date'] = date,
				['@prix'] = prix
			}, function()
			end)
end)

RegisterServerEvent("Tikoz:AmmuHistoriqueSupp")
AddEventHandler("Tikoz:AmmuHistoriqueSupp", function(id, itemName)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

		MySQL.Async.fetchAll("DELETE FROM tikoz_ammuhistoriqueachat WHERE id = "..id, {
			["@id"] = id
		}, function()
		end)
	
end)

ESX.RegisterServerCallback('Tikoz:AmmuHistorique', function(source, cb)

    local xPlayer = ESX.GetPlayerFromId(source)
    local ammuhistorique = {}


    MySQL.Async.fetchAll('SELECT * FROM tikoz_ammuhistoriqueachat', {

    }, function(result)

        for i=1, #result, 1 do

            table.insert(ammuhistorique, {
				id = result[i].id,
                name = result[i].name,
                prix = result[i].prix,
                date = result[i].date,
            })

        end

        cb(ammuhistorique)
    
    end)

end)



---------------------------------------------------------


ESX.RegisterServerCallback('Tikoz:AmmuSalaire', function(source, cb)

    local xPlayer = ESX.GetPlayerFromId(source)
    local salaireammu = {}

    MySQL.Async.fetchAll('SELECT * FROM job_grades', {

    }, function(result)

        for i=1, #result, 1 do

            table.insert(salaireammu, {
				id = result[i].id,
                job_name = result[i].job_name,
                label = result[i].label,
                salary = result[i].salary,
            })
        end
        cb(salaireammu)
    end)
end)

RegisterServerEvent("Tikoz:AmmuNouveauSalaire")
AddEventHandler("Tikoz:AmmuNouveauSalaire", function(id, label, amount)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    MySQL.Async.fetchAll("UPDATE job_grades SET salary = "..amount.." WHERE id = "..id,
	{
		['@id'] = id,
		['@salary'] = amount
	}, function (rowsChanged)
	end)
end)


ESX.RegisterServerCallback('Tikoz:getSocietyMoney', function(source, cb, societyName)
	if societyName ~= nil then
	  local society = "society_ammu"
	  TriggerEvent('esx_addonaccount:getSharedAccount', society, function(account)
		cb(account.money)
	  end)
	else
	  cb(0)
	end
end)

ESX.RegisterServerCallback('Tikoz:AmmunationArgentEntreprise', function(source, cb)

    local xPlayer = ESX.GetPlayerFromId(source)
    local compteentreprise = {}


    MySQL.Async.fetchAll('SELECT * FROM addon_account_data WHERE account_name = "society_ammu"', {

    }, function(result)

        for i=1, #result, 1 do
            table.insert(compteentreprise, {
                account_name = result[i].account_name,
                money = result[i].money,
            })
        end
        cb(compteentreprise)
    end)
end)

RegisterServerEvent("Tikoz:Ammunationdepotentreprise")
AddEventHandler("Tikoz:Ammunationdepotentreprise", function(money)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local total = money
    local xMoney = xPlayer.getAccount("bank").money
    
    TriggerEvent('esx_addonaccount:getSharedAccount', "society_ammu", function (account)
        if xMoney >= total then
            account.addMoney(total)
            xPlayer.removeAccountMoney('bank', total)
            TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez déposé ~g~"..total.." $~s~ dans votre ~b~entreprise", 'CHAR_BANK_FLEECA', 9)
        else
            TriggerClientEvent('esx:showNotification', source, "<C>~r~Vous n'avez pas assez d'argent !")
        end
    end)   
end)

RegisterServerEvent("Tikoz:AmmunationRetraitEntreprise")
AddEventHandler("Tikoz:AmmunationRetraitEntreprise", function(money)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local total = money
	local xMoney = xPlayer.getAccount("bank").money
	
	TriggerEvent('esx_addonaccount:getSharedAccount', "society_ammu", function (account)
		if account.money >= total then
			account.removeMoney(total)
			xPlayer.addAccountMoney('bank', total)
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez retiré ~g~"..total.." $~s~ de votre ~b~entreprise", 'CHAR_BANK_FLEECA', 9)
		else
			TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Société', "~b~Ammunation", "Vous avez pas assez d'argent dans votre ~b~entreprise", 'CHAR_BANK_FLEECA', 9)
		end
	end)
end) 

------------------------ ANNONCE ---------------------

RegisterServerEvent('Tikoz:AmmunationOuvert')
AddEventHandler('Tikoz:AmmunationOuvert', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], "Ammunation", '~b~Annonce', 'Nous sommes ~g~ouvert~s~ !', 'CHAR_AMMUNATION', 8)
	end
end)

RegisterServerEvent('Tikoz:AmmunationFermer')
AddEventHandler('Tikoz:AmmunationFermer', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], "Ammunation", '~b~Annonce', 'Nous sommes ~r~fermé~s~ !', 'CHAR_AMMUNATION', 8)
	end
end)

RegisterServerEvent('Tikoz:AmmunationPersonnaliser')
AddEventHandler('Tikoz:AmmunationPersonnaliser', function(msgpersoAmmunation)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], "Ammunation", '~b~Annonce', msgpersoAmmunation, 'CHAR_AMMUNATION', 8)
	end
end)

------------------- COFFRE -------------------------------

ESX.RegisterServerCallback('Tikoz:InventaireAmmunation', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory

	cb({items = items})
end)

RegisterServerEvent("Tikoz:CoffreDeposeAmmunation")
AddEventHandler("Tikoz:CoffreDeposeAmmunation", function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_ammu', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			TriggerClientEvent('esx:showNotification', _source, "Vous avez déposé ~y~x"..count.." ~b~"..inventoryItem.label)
		else
			TriggerClientEvent('esx:showNotification', _source, "quantité invalide")
		end
	end)
end)

ESX.RegisterServerCallback('Tikoz:CoffreSocietyAmmunation', function(source, cb)
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_ammu', function(inventory)
		cb(inventory.items)
	end)
end)

RegisterNetEvent('Tikoz:RetireCoffreAmmunation')
AddEventHandler('Tikoz:RetireCoffreAmmunation', function(itemName, count, itemLabel)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_ammu', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		if count > 0 and inventoryItem.count >= count then
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				TriggerClientEvent('esx:showNotification', _source, "Vous avez retiré ~y~x"..count.." ~b~"..itemLabel)
		else
			TriggerClientEvent('esx:showNotification', _source, "Quantité invalide")
		end
	end)
end)

--------------------------- Action Patron ------------------

RegisterServerEvent('Tikoz:AmmunationRecruter')
AddEventHandler('Tikoz:AmmunationRecruter', function(target, job, grade)
	local _source = source
	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)
	targetXPlayer.setJob(job, grade)
	TriggerClientEvent('esx:showNotification', _source, "Vous avez ~g~recruté " .. targetXPlayer.name .. "~w~.")
	TriggerClientEvent('esx:showNotification', target, "Vous avez été ~g~embauché par " .. sourceXPlayer.name .. "~w~.")
end)

RegisterServerEvent('Tikoz:PromotionAmmunation')
AddEventHandler('Tikoz:PromotionAmmunation', function(target)
	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)

	if (targetXPlayer.job.grade == 3) then
		TriggerClientEvent('esx:showNotification', _source, "Vous ne pouvez pas plus ~b~promouvoir~w~ d'avantage.")
	else
		if (sourceXPlayer.job.name == targetXPlayer.job.name) then
			local grade = tonumber(targetXPlayer.job.grade) + 1
			local job = targetXPlayer.job.name

			targetXPlayer.setJob(job, grade)

			TriggerClientEvent('esx:showNotification', _source, "Vous avez ~b~promu " .. targetXPlayer.name .. "~w~.")
			TriggerClientEvent('esx:showNotification', target, "Vous avez été ~b~promu~s~ par " .. sourceXPlayer.name .. "~w~.")
		end
	end
end)


RegisterServerEvent('Tikoz:AmmunationRetrograder')
AddEventHandler('Tikoz:AmmunationRetrograder', function(target)
	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)

	if (targetXPlayer.job.grade == 0) then
		TriggerClientEvent('esx:showNotification', _source, "Vous ne pouvez pas plus ~r~rétrograder~w~ d'avantage.")
	else
		if (sourceXPlayer.job.name == targetXPlayer.job.name) then
			local grade = tonumber(targetXPlayer.job.grade) - 1
			local job = targetXPlayer.job.name

			targetXPlayer.setJob(job, grade)

			TriggerClientEvent('esx:showNotification', _source, "Vous avez ~r~rétrogradé " .. targetXPlayer.name .. "~w~.")
			TriggerClientEvent('esx:showNotification', target, "Vous avez été ~r~rétrogradé par " .. sourceXPlayer.name .. "~w~.")
		else
			TriggerClientEvent('esx:showNotification', _source, "Vous n'avez pas ~r~l'autorisation~w~.")
		end
	end
end)

RegisterServerEvent('Tikoz:AmmunationVirer')
AddEventHandler('Tikoz:AmmunationVirer', function(target)
	local _source = source
	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)
	local job = "unemployed"
	local grade = "0"
	if (sourceXPlayer.job.name == targetXPlayer.job.name) then
		targetXPlayer.setJob(job, grade)
		TriggerClientEvent('esx:showNotification', _source, "Vous avez ~r~viré " .. targetXPlayer.name .. "~w~.")
		TriggerClientEvent('esx:showNotification', target, "Vous avez été ~g~viré par " .. sourceXPlayer.name .. "~w~.")
	else
		TriggerClientEvent('esx:showNotification', _source, "Vous n'avez pas ~r~l'autorisation~w~.")
	end
end)

--------------------------- PPA ----------------------------

RegisterServerEvent('Tikoz:AddPPA')
AddEventHandler('Tikoz:AddPPA', function(permis)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xTarget = ESX.GetPlayerFromId(target)

    MySQL.Async.execute('INSERT INTO user_licenses (type, owner) VALUES (@type, @owner)', {
        ['@type'] = permis,
        ['@owner'] = xTarget.identifier
    })
end)

RegisterServerEvent('Tikoz:SuppPPa')
AddEventHandler('Tikoz:SuppPPa', function(permis)
	local xPlayer = ESX.GetPlayerFromId(source)
  	local xTarget = ESX.GetPlayerFromId(target)

    MySQL.Async.execute('DELETE INTO user_licenses (type, owner) VALUES (@type, @owner)', {
        ['@type'] = permis,
        ['@owner'] = xTarget.identifier
    })
end)
