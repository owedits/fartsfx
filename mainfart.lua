
if game:GetService("CoreGui"):FindFirstChild("PSX | Premium") then
    require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("Finded another menu. \nDestroying it... \nPlease execute again.")
        for i = 0,5 do
            game:GetService("CoreGui")["PSX | Premium"]:Destroy()
        end
elseif not game:GetService("CoreGui"):FindFirstChild("PSX | Premium") then
    print("Didnt find other menus")
end
--------------------------
require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("Thanks for buying my script \nDeveloper: \n!KrystekYT#8687")

if game.PlaceId == 6284583030 then
    local start = tick()
    repeat task.wait() until game:isLoaded()
    repeat task.wait() until game:GetService("Players")
    repeat task.wait() until game:GetService("Players").LocalPlayer
    repeat task.wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Enabled
    repeat task.wait() until game:GetService("Workspace"):FindFirstChild('__MAP')
end


-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KrystekYT/VenyxUI-Colored/main/petsimxVenyx"))()
local venyx = library.new("PSX | Premium", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(0, 255, 255)
}


local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("lol bad exploit")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end



-------------------------------------------------------------------------------------------------
--locales

local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local Network = GameLibrary.Network
local Run_Service = game:GetService("RunService")
local rs = Run_Service.RenderStepped
local CurrencyOrder = {"Halloween Candy", "Tech Coins", "Fantasy Coins", "Coins", "Diamonds",}

local IMightKillMyselfCauseOfThis = {
        --Misc
        ['VIP'] = {'VIP'};
        --Spawn
        ['Town'] = {'Town', 'Town FRONT'};
        ['Forest'] = {'Forest', 'Forest FRONT'};
        ['Beach'] = {'Beach', 'Beach FRONT'};
        ['Mine'] = {'Mine', 'Mine FRONT'};
        ['Winter'] = {'Winter', 'Winter FRONT'};
        ['Glacier'] = {'Glacier', 'Glacier Lake'};
        ['Desert'] = {'Desert', 'Desert FRONT'};
        ['Volcano'] = {'Volcano', 'Volcano FRONT'};
        -- Fantasy init
        ['Enchanted Forest'] = {'Enchanted Forest', 'Enchanted Forest FRONT'};
        ['Ancient'] = {'Ancient'};
        ['Samurai'] = {'Samurai', 'Samurai FRONT'};
        ['Candy'] = {'Candy'};
        ['Haunted'] = {'Haunted', 'Haunted FRONT'};
        ['Hell'] = {'Hell'};
        ['Heaven'] = {'Heaven'};
        -- Tech
        ['Ice Tech'] = {'Ice Tech'};
        ['Tech City'] = {'Tech City'; 'Tech City FRONT'};
        ['Dark Tech'] = {'Dark Tech'; 'Dark Tech FRONT'};
        ['Steampunk'] = {'Steampunk'; 'Steampunk FRONT'};
    }

    local AreaListLoc = { --These match the IMightKillMyselfCuaseOfThis table
        'All'; 'VIP';
        'Town'; 'Forest'; 'Beach'; 'Mine'; 'Winter'; 'Glacier'; 'Desert'; 'Volcano';
        'Enchanted Forest'; 'Ancient'; 'Samurai'; 'Candy'; 'Haunted'; 'Hell'; 'Heaven';
        'Ice Tech'; 'Tech City'; 'Dark Tech'; 'Steampunk';
    }
    
    
    
    local Chests = {
        'All';
        -- Spawn
        "Magma Chest",
        -- Fantasy
        "Enchanted Chest", "Hell Chest", "Haunted Chest", "Angel Chest", "Grand Heaven Chest",
        -- Tech
        "Giant Tech Chest"; "Giant Steampunk Chest";
    }
    
    

local function SecondsToClock(seconds) 
        local days = math.floor(seconds / 86400)
        seconds = seconds - days * 86400
        local hours = math.floor(seconds / 3600 )
        seconds = seconds - hours * 3600
        local minutes = math.floor(seconds / 60) 
        seconds = seconds - minutes * 60

        return string.format("%d d, %d h, %d m, %d s.",days,hours,minutes,seconds)
      end



--5012544693

-------------------------------------------------------------------------------------------------
-- credits page
local page = venyx:addPage("Credits", 5832745520)
local Credits1 = page:addSection("Authors:")

Credits1:addButton("!KrystekYT#8687", function(dsclink)
    if dsclink then
        venyx:Notify("Text Copied", "Now Just Paste It :) ")
    end
    setclipboard('!KrystekYT#8687')
end)

----------------------------------

local Credits2 = page:addSection("Discord:")

Credits2:addButton("Copy Discord Link", function(dsclink)
    if dsclink then
        venyx:Notify("Link Copied", "Now Just Paste It :) ")
    end
    setclipboard('https://discord.gg/3FV3qCMkU2')
end)



-------------------------------------------------------------------------------------------------
-- page1


local page = venyx:addPage("Farming", 1379498635)
local section1 = page:addSection("Farming")
local section2 = page:addSection("Farming Addons")
-------------------------------------------------------------------------------------------------
-- Misc page
local page = venyx:addPage("Misc", 37219625)
local misc1 = page:addSection("Misc")
local misc2 = page:addSection("Remote Things")

-------------------------------------------------------------------------------------------------

-- Egg page
local page = venyx:addPage("Eggs", 5094819983)
local eggs1 = page:addSection("Eggs")
-------------------------------------------------------------------------------------------------

