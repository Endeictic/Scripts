-------------------[[ M A J O R    U I ]]-------------------
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Endeictic's Entity spawner", colors)
warn("B) --Made by Endeictic")

--[[
Themes:
    LightTheme,
    DarkTheme,
    GrapeTheme,
    BloodTheme,
    Ocean,
    Midnight,
    Sentinel,
    Synapse,
    colors.
I made this using the Documentary.]]

-------------------[[ M A I N    S P A W N I N G ]]-------------------
local Main = Window:NewTab("Custom Entities")
local MainSection = Main:NewSection("Custom")
MainSection:NewLabel("NK means Non-Killable, K means Killable")

MainSection:NewButton("Spawn Ghastly Ambush (NK)", "Spawns Ghastly Ambush", function()
    wait(1)
    local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

    local entity = Creator.createEntity({
        CustomName = "Ghastly Ambush", -- Custom name of your entity
        Model = "https://github.com/Endeictic/anIntermediateDoorsEntities/blob/main/GhastlyAmbush.rbxm?raw=true",
        Speed = 325,
        DelayTime = 5,
        HeightOffset = 0,
        CanKill = false,
        BreakLights = true,
        FlickerLights = {
            false,
            2,
        },
        Cycles = {
            Min = 3,
            Max = 3,
            WaitTime = 3,
        },
        CamShake = {
            true,
            {3.21, 15, 0.1, 1},
            100,
        },
    })

    Creator.runEntity(entity)
end)

-------------------[[ R O O M S ]]-------------------

RoomSection = Main:NewSection("Rooms")

