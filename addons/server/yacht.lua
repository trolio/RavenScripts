ESX               = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local cooldown = 0
local cooldowntime = 600 * 6000

function Timer()
	cooldown = 1
	Citizen.Wait(cooldowntime)
	cooldown = 0
end

RegisterServerEvent('esx_yacht:robbery')
AddEventHandler('esx_yacht:robbery', function(text)
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()
	local police = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			police = police+1
		end
	end
		if police > yacht.LSPD-1 and cooldown == 0 then
			TriggerClientEvent("esx_yacht:start", source)
			TriggerClientEvent("esx_yacht:true", source)
			TriggerClientEvent("esx_yacht:notification", source, _U('yacht_robbery_started'))
			LSPD()
			Citizen.Wait(1000)
			Timer()
		end

		if cooldown == 1 then
			TriggerClientEvent("esx_yacht:notification", source, _U('yacht_robbed_recent'))
		end

		if police < yacht.LSPD then
			TriggerClientEvent("esx_yacht:notification", source, _U('yacht_police'))
		end
end)

RegisterServerEvent('esx_yacht:reward')
AddEventHandler('esx_yacht:reward', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.addMoney(math.random(yacht.MinReward,yacht.MaxReward))
end)

function LSPD()
	local _source = source
	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do
		xPlayer = ESX.GetPlayerFromId(xPlayers[i])

		if xPlayer.job.name == 'police' then
			TriggerClientEvent("esx_yacht:notify", -1)
		end
	end
end