-- Pets page
local page = venyx:addPage("Pets", 329532393)
local pets1 = page:addSection("Auto Fuse")
local pets2 = page:addSection("Auto Gold/Rainbow")
local pets3 = page:addSection("Auto Enchant | Disabled")
local pets4 = page:addSection("Dark Matter")

-------------------------------------------------------------------------------------------------

-- Troll page
local page = venyx:addPage("Troll", 329532393)
local troll1 = page:addSection("Troll")

-------------------------------------------------------------------------------------------------
-- Settings page
local page = venyx:addPage("Settings", 5107159171)
local Settings1 = page:addSection("Settings")
local Settings2 = page:addSection("Theme")
Settings1:addKeybind("Toggle Keybind Menu", Enum.KeyCode.RightShift, function(menu)
venyx:toggle()
end, function(menu)
end)

------------

_G.RenderingStatus = false
Settings1:addKeybind("Toggle Rendering", Enum.KeyCode.B, function(render)
        _G.RenderingStatus = not _G.RenderingStatus
        local rs = game:GetService("RunService")
        rs:Set3dRenderingEnabled(_G.RenderingStatus)
        rs:setThrottleFramerateEnabled(not _G.RenderingStatus)
end, function(render)
end)


------------

Settings1:addButton("Destroy GUI", function(destroygui)
    game:GetService("CoreGui")["PSX | Premium"]:Destroy()
    print("GUI Destroyed")
end)
-------------------------------------------------------------------------------------------------

local MethodList = {'Normal', 'Chest', 'Multi Target', 'Lowest Value (Multi)', 'Highest Value', '[TESTING] Highest Value', 'Nearest'}

section1:addDropdown("Method", MethodList, function(methodfunc)
    if methodfunc then
        _G.methodfunc = methodfunc
    end
    print("Method: ", methodfunc)
end)

--------------------------------


local ItemToFarmList = {'All', 'Magma Chest', 'Enchanted Chest', 'Hell Chest', 'Haunted Chest', 'Angel Chest', 'Grand Heaven Chest', 'Giant Tech Chest', 'Giant Steampunk Chest'}

section1:addDropdown("Item To Farm", ItemToFarmList, function(itemtofarmfunc)
    if itemtofarmfunc then
        _G.itemtofarmfunc = itemtofarmfunc
    end
    print("Selected Item: ", itemtofarmfunc)
end)

--------------------------------

--local WorldList = {"Spawn", "Fantasy", "Tech"}

--section1:addDropdown("Select World", WorldList, function(worldfunc)
--    if worldfunc then
--        _G.worldfunc = worldfunc
--    end
--    print("World: ", worldfunc)
--end)
--------------------------------


--local Coins = {} 
--for i,v in pairs(game.ReplicatedStorage.Game.Coins:GetChildren()) do 
--    for i2,v2 in pairs(v:GetChildren()) do 
--        table.insert(Coins, v2.Name)
--    end 
--end 
--table.foreach(Coins, print)



section1:addDropdown("Select Location", AreaListLoc, function(mapafunc)
    if mapafunc then
        _G.mapafunc = mapafunc
    end
    print("Area: ", mapafunc)
end)

-------------------------------------------------------------------------------------------------

local AreaWorldTable = {}
for _, v in pairs(game:GetService("ReplicatedStorage").Game.Coins:GetChildren()) do
    for _, b in pairs(v:GetChildren()) do
        table.insert(AreaWorldTable, b.Name)
    end
    table.insert(AreaWorldTable, v.Name)
end

-------------------------

function AllChests()
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        local shit = v
        shit["index"] = i
        for aa,bb in pairs(AreaWorldTable) do
            if string.find(v.n, bb) then
                local thing = string.gsub(v.n, bb.." ", "")
                if table.find(Chests, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end

-------------------------------

workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "buy egg")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "join coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "farm coin")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "claim orbs")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "change pet target")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "get trade")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "add trade pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "remove trade pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "convert to dark matter")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem dark matter pet")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem rank rewards")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "redeem vip rewards")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "toggle setting")
workspace.__THINGS.__REMOTES.MAIN:FireServer("a", "activate boost")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "use golden machine")
workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "use rainbow machine")
-------------------------------

function FarmCoin(CoinID, PetID)
    game.workspace['__THINGS']['__REMOTES']["join coin"]:InvokeServer({[1] = CoinID, [2] = {[1] = PetID}})
    game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({[1] = CoinID, [2] = PetID})
end

-------------------------------

--function GetMyPets()
--   local returntable = {}
--   for i,v in pairs(GameLibrary.Save.Get().Pets) do
--       if v.e then 
--           table.insert(returntable, v.uid)
--       end
--   end
--   return returntable
--end

local Library = require(game:GetService("ReplicatedStorage").Framework.Library)
local IDToName = {}
local NameToID = {}
for i,v in pairs(Library.Directory.Pets ) do
    IDToName[i] = v.name
    NameToID[v.name] = i
end

function GetMyPets()
       local returntable = {}
       for i,v in pairs(GameLibrary.Save.Get().Pets) do
           if v.e then 
               table.insert(returntable, v.uid)
           end
       end
       return returntable
    end

function GetPets()
        local MyPets = {}
        for i,v in pairs(GameLibrary.Save.Get().Pets) do
            --if (not _G.AllowMythicals) or (_G.AllowMythicals and (PettoRarity[v.id] ~= 'Mythical' and PettoRarity[v.id] ~= 'Exclusive' and not string.find(IDToName[v.id]:lower(), "maskot"))) then
                local ThingyThingyTempTypeThing = (v.g and 'Gold') or (v.r and 'Rainbow') or (v.dm and 'Dark Matter') or 'Normal'
                local TempString = ThingyThingyTempTypeThing .. IDToName[v.id]
                if MyPets[TempString] then
                    table.insert(MyPets[TempString], v.uid)
                else
                    MyPets[TempString] = {}
                    table.insert(MyPets[TempString], v.uid)
                end
            --end
        end
        return MyPets
    end