RoomSection:NewButton("Spawn A-200 (NK)", "Spawns A-200", function()
wait(2)
 local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

    local entity = Creator.createEntity({
        CustomName = "200", -- Custom name of your entity
        Model = 11436355542,
        Speed = 700, -- Percentage, 100 = default Rush speed
        DelayTime = 6, -- Time before starting cycles (seconds)
        HeightOffset = 0,
        CanKill = false,
        BreakLights = false, --noice
        FlickerLights = {
            false, -- Enabled
            5, -- Time (seconds)
        },
        Cycles = {
            Min = 2,
            Max = 2,
            WaitTime = 0,
        },
        CamShake = {
            true, -- Enabled
            {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
            1, -- Shake start distance (from Entity to you)
        },
        Jumpscare = {
            false, -- Enabled ('false' if you don't want jumpscare)
            {
                Image1 = "https://www.roblox.com/library/11183955957", -- Image1 url
                Image2 = "https://www.roblox.com/library/10840932468", -- Image2 url
                Shake = true,
                Sound1 = { 
                   11400679305, -- SoundId
                    { Volume = 1 }, -- Sound properties
                },
                Sound2 = {
                    10483837590, -- SoundId
                    { Volume = 0 }, -- Sound properties
                },
                Flashing = {
                    false, -- Enabled
                    Color3.fromRGB(235, 13, 13), -- Color
                },
                Tease = {
                    true, -- Enabled ('false' if you don't want tease)
                    Min = 1,
                    Max = 3,
                },
            },
        },
    })
    
    ------------------------
    
    -- Run the created entity
    Creator.runEntity(entity)
end)
RoomSection:NewButton("A-60 (NK)","Does the a-60", function()
    wait(2)
    local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
   
       local entity = Creator.createEntity({
           CustomName = "60", -- Custom name of your entity
           Model = 11439503806,
           Speed = 1200, -- Percentage, 100 = default Rush speed
           DelayTime = 6, -- Time before starting cycles (seconds)
           HeightOffset = 0,
           CanKill = false,
           BreakLights = false,
           FlickerLights = {
               false, -- Enabled
               5, -- Time (seconds)
           },
           Cycles = {
               Min = 1,
               Max = 1,
               WaitTime = 0,
           },
           CamShake = {
               true, -- Enabled
               {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
               1, -- Shake start distance (from Entity to you)
           },
           Jumpscare = {
               false, -- Enabled ('false' if you don't want jumpscare)
               {
                   Image1 = "https://www.roblox.com/library/11401298618/bacon-but-not-as-mad", -- Image1 url
                   Image2 = "https://www.roblox.com/library/11401297072/Bacon", -- Image2 url
                   Shake = false,
                   Sound1 = { 
                      11400679305, -- SoundId
                       { Volume = 1 }, -- Sound properties
                   },
                   Sound2 = {
                       10483837590, -- SoundId
                       { Volume = 0 }, -- Sound properties
                   },
                   Flashing = {
                       false, -- Enabled
                       Color3.fromRGB(70, 25, 0), -- Color
                   },
                   Tease = {
                       false, -- Enabled ('false' if you don't want tease)
                       Min = 1,
                       Max = 1,
                   },
               },
           },
       })
       
       ------------------------
       
       -- Run the created entity
       Creator.runEntity(entity)
   end)

-------------------[[ R E G U L A R    E N T I T I E S ]]-------------------

local Real = Window:NewTab("Regular Entities")
local RealSection = Real:NewSection("Regular Entities")

RealSection:NewButton("Ambush", "Spawns Ambush", function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/sponguss/storage/main/entitySpawner.lua")().createEntity("Ambush")
 
local tb=entityTable["Ambush"]
tb.Speed=120
tb.Sounds={"PlaySound", "Footsteps"}
tb.Model="https://github.com/sponguss/storage/raw/main/newambush.rbxm"
tb.Ambush.Enabled=true
tb.WaitTime=2.5
 
loadstring(game:HttpGet"https://raw.githubusercontent.com/sponguss/storage/main/entitySpawner.lua")().runEntity("Ambush")
end)

RealSection:NewButton("Halt", "Spawns Halt", function()
    require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)

RealSection:NewButton("Screech", "Spawns Screech", function()
require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)

RealSection:NewButton("Glitch", "Spawns Glitch", function()
    require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)

RealSection:NewButton("Timothy", "Timothy Jumspcare", function()
    local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
require(a.RemoteListener.Modules.SpiderJumpscare)(require(a), workspace.CurrentRooms["0"].Assets.Dresser.DrawerContainer, 0.2)
end)

RealSection:NewButton("Red Room", "Makes the current room bloody (no jack)", function()
    local v1 = require(game.ReplicatedStorage.ClientModules.Module_Events)
local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
local seconds = 1000000 -- Change to how long the blood room will last.
v1.tryp(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], seconds)
end)

RealSection:NewButton("Flicker Lights", "Makes light scary", function()
local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Template Entity", -- Custom name of your entity
    Model = "https://github.com/RegularVynixu/Utilities/blob/main/Doors%20Entity%20Spawner/Models/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 0, -- Percentage, 100 = default Rush speed
    DelayTime = 0, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    BreakLights = false,
    FlickerLights = {
        true, -- Enabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        false, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                0, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                0, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message (can be as long as you want)
})
------------------------

-- Run the created entity
Creator.runEntity(entity)
end)

--[[RealSection:NewLabel("Jack always appears in wardrobes/closets.")
RealSection:NewLabel("Don't tell me I didnt warn ya..")]]--

RealSection:NewButton("Jack", "Jack being sussy", function()
    workspace.CurrentRooms.ChildAdded:Connect(function()
    local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local config={
    Image="http://www.roblox.com/asset/?id=10814179672", -- Could also be "image.png"
    Sound="rbxassetid://11350126934", -- Could also be "file.mp3"
    EntityName="Jack" -- Make sure to change if you mod the image/sound to prevent overlapping
}
local ReSt = game:GetService("ReplicatedStorage")

local ModuleScripts = {
    ModuleEvents = require(ReSt.ClientModules.Module_Events),
}

local function connectClosetJack(wardrobes, room, bool)
    for _, wardrobe in pairs(wardrobes) do
        if not game:GetService("ReplicatedStorage"):FindFirstChild("closetAnim") then 
            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://9460435404"
            anim.Name="closetAnim"
            anim.Parent=game:GetService("ReplicatedStorage")
        end
        if not game:GetService("ReplicatedStorage"):FindFirstChild("JackModel") then
            if not isfile(config.EntityName..".txt") then writefile(config.EntityName..".txt", game:HttpGet("https://github.com/sponguss/storage/raw/real/realisticClosetJack.rbxm?raw=true")) end
            local a=game:GetObjects((getcustomasset or getsynasset)(config.EntityName..".txt"))[1]
            a.Name="JackModel"
            a.Parent=game:GetService("ReplicatedStorage")
        end
        game:GetService("ReplicatedStorage").JackModel.Sound.SoundId=(isfile(config.Sound) and (getcustomasset or getsynasset)(config.Sound) or config.Sound)
        game:GetService("ReplicatedStorage").JackModel.Root.Beam.Texture=(isfile(config.Image) and (getcustomasset or getsynasset)(config.Image) or config.Image)
        local prompt = wardrobe:WaitForChild("HidePrompt", 1)
        if not prompt and wardrobe:FindFirstChild("fakePrompt") then return end
    
        if prompt then
            -- Fake prompt
    
            local fakePrompt = prompt:Clone()
            
            if bool then prompt:Destroy() else prompt.Enabled=false end
            fakePrompt.Parent = wardrobe
            fakePrompt.Name="fakePrompt"
            
            local connection; connection = fakePrompt.Triggered:Connect(function()
                if not bool then connection:Disconnect() end
                local model=game:GetService("ReplicatedStorage").JackModel:Clone()
    
                if model and not wardrobe:FindFirstChild(model.Name) then
                    model:SetPrimaryPartCFrame(wardrobe.Main.CFrame)
                    model.Parent = workspace
    
                    -- Animation setup
                    local anim = wardrobe.AnimationController:LoadAnimation(game:GetService("ReplicatedStorage").closetAnim)
    
                    -- Scare
                    
                    ModuleScripts.ModuleEvents.flickerLights(room, 1.664)
                    anim:Play()
                    model.Sound:Play()
    
                    -- Destroy
    
                    task.wait(1)
                    
                    model:Destroy()
                    if not bool then prompt.Enabled = true end
                    if not bool then fakePrompt:Destroy() end
    
                    if not bool then connection:Disconnect() end
                end
            end)
        end
    end
end

local wardrobes = {}
for _, wardrobe in pairs(workspace.CurrentRooms[LatestRoom.Value].Assets:GetChildren()) do
    if wardrobe.Name=="Wardrobe" then
        table.insert(wardrobes, wardrobe)
    end
end

if wardrobes[1] then
    connectClosetJack(wardrobes, workspace.CurrentRooms[LatestRoom.Value], false) -- 'true' for jack to appear every time
end
end)
end)

-------------------[[ K E Y B I N D S ]]-------------------

local Keybinds = Window:NewTab("Keybinds")
local KeybindsSection = Keybinds:NewSection("Keybinds")

KeybindsSection:NewLabel("Currently W.I.P.")

KeybindsSection:NewKeybind("Summon Screech", "Summons Screech", Enum.KeyCode.KeypadNine, function()
	    require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)


-------------------[[ C H A R A C T E R    C U S T O M I Z E R ]]-------------------
local CharCustom = Window:NewTab("Character Customizer")
local CharCustomSection = CharCustom:NewSection("Customizer")

CharCustomSection:NewSlider("Walkspeed", "Sets the player's Walkspeed", 100, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


-------------------[[ O T H E R ]]-------------------
    
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewKeybind("Toggle UI Keybind", "Toggles the UI", Enum.KeyCode.K, function()
	Library:ToggleUI()
end)

OtherSection:NewButton("Doors script V4", "Opens doors script V4", function()
loadstring(game:HttpGet("https://pastebin.com/raw/rysGLM7U"))()
end)
OtherSection:NewButton("Doors Vynixu script", "Vynixu Script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
end)
OtherSection:NewButton("Infinite yield", "Executes Infinite Yield", function()
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()  
    end)

    local Credits = Window:NewTab("Credits")
    local CreditSection = Credits:NewSection("Credits")
    CreditSection:NewLabel("Kavo - UI Library")
	CreditSection:NewLabel("Endeictic - Making UI")
	CreditSection:NewLabel("Endeictic - Tester")

local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
