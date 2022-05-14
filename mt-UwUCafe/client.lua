local QBCore = exports['qb-core']:GetCoreObject()
local spawned = false

--- Cenas e coisas para o Job -------------

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "uwu" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    if PlayerData.job.name == 'uwu' then
    	onDuty = duty
    end
end)

RegisterNetEvent("mt-UwUCafe:client:Servico", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

---------------------------------
----- Blip no mapa --------------

Citizen.CreateThread(function()
    uwu = Config.MapLoc
    SetBlipSprite (uwu, 621)
    SetBlipDisplay(uwu, 4)
    SetBlipScale  (uwu, 0.9)
    SetBlipAsShortRange(uwu, true)
    SetBlipColour(uwu, 34)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("UwU Cafe")
    EndTextCommandSetBlipName(uwu)
end) 

--------------------
----- Menus --------

RegisterNetEvent('mt-UwUCafe:client:MenuComidas', function() -- Menu para fazer comidas
    exports['qb-menu']:openMenu({
        {
            header = "Food UwU Cafe",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Straberry Cupcake",
            txt = "Ingredients: <br> - 1 Milk <br> - 1 Buter <br> - 1 Flouer <br> - 1 Straberry Package",
            params = {
                event = "mt-UwUCafe:client:FazerCupcakeMorango",
            }
        },
        {
            header = "Chocolat Cupcake",
            txt = "Ingredients: <br> - 1 Milk <br> - 1 Buter <br> - 1 Flouer <br> - 1 Chocolat",
            params = {
                event = "mt-UwUCafe:client:FazerCupcakeChocolate",
            }
        },
        {
            header = "Limon Cupcake",
            txt = "Ingredients: <br> - 1 Milk <br> - 1 Buter <br> - 1 Flouer <br> - 1 Limon",
            params = {
                event = "mt-UwUCafe:client:FazerCupcakeLimao",
            }
        },
        {
            header = "Straberry Ice Cream",
            txt = "Ingredients: <br> - 1 Cream <br> - 1 Condensed milk <br> - 1 Straberry Package",
            params = {
                event = "mt-UwUCafe:client:FazerGeladoMorango",
            }
        },
        {
            header = "Chocolat Ice Cream",
            txt = "Ingredients: <br> - 1 Cream <br> - 1 Condensed milk <br> - 1 Chocolat",
            params = {
                event = "mt-UwUCafe:client:FazerGeladoChocolate",
            }
        },
        {
            header = "Canilla Ice Cream",
            txt = "Ingredients: <br> - 1 Cream <br> - 1 Condensed milk <br> - 1 Extrato de baunilha",
            params = {
                event = "mt-UwUCafe:client:FazerGeladoBaunilha",
            }
        },
        {
            header = "Nutela Pancake",
            txt = "Ingredients: <br> - 1 Flouer <br> - 1 Milk <br> - 1 Pacote de açucar <br> - 1 Nutela",
            params = {
                event = "mt-UwUCafe:client:FazerPanquencaNutela",
            }
        },
        {
            header = "Oreo Pancake",
            txt = "Ingredients: <br> - 1 Flouer <br> - 1 Milk <br> - 1 Pacote de açucar <br> - 1 Oreo",
            params = {
                event = "mt-UwUCafe:client:FazerPanquencaOreo",
            }
        },
        {
            header = "Chocolat Muffin",
            txt = "Ingredients: <br> - 1 Flouer <br> - 1 Milk <br> - 1 Chocolat",
            params = {
                event = "mt-UwUCafe:client:FazerMuffinChocolate",
            }
        },
        {
            header = "Chicken pastel",
            txt = "Ingredients: <br> - 1 Flouer <br> - 1 Buter <br> - 1 Chicken",
            params = {
                event = "mt-UwUCafe:client:FazerPastelFrango",
            }
        },
        {
            header = "Nutela Waffle",
            txt = "Ingredients: <br> - 1 Flouer <br> - 1 Milk <br> - 1 Nutela",
            params = {
                event = "mt-UwUCafe:client:FazerWaffleNutela",
            }
        },
    })
end)

RegisterNetEvent('mt-UwUCafe:client:MenuBebidas', function() -- Menu para fazer bebidas
    exports['qb-menu']:openMenu({
        {
            header = "Drinks UwU Cafe",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Coffee",
            txt = "Ingredients: <br> - 1 Coffee beans <br> - 1 Water Bottle",
            params = {
                event = "mt-UwUCafe:client:FazerCafe",
            }
        },
        {
            header = "Latte",
            txt = "Ingredients: <br> - 1 Coffee beans <br> - 1 Milk",
            params = {
                event = "mt-UwUCafe:client:FazerLatte",
            }
        },
        {
            header = "Blackberry Bubble Tea",
            txt = "Ingredients: <br> - 1 Caixa de amoras <br> - 1 Water Bottle",
            params = {
                event = "mt-UwUCafe:client:FazerBubbleTeaAmora",
            }
        },
        {
            header = "Straberry Bubble Tea",
            txt = "Ingredients: <br> - 1 Straberry Package <br> - 1 Water Bottle",
            params = {
                event = "mt-UwUCafe:client:FazerBubbleTeaMorango",
            }
        },
        {
            header = "Mint Bubble Tea",
            txt = "Ingredients: <br> - 1 Mint extract <br> - 1 Water Bottle",
            params = {
                event = "mt-UwUCafe:client:FazerBubbleTeaMenta",
            }
        },
        {
            header = "Straberry Milkshake",
            txt = "Ingredients: <br> - 1 Straberry Package <br> - 1 Milk",
            params = {
                event = "mt-UwUCafe:client:FazerMilkshakeMorango",
            }
        },
        {
            header = "Chocolat Milkshake",
            txt = "Ingredients: <br> - 1 Chocolat <br> - 1 Milk",
            params = {
                event = "mt-UwUCafe:client:FazerMilkshakeChocolate",
            }
        },
    })
end)

RegisterNetEvent('mt-UwUCafe:client:MenuLoja', function() -- Menu para o vendedor de ingrediente
    if Config.UsarPed == true then
    exports['qb-menu']:openMenu({
        {
            header = "Ingredients Seller",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Milk",
            txt = "Price: 10x per 20$",
            params = {
                event = "mt-UwUCafe:client:ComprarLeite",
            }
        },
        {
            header = "Buter",
            txt = "Price: 10x per 20$",
            params = {
                event = "mt-UwUCafe:client:ComprarManteiga",
            }
        },
        {
            header = "Flouer",
            txt = "Price: 10x per 20$",
            params = {
                event = "mt-UwUCafe:client:ComprarFarinha",
            }
        },
        {
            header = "Straberry Package",
            txt = "Price: 10x per 50$",
            params = {
                event = "mt-UwUCafe:client:ComprarMorangos",
            }
        },
        {
            header = "Chocolat",
            txt = "Price: 10x per 50$",
            params = {
                event = "mt-UwUCafe:client:ComprarChocolate",
            }
        },
        {
            header = "Limão",
            txt = "Price: 10x per 30$",
            params = {
                event = "mt-UwUCafe:client:ComprarLimao",
            }
        },
        {
            header = "Cream",
            txt = "Price: 10x v 50$",
            params = {
                event = "mt-UwUCafe:client:ComprarNatas",
            }
        },
        {
            header = "Condensed milk",
            txt = "Price: 10x per 50$",
            params = {
                event = "mt-UwUCafe:client:ComprarCondensado",
            }
        },
        {
            header = "Extrato de baunilha",
            txt = "Price: 10x per 50$",
            params = {
                event = "mt-UwUCafe:client:ComprarBaunilha",
            }
        },
        {
            header = "Pacote de açucar",
            txt = "Price: 10x per 20$",
            params = {
                event = "mt-UwUCafe:client:ComprarAcucar",
            }
        },
        {
            header = "Frasco de nutela",
            txt = "Price: 10x per 50$",
            params = {
                event = "mt-UwUCafe:client:ComprarNutela",
            }
        },
        {
            header = "Pacote de oreo",
            txt = "Price: 10x per 50$",
            params = {
                event = "mt-UwUCafe:client:ComprarOreo",
            }
        },
        {
            header = "Coffee beans",
            txt = "Price: 10x per 50$",
            params = {
                event = "mt-UwUCafe:client:ComprarCafe",
            }
        },
        {
            header = "Extrato de menta",
            txt = "Price: 10x per 50$",
            params = {
                event = "mt-UwUCafe:client:ComprarMenta",
            }
        },
        {
            header = "Caixa de amoras",
            txt = "Price: 10x per 50$",
            params = {
                event = "mt-UwUCafe:client:ComprarAmoras",
            }
        },
        {
            header = "Frango",
            txt = "Price: 10x per 50$",
            params = {
                event = "mt-UwUCafe:client:ComprarFrango",
            }
        },
    })
    end
end)

---------------------------------------
----------- Fazer comidas -------------

RegisterNetEvent('mt-UwUCafe:client:FazerCupcakeMorango', function() -- Fazer Cupcake de morango
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('cupcake_morango', 'MAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerCupcakeMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerCupcakeChocolate', function() -- Fazer Cupcake de chocolate
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('cupcake_chocolate', 'MAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerCupcakeChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerCupcakeLimao', function() -- Fazer Cupcake de limao
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('cupcake_limao', 'MAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerCupcakeLimao')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerGeladoMorango', function() -- Fazer Gelado de morango
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('gelado_morango', 'MAKING A ICE CREAM...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerGeladoMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerGeladoChocolate', function() -- Fazer Gelado de chocolate
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('gelado_chocolate', 'MAKING A ICE CREAM...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerGeladoChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerGeladoBaunilha', function() -- Fazer Gelado de baunilha
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('gelado_baunilha', 'MAKING A ICE CREAM...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerGeladoBaunilha')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerPanquencaNutela', function() -- Fazer Panqueca de nutela
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('panqueca_nutela', 'MAKING A PANCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerPanquencaNutela')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerPanquencaOreo', function() -- Fazer Panqueca de oreo
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('panqueca_oreo', 'MAKING A PANCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerPanquencaOreo')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerMuffinChocolate', function() -- Fazer Panqueca de oreo
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('muffin_chocolate', 'MAKING A MUFFIN...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerMuffinChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerPastelFrango', function() -- Fazer Panqueca de oreo
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('pastel_frango', 'MAKING A PASTEL...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerPastelFrango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerWaffleNutela', function() -- Fazer Panqueca de oreo
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('waffle_nutela', 'MAKING A WAFFLE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerWaffleNutela')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

---------------------------------------
--------- Fazer bebidas ---------------

RegisterNetEvent('mt-UwUCafe:client:FazerCafe', function() -- Fazer um cafe
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('fazer_cafe', 'TAKING A COFFEE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerCafe')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerLatte', function() -- Fazer um Latte
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('fazer_latte', 'TAKING A LATTE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerLatte')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerBubbleTeaAmora', function() -- Fazer um Bubble tea de amora
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('bubble_amora', 'TAKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerBubbleTeaAmora')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerBubbleTeaMorango', function() -- Fazer um Bubble tea de morango
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('bubble_morango', 'TAKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerBubbleTeaMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerBubbleTeaMenta', function() -- Fazer um Bubble tea de menta
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('bubble_menta', 'TAKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerBubbleTeaMenta')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerMilkshakeMorango', function() -- Fazer um Bubble tea de menta
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('milkshake_morango', 'TAKING A MILKSHAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerMilkshakeMorango')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:FazerMilkshakeChocolate', function() -- Fazer um Bubble tea de menta
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('milkshake_chocolate', 'TAKING A MILKSHAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('mt-UwUCafe:server:FazerMilkshakeChocolate')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

--------------------------------
------- Stashes ----------------

RegisterNetEvent('mt-UwUCafe:client:FrigorificoComida', function() -- Frigorifico para comida (feita)
    TriggerEvent("inventory:client:SetCurrentStash", "frigorificouwu")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "frigorificouwu", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent('mt-UwUCafe:client:FrigorificoIngredients', function() -- Frigorifico para Ingredients
    TriggerEvent("inventory:client:SetCurrentStash", "FrigorificoUwU2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "frigorificouwu2", {
        maxweight = 500000,
        slots = 40,
    })
end)

RegisterNetEvent('mt-UwUCafe:client:Balcao', function() -- Frigorifico para comida (feita)
    TriggerEvent("inventory:client:SetCurrentStash", "balcaouwu")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "balcaouwu", {
        maxweight = 10000,
        slots = 40,
    })
end)

RegisterNetEvent('mt-UwUCafe:client:Tabuleiro1', function() -- tabuleiro1
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroUwU1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroUwU1", {
        maxweight = 20000,
        slots = 10,
    })
end)

RegisterNetEvent('mt-UwUCafe:client:Tabuleiro2', function() -- tabuleiro2
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroUwU2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroUwU2", {
        maxweight = 20000,
        slots = 10,
    })
end)

---------------------------
---- Spawn Gatos ----------

CreateThread(function()
    local spot1 = CircleZone:Create(vector3(-580.54, -1064.7, 22.79), 10.0, {
        name="spot1",
        debugPoly=false,
    })
	while true do
		Wait(3000)
		local plyPed = PlayerPedId()
		local coord = GetEntityCoords(plyPed)
		if spot1:isPointInside(coord)then
			if not spawned then
				spawnGatos()
			end
		end
	end
end)

function spawnGatos()
	spawned = true
    for key, value in pairs(Config.Gatos) do
        local hash = GetHashKey('a_c_cat_01')
        RequestModel(hash)
        while not HasModelLoaded(hash) do
            Citizen.Wait(10)
        end
        if value.sitting  == true then
            ped = CreatePed(28, hash, value.coords.x, value.coords.y, value.coords.z - 0.9, value.coords.w, false, true)
            DoRequestAnimSet('creatures@cat@amb@world_cat_sleeping_ground@idle_a')
            TaskPlayAnim(ped, 'creatures@cat@amb@world_cat_sleeping_ground@idle_a', 'idle_a' ,8.0, -8, -1, 1, 0, false, false, false)
            SetPedCanBeTargetted(ped, false)
            SetEntityAsMissionEntity(ped, true,true)
            SetBlockingOfNonTemporaryEvents(ped, true)
        else
            ped = CreatePed(28, hash, value.coords.x, value.coords.y, value.coords.z - 1.0, value.coords.w, false, true)
            SetPedCanBeTargetted(ped, false)
            SetEntityAsMissionEntity(ped, true,true)
            TaskWanderStandard(ped, 0, 0)
            SetBlockingOfNonTemporaryEvents(ped, true)
        end
    end
end

function DoRequestAnimSet(anim)
	RequestAnimDict(anim)
	while not HasAnimDictLoaded(anim) do
		Citizen.Wait(1)
	end
end

------------------------------------
----- Usar comidas/bebidas ---------

RegisterNetEvent('mt-UwUCafe:client:ComerCupcake', function() -- Comer Cupcake
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    QBCore.Functions.Progressbar('comer_cupcake', 'EATING A CUPCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComerPastel', function() -- Comer Cupcake
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('comer_pastel', 'EATING A PASTEL...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComerMuffin', function() -- Comer Cupcake
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    QBCore.Functions.Progressbar('comer_muffin', 'EATING A MUFFIN...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComerWaffle', function() -- Comer Cupcake
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('comer_waffle', 'EATING A WAFFLE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComerGelado', function() -- Comer gelado
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    QBCore.Functions.Progressbar('comer_gelado', 'EATING A GELADO...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(20, 50))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComerPanqueca', function() -- Comer panqueca
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('comer_panqueca', 'DRINKING A PANCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(30, 60))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:BeberBubbleTea', function() -- Comer panqueca
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_bubbletea', 'DRINKING A BUBBLE TEA...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(30, 50))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:BeberMilkshake', function() -- Comer panqueca
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_milkshake', 'DRINKING A MILKSHAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(30, 50))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:BeberCafe', function() -- Comer panqueca
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_cafe', 'DRINKING A COFFEE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(30, 50))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('hud:server:RelieveStress', math.random(20, 40))
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:BeberLatte', function() -- Comer panqueca
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_latte', 'DRINKING A LATTE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(30, 50))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
    end)
end)

------------------------------------------
------ Spawn ped venda alimentos ---------

local IngredientsPed = {
    Config.Ped
}

Citizen.CreateThread(function()
    if Config.UsarPed == true then
    for _,v in pairs(IngredientsPed) do
        RequestModel(GetHashKey(v[7]))
        while not HasModelLoaded(GetHashKey(v[7])) do
            Wait(1)
        end
        IngredientsProcPed =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
        SetEntityHeading(IngredientsProcPed, v[5])
        FreezeEntityPosition(IngredientsProcPed, true)
        SetEntityInvincible(IngredientsProcPed, true)
        SetBlockingOfNonTemporaryEvents(IngredientsProcPed, true)
        TaskStartScenarioInPlace(IngredientsProcPed, "WORLD_HUMAN_STAND_MOBILE_UPRIGHT", 0, true) 
        end
    end
end)

Citizen.CreateThread(function()
    if Config.UsarPed == true then
    local blip = Config.PedMapLoc
	SetBlipSprite(blip, 59)
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 2)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Ingredients Seller")
    EndTextCommandSetBlipName(blip)
    end
end)

Citizen.CreateThread(function ()
    if Config.UsarPed == true then
    exports['qb-target']:AddBoxZone("PedIngredients", Config.PedTargetLoc, 1, 1, {
        name = "PedIngredients",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-UwUCafe:client:MenuLoja",
                icon = "fas fa-shopping-bag",
                label = 'Talk with employee'
            },
        },
        distance = 2.5
    })
    end
end)

------------------------------------------
------- Comprar alimentos ----------------

RegisterNetEvent('mt-UwUCafe:client:ComprarLeite', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_leite', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "pacote-leite", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarManteiga', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_manteiga', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "barra-manteiga", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarFarinha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_farinha', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "pacote-farinha", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarMorangos', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_morangos', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "caixa-morangos", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarChocolate', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_chocolate', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "barra-chocolate", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarLimao', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_limao', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "limao", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar30dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarNatas', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_natas', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "pacote-natas", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarCondensado', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_condensado', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "leite-condensado", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarBaunilha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_baunilha', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "extrato-baunilha", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarAcucar', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_acucar', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "pacote-acucar", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar20dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarNutela', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_nutela', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "frasco-nutela", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarOreo', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_oreo', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "pacote-oreo", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarCafe', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_cafe', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "graos-cafe", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarMenta', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_menta', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "extrato-menta", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarAmoras', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprar_amoras', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "caixa-amoras", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

RegisterNetEvent('mt-UwUCafe:client:ComprarFrango', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('comprarfrango', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "frango", 10)
        TriggerServerEvent('mt-UwUCafe:server:Tirar50dolares')
    end)
end)

----------------------------------
--------- Acariciar Gatos --------

RegisterNetEvent('mt-UwUCafe:client:AcariciarGato', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('acariciar_gatos', 'HAVING PARTIES WITH THE CAT...', 5000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

---------------------------------
--- Ver ementa ------------------

RegisterNetEvent("mt-UwUCafe:client:VerEmenta", function()
    exports['qb-menu']:openMenu({
        {
            header = "Menu UwU Cafe",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Drinks",
            txt = "See the drinks currently available in our cafe!",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Foods",
            txt = "See what foods are currently available in our cafe!",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
    })
end)

RegisterNetEvent('mt-UwUCafe:client:EmentaBebidas', function()
    exports['qb-menu']:openMenu({
        {
            header = "Drinks UwU Cafe",
            isMenuHeader = true,
        },
        {
            header = "< Back",
            txt = "",
            params = {
                event = "mt-UwUCafe:client:VerEmenta",
            }
        },
        {
            header = "Latte",
            txt = "Price: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Coffee",
            txt = "Price: 20$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Blackberry Bubble Tea",
            txt = "Price: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Mint Bubble Tea",
            txt = "Price: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Straberry Bubble Tea",
            txt = "Price: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Straberry Milkshake",
            txt = "Price: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
        {
            header = "Chocolat Milkshake",
            txt = "Price: 25$",
            params = {
                event = "mt-UwUCafe:client:EmentaBebidas",
            }
        },
    })
end)

RegisterNetEvent('mt-UwUCafe:client:EmentaComidas', function()
    exports['qb-menu']:openMenu({
        {
            header = "Foods UwU Cafe",
            isMenuHeader = true,
        },
        {
            header = "< Back",
            txt = "",
            params = {
                event = "mt-UwUCafe:client:VerEmenta",
            }
        },
        {
            header = "Straberry Cupcake",
            txt = "Price: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Chocolat Cupcake",
            txt = "Price: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Limon Cupcake",
            txt = "Price: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Straberry Ice Cream",
            txt = "Price: 40$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Vanilla Ice Cream",
            txt = "Price: 40$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Chocolat Ice Cream",
            txt = "Price: 40$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Nutela Pancake",
            txt = "Price: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Oreo Pancake",
            txt = "Price: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Chocolat Muffin",
            txt = "Price: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Chicken Pastel",
            txt = "Price: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
        {
            header = "Nutela Waffle",
            txt = "Price: 50$",
            params = {
                event = "mt-UwUCafe:client:EmentaComidas",
            }
        },
    })
end)

RegisterCommand('ementa-uwu', function()
    TriggerEvent('mt-UwUCafe:client:VerEmenta')
end)

-------------------------------------
------------- Faturar Player --------

RegisterNetEvent("mt-UwUCafe:client:FaturarPlayer", function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Fatura",
        submitText = "Bill Player",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'paypal id'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ amount!'
            }
        }
    })
    if dialog then
        if not dialog.id or not dialog.amount then return end
        TriggerServerEvent("mt-UwUCafe:server:FaturarPlayer", dialog.id, dialog.amount)
    end
end)