--function GetPets()
--        local MyPets = {}
--        for i,v in pairs(GameLibrary.Save.Get().Pets) do
--            --if (not _G.AllowMythicals) or (_G.AllowMythicals and (not PettoRarity[v.id] ~= 'Mythical' and PettoRarity[v.id] ~= 'Exclusive')) then
--                local ThingyThingyTempTypeThing = (v.g and 'Gold') or (v.r and 'Rainbow') or (v.dm and 'Dark Matter') or 'Normal'
--                local TempString = ThingyThingyTempTypeThing .. IDToName[v.id]
--                if MyPets[TempString] then
--                    table.insert(MyPets[TempString], v.uid)
--                else
--                    MyPets[TempString] = {}
--                    table.insert(MyPets[TempString], v.uid)
--                end
--            end
--        --end
--        return MyPets
--    end

--------------------------

--function GetCoins(area)
--    local returntable = {}
--    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
--    for i,v in pairs(ListCoins) do
--        if _G.mapafunc == 'All' or table.find(IMightKillMyselfCauseOfThis[_G.mapafunc], v.a) then
--            local shit = v
--            shit["index"] = i
--            table.insert(returntable, shit)
--         end
--    end
--    return returntable
--end

function GetCoins(area, exclude)
    exclude = exclude or {}
    local Areas = (IMightKillMyselfCauseOfThis)
    local returntable = {}
    local ListCoins = game.workspace['__THINGS']['__REMOTES']["get coins"]:InvokeServer({})[1]
    for i,v in pairs(ListCoins) do
        if _G.mapafunc == 'All' or table.find(Areas[_G.mapafunc], v.a) and not table.find(exclude ,v.n) then
            local shit = v
            shit["index"] = i
            table.insert(returntable, shit)
         end
    end
    return returntable
end
--------------------------

--function GetCoinTable(area)
--    local CoinTable = GetCoins(area)
--    function getKeysSortedByValue(tbl, sortFunction)
--        local keys = {}
--        for key in pairs(tbl) do
--            table.insert(keys, key)
--        end
--        table.sort(
--            keys,
--            function(a, b)
--                return sortFunction(tbl[a].h, tbl[b].h)
--            end
--        )
--        return keys
--    end
--    local sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a > b end)
--    local newCoinTable = {}
--
--    for i,v in pairs(sortedKeys) do
--        table.insert(newCoinTable, CoinTable[v])
--    end
--    
--    return newCoinTable
--end

function GetCoinTable(area, Type, exclude)
    exclude = exclude or {}
    local CoinTable = GetCoins(area, exclude)
    local function getKeysSortedByValue(tbl, sortFunction)
        local keys = {}
        for key in pairs(tbl) do
            table.insert(keys, key)
        end
        table.sort(
            keys,
            function(a, b)
                return sortFunction(tbl[a].h, tbl[b].h)
            end
        )
        return keys
    end
    local sortedKeys
    if Type == 'Highest' then
        sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a > b end)
    elseif Type == 'Lowest' then
        sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a < b end)
    end
    local newCoinTable = {}

    for i,v in pairs(sortedKeys) do
        table.insert(newCoinTable, CoinTable[v])
    end

    return newCoinTable
end

-------------------------

if _G.MyConnection then _G.MyConnection:Disconnect() end
    _G.MyConnection = game.Workspace.__THINGS.Orbs.ChildAdded:Connect(function(Orb)
        game.Workspace.__THINGS.__REMOTES["claim orbs"]:FireServer({{Orb.Name}})
    end)

section1:addToggle("Farming Toggle", false, function(farmingtogglefunc)
if farmingtogglefunc == true then
    _G.FarmingToggle = true
elseif farmingtogglefunc == false or destroygui then
    _G.FarmingToggle = false
end
    
        local CurrentFarmingPets = {}
        while _G.FarmingToggle do
            local pethingy = GetMyPets()
            local cointhiny = nil

        --local CurrentFarmingPets = {}
        --while rs:wait() and _G.FarmingToggle == false do
        --    local pethingy = GetPets()

        --if _G.methodfunc == 'Normal' then
        --    local cointhiny = GetCoins(_G.mapafunc)
        --    for i = 1, #cointhiny do
        --        if _G.FarmingToggle and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) then
        --            for _, bb in pairs(pethingy) do
        --                if _G.FarmingToggle and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) then
        --                    spawn(function()
        --                        FarmCoin(cointhiny[i].index, bb)
        --                    end)
        --                end
        --            end
        --            repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index)
        --        end
        --    end

            if _G.methodfunc == 'Normal' then
                local cointhiny = GetCoins(_G.mapafunc)
                for i = 1, #cointhiny do
                    if _G.FarmingToggle and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) then
                        for _, bb in pairs(pethingy) do
                            coroutine.wrap(function()
                                FarmCoin(cointhiny[i].index, bb)
                            end)()
                        end
                        repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or not _G.FarmingToggle or _G.methodfunc ~= 'Normal'
                    end
                end

        --    elseif _G.methodfunc == 'Chest' then
        --        for i,v in pairs(AllChests()) do
        --            if (v.n == _G.itemtofarmfunc) or (_G.itemtofarmfunc == 'All') then
        --                local starttick = tick()
        --                for a, b in pairs(pethingy) do
        --                    pcall(function() FarmCoin(v.index, b) end)
        --                end
        --                repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or #game:GetService("Workspace")["__THINGS"].Coins[v.index].Pets:GetChildren() == 0
        --                --warn(v.n .. " has been broken in", tick()-starttick)
        --            end
        --        end

            elseif _G.methodfunc == 'Chest' then
                for i,v in pairs(AllChests()) do
                    if (v.n == _G.itemtofarmfunc) or (_G.itemtofarmfunc == 'All') then
                        local starttick = tick()
                        for a, b in pairs(pethingy) do
                            coroutine.wrap(function()
                                FarmCoin(v.index, b)
                            end)()
                        end
                        repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or #game:GetService("Workspace")["__THINGS"].Coins[v.index].Pets:GetChildren() == 0 or not _G.FarmingToggle or _G.methodfunc ~= 'Chest'
                        --warn(v.n .. " has been broken in", tick()-starttick)
                    end
                end

            --elseif _G.methodfunc == 'Multi Target' then
        --    local cointhiny = GetCoins(_G.mapafunc)
        --    for i = 1, #cointhiny do
        --        if i%#pethingy == #pethingy-1 then wait() end
        --        if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
        --            spawn(function()
        --                CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
        --                FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
        --                repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0
        --                CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
        --            end)
        --        end
        --    end

            elseif _G.methodfunc == 'Multi Target' then
                local cointhiny = GetCoins(_G.mapafunc)
                for i = 1, #cointhiny do
                    if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
                        coroutine.wrap(function()
                            CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                            FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                            repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0 or not _G.FarmingToggle or _G.methodfunc ~= 'Multi Target'
                            CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
                        end)()
                    end
                end

            elseif _G.methodfunc == 'Lowest Value (Multi)' then
                local cointhiny = GetCoinTable(_G.mapafunc, "Lowest")
                for i = 1, (#cointhiny >= #pethingy and #pethingy or #cointhiny) do
                    if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
                        coroutine.wrap(function()
                            CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                            FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                            repeat task.wait(0.0001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0 or not _G.FarmingToggle or _G.methodfunc ~= 'Lowest Value (Multi)'
                            CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
                        end)()
                    end
                end

            --elseif _G.methodfunc == 'Highest Value' then
        --    local cointhiny = GetCoinTable(_G.mapafunc)
        --    for a,b in pairs(pethingy) do
        --        spawn(function() FarmCoin(cointhiny[1].index, b) end)
        --    end
        --    repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or #game:GetService("Workspace")["__THINGS"].Coins[cointhiny[1].index].Pets:GetChildren() == 0

            elseif _G.methodfunc == 'Highest Value' then
                local cointhiny = GetCoinTable(_G.mapafunc, "Highest")
                if #cointhiny >= 1 then
                    for a,b in pairs(pethingy) do
                        coroutine.wrap(function()
                            FarmCoin(cointhiny[1].index, b) 
                        end)()
                    end
                    repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or #game:GetService("Workspace")["__THINGS"].Coins[cointhiny[1].index].Pets:GetChildren() == 0 or not _G.FarmingToggle or _G.methodfunc ~= 'Highest Value'
                else
                    task.wait()
                end

            elseif _G.methodfunc == '[TESTING] Highest Value' then
                local cointhiny = GetCoinTable(_G.mapafunc, "Highest")
                if #cointhiny >= 3 then
                    local CurrentFarmingPets = {}
                    for a = 1, 3 do
                        coroutine.wrap(function()
                            if CurrentFarmingPets[a] == nil then
                                for petnum = a, #pethingy, 3 do
                                    coroutine.wrap(function()
                                        if not CurrentFarmingPets[a] then CurrentFarmingPets[a] = {} end
                                        if CurrentFarmingPets[a] ~= nil and game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[a].index) and not table.find(CurrentFarmingPets[a], pethingy[petnum]) then
                                            table.insert(CurrentFarmingPets[a], pethingy[petnum])
                                            FarmCoin(cointhiny[a].index, pethingy[petnum]) 
                                        end
                                    end)()
                                end
                                repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[a].index) or #game:GetService("Workspace")["__THINGS"].Coins[cointhiny[a].index].Pets:GetChildren() == 0  or not _G.FarmingToggle or _G.methodfunc ~= '[TESTING] Highest Value'
                                CurrentFarmingPets[a] = nil
                            end
                        end)()
                    end
                else
                    task.wait()
                end
            
            --elseif _G.methodfunc == 'Nearest' then
        --    local NearestOne = nil
        --    local NearestDistance = math.huge
        --    for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetChildren()) do
        --        if (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < NearestDistance then
        --            NearestOne = v
        --            NearestDistance = (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        --        end
        --    end
        --    for a,b in pairs(pethingy) do
        --        spawn(function() FarmCoin(NearestOne.Name, b) end)
        --    end
            
            elseif _G.methodfunc == 'Nearest' then
                local cointable = game:GetService("Workspace")["__THINGS"].Coins:GetChildren()
                table.sort(cointable, function(i, v)
                    return (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - i.POS.Position).magnitude < (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.POS.Position).magnitude
                end)
                local NearestOne = cointable[1]
                if NearestOne ~= nil then
                    for a,b in pairs(pethingy) do
                        coroutine.wrap(function()
                            if NearestOne ~= nil then
                                FarmCoin(NearestOne.Name, b)
                            end
                        end)()
                    end
                    repeat task.wait(0.001) until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(NearestOne.Name) or #game:GetService("Workspace")["__THINGS"].Coins[NearestOne.Name].Pets:GetChildren() == 0
                else
                    task.wait()
                end
            end
        end
    end)


-------------------------------------------------------------------------------------------------
-- Farming Addons
--
--section1:addToggle("Auto Collect Orbs", false, function(autocollecting)
--
--if autocollecting == true then
--    _G.CollectOrbs = true
--elseif autocollecting == false or destroygui then
--    _G.CollectOrbs = false
--    end
--
--function CollectOrbs()
--   local ohTable1 = {[1] = {}}
--   for i,v in pairs(game.workspace['__THINGS'].Orbs:GetChildren()) do
--       ohTable1[1][i] = v.Name
--        end
--   game.workspace['__THINGS']['__REMOTES']["claim orbs"]:FireServer(ohTable1)
--    end
--
--while wait() and _G.CollectOrbs do
--      pcall(function() CollectOrbs() end)
--end
--end)

---------------

section2:addToggle("Auto Triple Damage", false, function(autotripledamage)

if autotripledamage == true then
    _G.TripleDamage1 = true
elseif autotripledamage == false or destroygui then
    _G.TripleDamage1 = false
    end


while wait(5) do
  if _G.TripleDamage1 then 
    if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Damage") then
        workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Triple Damage"})
    print("Triple Damage Boost Checked")
    end
  end
end
end)
---------------

section2:addToggle("Auto Triple Coins", false, function(autotriplecoins)

if autotriplecoins == true then
    _G.TripleCoins1 = true
elseif autotriplecoins == false or destroygui then
    _G.TripleCoins1 = false
    end

while wait(5) do
    if _G.TripleCoins1 then
        if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Coins") then
            workspace.__THINGS.__REMOTES["activate boost"]:FireServer({[1] = "Triple Coins"})
        print("Triple Coin Boost Checked")
    end
  end
end
end)

----------

section2:addButton("Click ME!", function(idiota)
    require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("You are such a \nIDIOT XDD.")
    wait(1)
    while true do
    while true do
    end
    end
end)

------------------
-- Misc



misc1:addButton("Better Search", function(bettersearchmessage)
    require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New("Better Search Loaded \nNow you can use type: \n- Pet Name \n- Pet Nickname \n- Pet Rarity (Exclusive, Mythical, Legendary, Epic, Rare, Basic) \n- Pet Type (Dark Natter, Rainbow, Gold and Normal \n- Enchants like Royalty etc")
    print("Pet Counter Loaded")
    loadstring(game:HttpGet('https://pastebin.com/raw/JUEtgq95'))()
end)

------------------

misc1:addButton("Pet Counter", function(petcountermessage)
    print("Pet Counter Loaded")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KrystekYTpv/PSXpv/main/petcounter.lua", true))()
    if petcountermessage then
        venyx:Notify("Pet Counter Started", "Click F9 to check counted pets")
    end
end)

-------------------------------------------------------------------------------------------------
--page2

local pathToScript = game.Players.LocalPlayer.PlayerScripts.Scripts.Game['Open Eggs']
local oldFunc = getsenv(pathToScript).OpenEgg

eggs1:addToggle("Remove Egg Animation", false, function(delanimation)
    if delanimation == true then 
        getsenv(pathToScript).OpenEgg = function() return end 
    else
        getsenv(pathToScript).OpenEgg = oldFunc
    end 
end)

-------------------------------------------------------------------------------------------------

eggs1:addToggle("Triple Egg Gamepass", false, function(triplegamepass)

if triplegamepass == true then
    _G.TripleEgg = true
elseif triplegamepass == false or destroygui then
    _G.TripleEgg = false
    end
end)

_G.TripleEgg = false

-------------------------------------------------------------------------------------------------

local Eggs = {} 
for i,v in pairs(game.ReplicatedStorage.Game.Eggs:GetChildren()) do 
    for i2,v2 in pairs(v:GetChildren()) do 
        table.insert(Eggs, v2.Name)
    end 
end

eggs1:addDropdown("Select Egg", Eggs, function(eggor)
    if eggor then
        _G.Egg = eggor
    end
    --print("Text: ", eggor)
    --print("_G.Egg: ", _G.Egg)
end)
----------------------------

eggs1:addToggle("Auto Open Egg", false, function(dropegg)
shared.toggle3drop = dropegg
end)
local openeegg = eggor
game:GetService("RunService").RenderStepped:connect(function()
if shared.toggle3drop then
    --print("Egg: ", _G.Egg)
    --print("Triple Egg GamePasse: ", _G.TripleEgg)
    local ohTable1 = {
    	[1] = _G.Egg,
    	[2] = _G.TripleEgg
    }
    workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer(ohTable1)
    wait(0.5)
    end
end)


-------------------------------------------------------------------------------------------------
--Pets


local GameLibrary = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local IDToName = {}
local NameToID = {}
local PettoRarity = {}
local RarityTable = {}
local PetNamesTable = {}
local PetNamesTable = {}

for i,v in pairs(GameLibrary.Directory.Pets) do
    IDToName[i] = v.name
    NameToID[v.name] = i
    PettoRarity[i] = v.rarity
    if not table.find(RarityTable, v.rarity) then
        table.insert(RarityTable, v.rarity)
    end
    table.insert(PetNamesTable, v.name)
end


--fuse
--local PetsList = {'Vampire Bat', 'Werewolf'}
pets1:addDropdown("Select Pet", PetNamesTable, function(petfunc)
    if petfunc then
        _G.SelectedPet = petfunc
        _G.FuseList = {
            {
                [_G.SelectedPet] = _G.PetCount or 3;
            };
        }
    end
    print("Selected Pet: ",  _G.SelectedPet)
end)
------------------------------------------
local TypeList = {'Normal', 'Gold', 'Rainbow'}
pets1:addDropdown("Select Type", TypeList, function(typefunc)
if typefunc then
    _G.Type = typefunc
end
print("Selected Type: ", _G.Type)
end)
------------------------------------------
pets1:addSlider("Select Count", 3, 3, 12, function(countfusefunc)
if countfusefunc then
    _G.PetCount = countfusefunc
    _G.FuseList = {
        {
            [_G.SelectedPet] = _G.PetCount or 3;
        };
    }end
--print("Selected Count: ", _G.PetCount)
end)
------------------------------------------
pets1:addToggle("Auto Fuse Selected", false, function(autofusefunc)
if autofusefunc == true then
    _G.Enabled = true
    print("_G.Enabled: ", _G.Enabled)
    print("Selected Count: ", _G.PetCount)
    print("Selected Type: ", _G.Type)
    print("Selected Pet: ", _G.SelectedPet)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYTpv/PSXpv/main/autofuse.lua'))() -- runs script as I use while wait and _G.enabled so loop ends when _G.enabled is false
elseif autofusefunc == false then
    _G.Enabled = false
    print("_G.Enabled: ", _G.Enabled)
end
--Set globals so script doesn't error--
_G.Enabled = false
_G.Type = "Rainbow"
_G.FuseList = {{}}
end)
---------------------------------------
--auto gold/rainbow

pets2:addSlider("Select Count", 0, 1, 6, function(countcombinefunc)
    if countcombinefunc then
        _G.CountCombineFunc1 = countcombinefunc
    end
    --print("Selected Combine Count: ", _G.CountCombineFunc1)
end)

------------------------------------------

pets2:addToggle("Gold", false, function(togglegoldfunc)
    
if togglegoldfunc == true then
    _G.ToggleGold = true
elseif togglegoldfunc == false then
    _G.ToggleGold = false
end
end)


pets2:addToggle("Rainbow", false, function(toggleraibowfunc)
    
if toggleraibowfunc == true then
    _G.ToggleRainbow = true
elseif toggleraibowfunc == false then
    _G.ToggleRainbow = false
end
end)

---------------------------------------

--pets2:addToggle("Allow Mythical", false, function(allowmythicalfunc)
    
--_G.AllowMythicals = false

--if allowmythicalfunc == true then
--    _G.AllowMythicals = true
--elseif allowmythicalfunc == false then
--    _G.AllowMythicals = false
--end
--end)

---------------------------------------

pets2:addToggle("Start Auto Gold/Rainbow", false, function(autocombinefunc)
    
if autocombinefunc == true then
    _G.AutoCom = true
elseif autocombinefunc == false then
    _G.AutoCom = false
end

while wait() and _G.AutoCom do
    for i, v in pairs(GetPets()) do
        if #v >= _G.CountCombineFunc1 and _G.AutoCom then
            if string.find(i, "Normal") and _G.AutoCom and _G.ToggleGold then
                local Args = {}
                for eeeee = 1, _G.CountCombineFunc1 do
                    Args[#Args+1] = v[#Args+1]
                end
                Library.Network.Invoke("use golden machine", Args)

            elseif string.find(i, "Gold") and _G.AutoCom and _G.ToggleRainbow then
                local Args = {}
                for eeeee = 1, _G.CountCombineFunc1 do
                    Args[#Args+1] = v[#Args+1]
                end
                Library.Network.Invoke("use rainbow machine", Args)
            end
        end
    end
end

--spawn(function()
--    while wait() and _G.AutoCom do
--        if not _G.ToggleGold and not _G.ToggleRainbow then 
--            repeat wait(1) until _G.ToggleGold or _G.ToggleRainbow
--        end
--        if tonumber(_G.CountCombineFunc1) == nil then
--            repeat wait() until tonumber(_G.CountCombineFunc1) ~= nil
--        end
--        for i, v in pairs(GetPets()) do
--            if #v >= _G.CountCombineFunc1 and (_G.ToggleGold or _G.ToggleRainbow) then
--                if string.find(i, "Normal") and _G.ToggleGold then
--                    local Args = {}
--                    for eeeee = 1, _G.CountCombineFunc1 do
--                        Args[#Args+1] = v[#Args+1]
--                    end
--                    GameLibrary.Network.Invoke("use golden machine", Args)
--                elseif string.find(i, "Gold") and _G.ToggleRainbow then
--                    local Args = {}
--                    for eeeee = 1, _G.CountCombineFunc1 do
--                        Args[#Args+1] = v[#Args+1]
--                    end
--                    GameLibrary.Network.Invoke("use rainbow machine", Args)
--                end
--            end
--        end
--    end
--end)
end)

---------------------------------------------------
--enchanting

--local EnchantsList = {
--    'Magnet',
--    'Royalty',
--    'Glittering',
--    'Tech Coins',
--    'Fantasy Coins',
--    'Coins',
--    'Teamwork',
--    'Diamonds',
--    'Strength',
--    'Chests',
--    'Presents',
--    'Agility',
--    'Charm'
--}
--
--pets3:addDropdown("Select Enchant", EnchantsList, function(selectenchantfunc)
--    if selectenchantfunc then
--        _G.SelEnchant1 = selectenchantfunc
--    end
--    print("Selected Enchant: ", _G.SelEnchant1)
--end)
--
---------------------------
--
--local EnchantLevel = {1, 2, 3, 4, 5}
--pets3:addDropdown("Select Level", EnchantLevel, function(selectnumlevel)
--    if selectnumlevel then
--        _G.SelLevel1 = selectnumlevel
--    end
--    print("Selected Level: ", _G.SelLevel1)
--end)
--
---------------------------
--
--pets3:addButton("Start Enchant Equiped", function()
--
--_G.SelEnchant1 = 'Tech Coins'
--_G.SelLevel1 = 5
--_G.EMERGENCYSTOP = false
--
--local Wanted = {
--[_G.SelEnchant1] = _G.SelLevel1 or 1;
--}
--
--local PettoRarity = {}
--local a = require(game:GetService("ReplicatedStorage").Framework.Modules["1 | Directory"].Pets["Grab All Pets"])
--for i, v in pairs(a) do
--PettoRarity[i] = v.rarity
--end
--
--function GetPetTable(PetUID)
--local Library = require(game:GetService("ReplicatedStorage").Framework.Library)
--for i, v in pairs(Library.Save.Get().Pets) do
--    if v.uid == PetUID then
--        return v
--    end
--end
--end
--workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "enchant pet")
--wait(0.5)
--local Library = require(game:GetService("ReplicatedStorage").Framework.Library)
--for i, v in pairs(Library.Save.Get().Pets) do
--if v.e and PettoRarity[v.id] ~= 'Mythical' and not _G.EMERGENCYSTOP then
--    local haspower = false
--    repeat wait()
--        if GetPetTable(v.uid).powers then
--            for a, b in pairs(GetPetTable(v.uid).powers) do
--                warn(b[1], b[2])
--                print(Wanted[b[1]])
--                if Wanted[b[1]] ~= nil and not haspower and not _G.EMERGENCYSTOP then
--                    if Wanted[b[1]] <= b[2] then
--                        haspower = true
--                        warn("Pet", v.uid, "has", b[1], b[2])
--                    end
--                end
--            end
--            if not haspower and not _G.EMERGENCYSTOP then
--                print("Yea we kinda need new enchantments on", v.uid)
--
--                workspace.__THINGS.__REMOTES["enchant pet"]:InvokeServer({[1] = v.uid})
--                wait(0.1)
--            end
--        else
--            warn("taking", v.uid,'\'s enchanting virginity lol')
--            workspace.__THINGS.__REMOTES["enchant pet"]:InvokeServer({[1] = v.uid})
--            wait(0.1)
--        end
--    until haspower == true or Library.Save.Get().Diamonds < 10000 or _G.EMERGENCYSTOP
--end
--end
--
----loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYT/PetSimulatorX/main/autoenchant.lua'))()
--end)
-------------------------

--pets3:addButton("FORCE STOP ENCHANT", function(emergstop)
--    if emergstop then
--        _G.EMERGENCYSTOP = true
--    end
--    print("Emergency Enchant Stop")
--end)




-------------------------------------------------------------------------------------------------
--Dark Matter

pets4:addButton("Remaining Time Check", function()
        local PetList = {}
        for i,v in pairs(GameLibrary.Directory.Pets) do
        PetList[i] = v.name
        end

        local returnstring = ""
        for i,v in pairs(GameLibrary.Save.Get().DarkMatterQueue) do
            local timeleft = 'Done!'
            if math.floor(v.readyTime - os.time()) > 0 then
                timeleft = SecondsToClock(math.floor(v.readyTime - os.time()))
            end
            local stringthing = PetList[v.petId] .." will be ready in: ".. timeleft
            returnstring = returnstring .. stringthing .. "\n"
        end
        require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Message"]).New(returnstring)
end)


-------------------------------

pets4:addDropdown("Select Pet", PetNamesTable, function(value)
    
if value then
    _G.NameOfPet = value
end
print("Name Of Writed Pet", value)
end)

-------------------------------

pets4:addSlider("Select Dark Matter Count", 0, 1, 6, function(countdarkmatterfunc)
    if countdarkmatterfunc then
        _G.CountDarkMatterFunc1 = countdarkmatterfunc
    end
    --print("Selected Dark Matter Count: ", _G.CountDarkMatterFunc1)
end)


-------------------------------

pets4:addToggle("Auto Make Dark Matters", false, function(automakedarkmatters)
    
if automakedarkmatters == true then
    _G.AutoMakeDarkMatter = true
elseif automakedarkmatters == false then
    _G.AutoMakeDarkMatter = false
end
    

    while task.wait() and _G.AutoMakeDarkMatter do
        local Save = GameLibrary.Save.Get()
        local Slots = Save.DarkMatterSlots
        local Queued = 0
        for a, b in pairs(Save.DarkMatterQueue) do
            Queued = Queued + 1 
        end
        local Slots = Slots - Queued
        for count = 1, Slots do
            if Slots - count >= 0 then
                local PetList = {}
                for i,v in pairs(GameLibrary.Save.Get().Pets) do
                    if #PetList < _G.CountDarkMatterFunc1 and v.r and IDToName[v.id] == _G.NameOfPet then
                        table.insert(PetList, v.uid)
                    end
                end
                if #PetList >= _G.CountDarkMatterFunc1 then
                    local tablething = {[1] = {}}
                    for eeek = 1, _G.CountDarkMatterFunc1 do
                        tablething[1][eeek] = PetList[eeek]
                    end
                    workspace.__THINGS.__REMOTES["convert to dark matter"]:InvokeServer(tablething)
                end
            end 
        end
        task.wait(15)
    end
end)

-------------------------------
pets4:addToggle("Auto Claim Dark Matters", false, function(autoclaimdark)

if autoclaimdark == true then
    _G.AutoClaimDarkMatter = true
elseif autoclaimdark == false then
    _G.AutoClaimDarkMatter = false
end
    
spawn(function()
    while task.wait() and _G.AutoClaimDarkMatter do
        for i,v in pairs(GameLibrary.Save.Get().DarkMatterQueue) do
            if math.floor(v.readyTime - os.time()) < 0 then
                workspace.__THINGS.__REMOTES["redeem dark matter pet"]:InvokeServer({[1] = i})
            end
            end
        task.wait(15)
    end
end)
end)


-------------------------------------------------------------------------------------------------
--page3


misc1:addToggle("Auto Collect Rewards", false, function(autorewards)

if autorewards == true then
    _G.AutoRewards1 = true
elseif autorewards == false then
    _G.AutoRewards1 = false
end

while task.wait() and _G.AutoRewards1 do
	workspace.__THINGS.__REMOTES["redeem vip rewards"]:InvokeServer({})
	workspace.__THINGS.__REMOTES["redeem rank rewards"]:InvokeServer({})			
end

		
--shared.toggle3rewards = rewards
--game:GetService("RunService").RenderStepped:connect(function()
--if shared.toggle3rewards then
--    workspace.__THINGS.__REMOTES["redeem vip rewards"]:InvokeServer({})
--    workspace.__THINGS.__REMOTES["redeem rank rewards"]:InvokeServer({})
--end


--if shared.toggle3rewards == true then
    --if game:GetService("Workspace")["__MAP"].Interactive["Rank Rewards"].Pad.BillboardGui.Timer.Text == "Redeem!" and game:GetService("Workspace")["__MAP"].Interactive["Rank Rewards"].Pad.BillboardGui.Timer.Text == "Redeem!"  then
    --local Library = require(game:GetService("ReplicatedStorage").Framework.Library)
    --Library.Network.Invoke("redeem rank rewards", {})
    --end
    --end
end)


-------------------------------------------------------------------------------------------------


misc1:addToggle("Give GamePasses", false, function(gamepasses)
shared.toggle3gamepasses = gamepasses
game:GetService("RunService").RenderStepped:connect(function()
if shared.toggle3gamepasses then
    local main = debug.getupvalues(require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library")).Save.Get)[2][game.Players.LocalPlayer].save.Gamepasses
		table.insert(main,18674296)
		table.insert(main,18674298)
		table.insert(main,18674321)
		table.insert(main,21176989)
		table.insert(main,21583760)
		table.insert(main,21641016)
		table.insert(main,22596039)
		table.insert(main,18674307)
    end
end)
end)
-------------------------------------------------------------------------------------------------

misc1:addButton("Stats Tracker", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/dPXXyp4A'))()
    print("Stats Tracker Loaded")
end)

-------------------------------------------------------------------------------------------------

misc1:addButton("Anti Afk", function()
print("Anti Afk Loaded")
local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("lol bad exploit")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end

local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
end)
-------------------------------------------------------------------------------------------------

local function ByeLAG()
        game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Coin Rewards HUD"].Disabled = true
        local a = game:GetService("Workspace")["__DEBRIS"]
        local b = a:Clone()
        b.Parent = a.Parent
        a:Destroy()
        for _,v in pairs(b:GetChildren()) do
            if v.Name == 'RewardBillboard' then
                v:Destroy()
            end
        end
        if game:GetService("Players").LocalPlayer.PlayerGui.Settings.Frame.Container.ShowOtherPets.Toggle.Label.Text == "Yes" then 
            workspace.__THINGS.__REMOTES["toggle setting"]:FireServer({[1] = "ShowOtherPets"})
        end
    end

misc1:addButton("Lag Reduction", function(AutoAntiLag)
    if AutoAntiLag then
        ByeLAG()
    end
    print("Lag Reduction Loaded")
end)

-------------------------------------------------------------------------------------------------

misc1:addButton("Ultra Lag Reducer | Dont use to play", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYTpv/PSXpv/main/ultrafpsboost.lua'))()
    print("Ultra Lag Reducer Loaded")
end)

-------------------------------------------------------------------------------------------------
--Remote Things
misc2:addButton("Pet Collection", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Collection.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Collection.Enabled
end)

misc2:addButton("Fuse Pets", function()
    game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled
end)

misc2:addButton("Gold Machine", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled
end)

misc2:addButton("Rainbow Machine", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled
end)

misc2:addButton("Dark Matter Machine", function()
    game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled
end)

misc2:addButton("Merchant", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled
end)

misc2:addButton("Enchant", function()
    game:GetService("Players").LocalPlayer.PlayerGui.EnchantPets.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.EnchantPets.Enabled
end)

misc2:addButton("Spooky Upgrades", function()
    game:GetService("Players").LocalPlayer.PlayerGui.SpookyUpgrades.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.SpookyUpgrades.Enabled
end)

-------------------------------------------------------------------------------------------------
--Troll Page

troll1:addButton("Visual Dupe Gems", function()
function comma_value(amount)
  local formatted = amount
  while true do  
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
    if (k == 0) then
      break
    end
  end
  return formatted
end

local diamonds = game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount
local old = diamonds.Text
local oldNumber = string.gsub(old, ",", "")
local newNumber = oldNumber * 2
local new = comma_value(newNumber)
local newString = tostring(new)
diamonds.Text = newString
end)


-------------------------------------------------------------------------------------------------
for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
Settings2:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end
-------------------------------------------------------------------------------------------------


-- load
venyx:SelectPage(venyx.pages[1], true)
