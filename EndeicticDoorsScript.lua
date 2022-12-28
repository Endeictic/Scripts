--[[ U I ]]--

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Versionz = "1"

local Window = OrionLib:MakeWindow({Name = "Codedead Endeictic // Version " .. Versionz, HidePremium = false, SaveConfig = true, ConfigFolder = "EndeicticDoors", IntroText = "Codedead Endeictic", IntroIcon = "rbxassetid://11372924961"})

if game.PlaceId == 6516141723 then
    OrionLib:MakeNotification({
        Name = "Warning",
        Content = "Make sure you execute this in Game.",
        Time = 2
    })
end

-------------------[[ E N T I T I E S ]]-------------------

local EntitiesTab = Window:MakeTab({
	Name = "Custom Entities",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local EntitiesSection = EntitiesTab:AddSection({
	Name = "Custom Entities"
})

EntitiesTab:AddButton({
	Name = "Spawn Trollface",
	Callback = function()
		local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

		-- Create entity
		local entity = Creator.createEntity({
			CustomName = "Trollface", -- Custom name of your entity
			Model = "https://github.com/Endeictic/anIntermediateDoorsEntities/blob/main/Trollface.rbxm?raw=true", -- Can be GitHub file or rbxassetid
			Speed = 400, -- Percentage, 100 = default Rush speed
			DelayTime = 1, -- Time before starting cycles (seconds)
			HeightOffset = 0,
			CanKill = false,
			KillRange = 50,
			BreakLights = true,
			BackwardsMovement = false,
			FlickerLights = {
				true, -- Enabled/Disabled
				2, -- Time (seconds)
			},
			Cycles = {
				Min = 999,
				Max = 999,
				WaitTime = 0.01,
			},
			CamShake = {
				true, -- Enabled/Disabled
				{5, 100, 0.1, 1}, -- Shake values (don't change if you don't know)
				150, -- Shake start distance (from Entity to you)
			},
			Jumpscare = {
				false, -- Enabled/Disabled
				{
					Image1 = "rbxassetid://6862780932", -- Image1 url
					Image2 = "rbxassetid://6732849355", -- Image2 url
					Shake = true,
					Sound1 = {
						7184496276, -- SoundId
						{ Volume = 1 }, -- Sound properties
					},
					Sound2 = {
						6702619371, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Flashing = {
						true, -- Enabled/Disabled
						Color3.fromRGB(255, 255, 255), -- Color
					},
					Tease = {
						true, -- Enabled/Disabled
						Min = 1,
						Max = 4,
					},
				},
			},
			CustomDialog = {"Uh...", "Alright."}, -- Custom death message
		})

		-----[[ Advanced ]]-----
		entity.Debug.OnEntitySpawned = function(entityTable)
			print("Entity has spawned:", entityTable.Model)
		end

		entity.Debug.OnEntityDespawned = function(entityTable)
			print("Entity has despawned:", entityTable.Model)
		end

		entity.Debug.OnEntityStartMoving = function(entityTable)
			print("Entity has started moving:", entityTable.Model)
		end

		entity.Debug.OnEntityFinishedRebound = function(entityTable)
			print("Entity has finished rebound:", entityTable.Model)
		end

		entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
			print("Entity:", entityTable.Model, "has entered room:", room)
		end

		entity.Debug.OnLookAtEntity = function(entityTable)
			print("Player has looked at entity:", entityTable.Model)
		end

		entity.Debug.OnDeath = function(entityTable)
			warn("Player has died.")
		end
		------------------------

		-- Run the created entity
		Creator.runEntity(entity)
			end
})

EntitiesTab:AddButton({
	Name = "Spawn Bald Kreekcraft",
	Callback = function()
		local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

		-- Create entity
		local entity = Creator.createEntity({
			CustomName = "Bald Kreek", -- Custom name of your entity
			Model = "https://github.com/Endeictic/anIntermediateDoorsEntities/blob/main/BaldKreek.rbxm?raw=true", -- Can be GitHub file or rbxassetid
			Speed = 400, -- Percentage, 100 = default Rush speed
			DelayTime = 1, -- Time before starting cycles (seconds)
			HeightOffset = 0,
			CanKill = false,
			KillRange = 50,
			BreakLights = true,
			BackwardsMovement = false,
			FlickerLights = {
				true, -- Enabled/Disabled
				2, -- Time (seconds)
			},
			Cycles = {
				Min = 1,
				Max = 1,
				WaitTime = 0.01,
			},
			CamShake = {
				true, -- Enabled/Disabled
				{5, 100, 0.1, 1}, -- Shake values (don't change if you don't know)
				150, -- Shake start distance (from Entity to you)
			},
			Jumpscare = {
				false, -- Enabled/Disabled
				{
					Image1 = "rbxassetid://6862780932", -- Image1 url
					Image2 = "rbxassetid://6732849355", -- Image2 url
					Shake = true,
					Sound1 = {
						7184496276, -- SoundId
						{ Volume = 1 }, -- Sound properties
					},
					Sound2 = {
						6702619371, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Flashing = {
						true, -- Enabled/Disabled
						Color3.fromRGB(255, 255, 255), -- Color
					},
					Tease = {
						true, -- Enabled/Disabled
						Min = 1,
						Max = 4,
					},
				},
			},
			--CustomDialog = {"Uh...", "Alright."}, Custom death message
		})

		-----[[ Advanced ]]-----
		entity.Debug.OnEntitySpawned = function(entityTable)
			print("Entity has spawned:", entityTable.Model)
		end

		entity.Debug.OnEntityDespawned = function(entityTable)
			print("Entity has despawned:", entityTable.Model)
		end

		entity.Debug.OnEntityStartMoving = function(entityTable)
			print("Entity has started moving:", entityTable.Model)
		end

		entity.Debug.OnEntityFinishedRebound = function(entityTable)
			print("Entity has finished rebound:", entityTable.Model)
		end

		entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
			print("Entity:", entityTable.Model, "has entered room:", room)
		end

		entity.Debug.OnLookAtEntity = function(entityTable)
			print("Player has looked at entity:", entityTable.Model)
		end

		entity.Debug.OnDeath = function(entityTable)
			warn("Player has died.")
		end
		------------------------

		-- Run the created entity
		Creator.runEntity(entity)
			end
})


EntitiesTab:AddButton({
	Name = "Spawn Scorbunny",
	Callback = function()
		local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

		-- Create entity
		local entity = Creator.createEntity({
  		  CustomName = "Scorbunny", -- Custom name of your entity
  		  Model = "https://github.com/Endeictic/anIntermediateDoorsEntities/blob/main/ScorBunny.rbxm?raw=true", -- Can be GitHub file or rbxassetid
  		  Speed = 100, -- Percentage, 100 = default Rush speed
  		  DelayTime = 2, -- Time before starting cycles (seconds)
  		  HeightOffset = 0,
  		  CanKill = false,
  		  KillRange = 50,
 		   BreakLights = true,
 		   BackwardsMovement = false,
  		  FlickerLights = {
   		     true, -- Enabled/Disabled
   		     1, -- Time (seconds)
  		  },
   		Cycles = {
   		    Min = 1,
    		Max = 1,
   		    WaitTime = 2,
  		},
    		CamShake = {
        		true, -- Enabled/Disabled
        		{3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        		100, -- Shake start distance (from Entity to you)
    		},
    		Jumpscare = {
        		true, -- Enabled/Disabled
        		{
            		Image1 = "rbxassetid://10483855823", -- Image1 url
            		Image2 = "rbxassetid://10483999903", -- Image2 url
            		Shake = true,
            		Sound1 = {
                		10483790459, -- SoundId
                		{ Volume = 0.5 }, -- Sound properties
            		},
            		Sound2 = {
                		10483837590, -- SoundId
                		{ Volume = 0.5 }, -- Sound properties
            		},
            		Flashing = {
                		true, -- Enabled/Disabled
                		Color3.fromRGB(0, 0, 255), -- Color
            		},
            		Tease = {
                		true, -- Enabled/Disabled
                		Min = 4,
                		Max = 4,
            		},
        		},
    		},
    		CustomDialog = {"You died to Gargitron", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
		})
		------------------------
		-- Run the created entity
		Creator.runEntity(entity)
		end,
})

EntitiesTab:AddButton({
	Name = "Spawn Ghastly Ambush",
	Callback = function()
			local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

			-- Create entity
			local entity = Creator.createEntity({
			CustomName = "Ghastly Ambush", -- Custom name of your entity
			Model = "https://github.com/Endeictic/anIntermediateDoorsEntities/blob/main/GhastlyAmbush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
			Speed = 300, -- Percentage, 100 = default Rush speed
			DelayTime = 2, -- Time before starting cycles (seconds)
			HeightOffset = 0,
			CanKill = false,
			KillRange = 25,
			BreakLights = true,
			BackwardsMovement = false,
			FlickerLights = {
				true, -- Enabled/Disabled
				1, -- Time (seconds)
			},
			Cycles = {
				Min = 2,
				Max = 6,
				WaitTime = 2,
			},
			CamShake = {
				true, -- Enabled/Disabled
				{3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
				100, -- Shake start distance (from Entity to you)
			},
			Jumpscare = {
				false, -- Enabled/Disabled
				{
					Image1 = "rbxassetid://10483855823", -- Image1 url
					Image2 = "rbxassetid://10483999903", -- Image2 url
					Shake = true,
					Sound1 = {
						10483790459, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Sound2 = {
						10483837590, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Flashing = {
						true, -- Enabled/Disabled
						Color3.fromRGB(0, 0, 255), -- Color
					},
					Tease = {
						true, -- Enabled/Disabled
						Min = 4,
						Max = 4,
					},
				},
			},
			CustomDialog = {"You died to who you call Ghastly Ambush...", "Abit 64"}, -- Custom death message
		})

		-----[[ Advanced ]]-----
		entity.Debug.OnEntitySpawned = function(entityTable)
			print("Entity has spawned:", entityTable.Model)
		end

		entity.Debug.OnEntityDespawned = function(entityTable)
			print("Entity has despawned:", entityTable.Model)
		end

		entity.Debug.OnEntityStartMoving = function(entityTable)
			print("Entity has started moving:", entityTable.Model)
		end

		entity.Debug.OnEntityFinishedRebound = function(entityTable)
			print("Entity has finished rebound:", entityTable.Model)
		end

		entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
			print("Entity:", entityTable.Model, "has entered room:", room)
		end

		entity.Debug.OnLookAtEntity = function(entityTable)
			print("Player has looked at entity:", entityTable.Model)
		end

		entity.Debug.OnDeath = function(entityTable)
			warn("Player has died.")
		end
		------------------------

		-- Run the created entity
		Creator.runEntity(entity)
		end,
})

EntitiesTab:AddButton({
	Name = "Spawn Pikachu (plamen6789)",
	Callback = function()
	local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

		-- Create entity
		local entity = Creator.createEntity({
  			CustomName = "Pikachu", -- Custom name of your entity
  			Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Pikachu.rbxm?raw=true", -- Can be GitHub file or rbxassetid
  			Speed = 255, -- Percentage, 100 = default Rush speed
  			DelayTime = 2, -- Time before starting cycles (seconds)
 			HeightOffset = 0,
 			CanKill = false,
  			KillRange = 50,
  			BreakLights = true,
  			BackwardsMovement = false,
  			FlickerLights = {
     		   true, -- Enabled/Disabled
     		   1, -- Time (seconds)
  			},
			Cycles = {
    		    Min = 1,
     		   Max = 1,
   		     WaitTime = 2,
 			},
   			CamShake = {
    		    true, -- Enabled/Disabled
   		    	{3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
   		    	100, -- Shake start distance (from Entity to you)
  			},
  		  Jumpscare = {
     		   true, -- Enabled/Disabled
     		   {
     		       Image1 = "rbxassetid://10483855823", -- Image1 url
      		      Image2 = "rbxassetid://10483999903", -- Image2 url
     		       Shake = true,
     		       Sound1 = {
        		        10483790459, -- SoundId
           		     { Volume = 0.5 }, -- Sound properties
       		     },
       		     Sound2 = {
         		       10483837590, -- SoundId
           		     { Volume = 0.5 }, -- Sound properties
        		    },
        		    Flashing = {
           		     true, -- Enabled/Disabled
        		        Color3.fromRGB(0, 0, 255), -- Color
       		     },
         		   Tease = {
         		       true, -- Enabled/Disabled
         		       Min = 4,
         		       Max = 4,
          		},
      		},
   		},
    CustomDialog = {"You died to Pikachu", "Well..", "Can you catch it with a pokéball?"}, -- Custom death message
})
------------------------
-- Run the created entity
Creator.runEntity(entity)
	end,
})

local EntitiesSection = EntitiesTab:AddSection({
	Name = "Regular Entities"
})

EntitiesTab:AddButton({
	Name = "Spawn Rush",
	Callback = function()
		local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

		-- Create entity
		local entity = Creator.createEntity({
  		  CustomName = "Rush", -- Custom name of your entity
  		  Model = "https://github.com/Johnny39871/assets/blob/main/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
  		  Speed = 100, -- Percentage, 100 = default Rush speed
  		  DelayTime = 2, -- Time before starting cycles (seconds)
  		  HeightOffset = 0,
  		  CanKill = false,
  		  KillRange = 25,
 		   BreakLights = true,
 		   BackwardsMovement = false,
  		  FlickerLights = {
   		     true, -- Enabled/Disabled
   		     1, -- Time (seconds)
  		  },
   		Cycles = {
   		    Min = 1,
    		Max = 1,
   		    WaitTime = 2,
  		},
    		CamShake = {
        		true, -- Enabled/Disabled
        		{3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        		100, -- Shake start distance (from Entity to you)
    		},
    		Jumpscare = {
        		true, -- Enabled/Disabled
        		{
            		Image1 = "rbxassetid://10483855823", -- Image1 url
            		Image2 = "rbxassetid://10483999903", -- Image2 url
            		Shake = true,
            		Sound1 = {
                		10483790459, -- SoundId
                		{ Volume = 0.5 }, -- Sound properties
            		},
            		Sound2 = {
                		10483837590, -- SoundId
                		{ Volume = 0.5 }, -- Sound properties
            		},
            		Flashing = {
                		true, -- Enabled/Disabled
                		Color3.fromRGB(0, 0, 255), -- Color
            		},
            		Tease = {
                		true, -- Enabled/Disabled
                		Min = 4,
                		Max = 4,
            		},
        		},
    		},
    		CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
		})
		------------------------
		-- Run the created entity
		Creator.runEntity(entity)
		end,
})

EntitiesTab:AddButton({
	Name = "Spawn Ambush",
	Callback = function()
			local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

		-- Create entity
		local entity = Creator.createEntity({
			CustomName = "Ambush", -- Custom name of your entity
			Model = "https://github.com/RegularVynixu/Utilities/blob/main/Doors%20Entity%20Spawner/Models/Ambush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
			Speed = 300, -- Percentage, 100 = default Rush speed
			DelayTime = 2, -- Time before starting cycles (seconds)
			HeightOffset = 0,
			CanKill = false,
			KillRange = 25,
			BreakLights = true,
			BackwardsMovement = false,
			FlickerLights = {
				true, -- Enabled/Disabled
				1, -- Time (seconds)
			},
			Cycles = {
				Min = 2,
				Max = 6,
				WaitTime = 2,
			},
			CamShake = {
				true, -- Enabled/Disabled
				{3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
				100, -- Shake start distance (from Entity to you)
			},
			Jumpscare = {
				false, -- Enabled/Disabled
				{
					Image1 = "rbxassetid://10483855823", -- Image1 url
					Image2 = "rbxassetid://10483999903", -- Image2 url
					Shake = true,
					Sound1 = {
						10483790459, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Sound2 = {
						10483837590, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Flashing = {
						true, -- Enabled/Disabled
						Color3.fromRGB(0, 0, 255), -- Color
					},
					Tease = {
						true, -- Enabled/Disabled
						Min = 4,
						Max = 4,
					},
				},
			},
			CustomDialog = {"You died to who you call Ambush...", "Abit 64"}, -- Custom death message
		})

		-----[[ Advanced ]]-----
		entity.Debug.OnEntitySpawned = function(entityTable)
			print("Entity has spawned:", entityTable.Model)
		end

		entity.Debug.OnEntityDespawned = function(entityTable)
			print("Entity has despawned:", entityTable.Model)
		end

		entity.Debug.OnEntityStartMoving = function(entityTable)
			print("Entity has started moving:", entityTable.Model)
		end

		entity.Debug.OnEntityFinishedRebound = function(entityTable)
			print("Entity has finished rebound:", entityTable.Model)
		end

		entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
			print("Entity:", entityTable.Model, "has entered room:", room)
		end

		entity.Debug.OnLookAtEntity = function(entityTable)
			print("Player has looked at entity:", entityTable.Model)
		end

		entity.Debug.OnDeath = function(entityTable)
			warn("Player has died.")
		end
		------------------------

		-- Run the created entity
		Creator.runEntity(entity)
		end,
})

EntitiesTab:AddButton({
	Name = "Spawn timothy",
	Callback = function()
		--notifyUser("Spawner", "Failed to spawn Timothy, Because I could not find a drawer to spawn Timothy in.")
		OrionLib:MakeNotification({
		Name = "ERROR",
		Content = "Failed to spawn Timothy in a drawer, because this is currently broken. ERROR CODE #58, code had an error",
		Image = "rbxassetid://10837527656",
		Time = 5
		})
		end
})

EntitiesSection:AddParagraph("Timothy Spawner", "Make sure there is a Dresser/Drawer in the current room.")

EntitiesTab:AddButton({
	Name = "Timothy Jumpscare",
	Callback = function()
		require(initiator.RemoteListener.Modules.SpiderJumpscare)(require(initiator), drawer, 0.2)
end})

EntitiesTab:AddButton({
	Name = "Spawn Glitch",
	Callback = function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end})

EntitiesTab:AddButton({
	Name = "Spawn Screech",
	Callback = function()
		require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end})

EntitiesTab:AddButton({
	Name = "Spawn Halt",
})
	Callback = function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
		workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end

EntitiesTab:AddButton({
	Name = "Red Room (for 15 seconds)",
	Callback = function()
		local v1 = require(game.ReplicatedStorage.ClientModules.Module_Events)
		local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
		local seconds = 15 -- Change to how long the blood room will last.
		v1.tryp(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], seconds)
	end
})

EntitiesTab:AddButton({
	Name = "Spawn Seek Eyes",
	Callback = function()
   		require(game.ReplicatedStorage.ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 100)
	end,
})

EntitiesTab:AddButton({
	Name = "Jack in every closet and room (once)",
	Callback = function ()
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
		end

	)

end})

EntitiesTab:AddButton({
	Name = "Spawn Eyes",
	Callback = function()
  	local enableDamage = true
	repenttimes = 0
	local deadeyescrucifix = false
	local repentcomplete = false
	local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
	local eyes = game:GetObjects("rbxassetid://11488518082")[1]
	local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
	eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

	eyes.Parent = workspace
	eyes.Initiate:Play()
	task.wait(0.5)
	eyes.Attachment.Eyes.Enabled = true
	eyes.whisper:Play()
	eyes.whisper.Looped = true
	function EyesHell()
	local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
	local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
	local camara = game.Workspace.CurrentCamera
	local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
	camara.CFrame = camara.CFrame * shakeCf
	end)
	camShake:Start()
	camShake:ShakeOnce(10,30,0.7,0.1)
	ts = game:GetService("TweenService")
	wait(0.2)
	local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
	local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
	local camara = game.Workspace.CurrentCamera
	local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
	camara.CFrame = camara.CFrame * shakeCf
	end)
	camShake:Start()
	camShake:ShakeOnce(2,30,5,2)
	wait(3)

	eyes.Scream:Play()
	ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
	wait(7)
	eyes:Destroy()
	end
	local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

	local function IsVisible(part)
		local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
		local onscreen = found and vec.Z > 0
		local cfg = RaycastParams.new();
		cfg.FilterType = Enum.RaycastFilterType.Blacklist
		cfg.FilterDescendantsInstances = {part};

		local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
		return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
	end

	while true do
		if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
			enableDamage = false
			task.wait(0.2)
			eyes:Destroy()
		end
		if enableDamage then
			if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
			game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
			wait(0.2)
			elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
			print("GET THAT AWAY FROM ME")
			eyes.Repent:Play()
			eyes.Attachment.Angry.Enabled = true
			local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
	local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
	local camara = game.Workspace.CurrentCamera
	local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
	camara.CFrame = camara.CFrame * shakeCf
	end)
	camShake:Start()

	camShake:ShakeOnce(5,50,0.7,0.2)
			wait(0.7)
			repenttimes = repenttimes + 1
			print(repenttimes)
			eyes.Attachment.Angry.Enabled = false
			wait(0.4)
			elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
			local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
			hi.Anchored = true
			hi.Parent = workspace
			hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
			game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
			EyesHell()
			enableDamage = false
				if hum.Health <= 0 then
					game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
						"Eyes"
					debug.setupvalue(
						getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
						1,
						{
							"You died to the Eyes...",
							"They don't like to be stared at.",
						}
					)
				end
			end
		end
		task.wait(0.2)
	end

	  	     
		end,
})

EntitiesTab:AddButton({
	Name = "Flicker Lights",
	Callback = function ()
		firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1)
	end
})
EntitiesTab:AddButton({
	Name = "Shadow Every Door",
	Callback = function ()
		
	local Plr = game.Players.LocalPlayer
	local ReSt = game.ReplicatedStorage
	local events = require(game.ReplicatedStorage.ClientModules.Module_Events)
	local cameraShaker = require(game.ReplicatedStorage.CameraShaker)
	local camera = workspace.CurrentCamera

	local camShake = cameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
		camera.CFrame = camera.CFrame * cf
	end)
	camShake:Start()
	----------

	function GetGitSound(GithubSnd,SoundName)
		local url=GithubSnd
		if not isfile(SoundName..".mp3") then
			writefile(SoundName..".mp3", game:HttpGet(url))
		end
		local sound=Instance.new("Sound")
		sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
		return sound
	end

	local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
	local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

	--https://github.com/Noonie1/RandomUtilities/blob/ShadowScript/Shadow.mp3?raw=true
	-- Create your tool here


	ReSt.GameData.LatestRoom.Changed:Connect(function()
	local Shadow : Part = LoadCustomInstance("https://github.com/Noonie1/RandomUtilities/blob/ShadowScript/Sbadow.rbxm?raw=true")

	Shadow.Parent = workspace
	Shadow.Anchored = true
	local End = workspace.CurrentRooms[ReSt.GameData.LatestRoom.Value]:FindFirstChild("RoomStart")
	local offset = Vector3.new(0,0,-15)
	local ScarySound = GetGitSound("https://github.com/Noonie1/RandomUtilities/blob/ShadowScript/Shadow.mp3?raw=true","Spooker")
	events.flickerLights(workspace.CurrentRooms[ReSt.GameData.LatestRoom.Value],0.5)
	ScarySound.Parent = workspace
	ScarySound:Play()
	ScarySound.Volume = 1
	ScarySound.Pitch = Random.new():NextNumber(0.6,1)
	Shadow.CFrame = End.CFrame*CFrame.new(offset)
	wait(0.6)
	ScarySound:Destroy()
	Shadow:Destroy()

	end)
end})


EntitiesTab:AddButton({
	Name = "Hallway Jack Every Door",
	Callback = function ()
	
		local Plr = game.Players.LocalPlayer
		local ReSt = game.ReplicatedStorage
		local events = require(game.ReplicatedStorage.ClientModules.Module_Events)
		local cameraShaker = require(game.ReplicatedStorage.CameraShaker)
		local camera = workspace.CurrentCamera

		local camShake = cameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
			camera.CFrame = camera.CFrame * cf
		end)
		camShake:Start()
		----------

		function GetGitSound(GithubSnd,SoundName)
			local url=GithubSnd
			if not isfile(SoundName..".mp3") then
				writefile(SoundName..".mp3", game:HttpGet(url))
			end
			local sound=Instance.new("Sound")
			sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
			return sound
		end

		local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
		local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

		--https://github.com/Noonie1/RandomUtilities/blob/ShadowScript/Shadow.mp3?raw=true
		-- Create your tool here


		ReSt.GameData.LatestRoom.Changed:Connect(function()
		local Jack : Part = LoadCustomInstance("https://github.com/CelloGithub/JohnLKVNB/blob/main/Slacker.rbxm?raw=true")

		Jack.Parent = workspace
		Jack.Anchored = true
		local End = workspace.CurrentRooms[ReSt.GameData.LatestRoom.Value]:FindFirstChild("RoomStart")
		local offset = Vector3.new(0,0,-15)
		local ScarySound = GetGitSound("https://github.com/CelloGithub/JohnLKVNB/blob/main/JackScare.mp3?raw=true","Spooker")
		events.flickerLights(workspace.CurrentRooms[ReSt.GameData.LatestRoom.Value],0.5)
		ScarySound.Parent = workspace
		ScarySound:Play()
		ScarySound.Volume = 1
		ScarySound.Pitch = Random.new():NextNumber(0.6,1)
		Jack.CFrame = End.CFrame*CFrame.new(offset)
		wait(0.6)
		ScarySound:Destroy()
		Jack:Destroy()
				local v1 = require(game.ReplicatedStorage.ClientModules.Module_Events)
				local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
				local seconds = 15 -- Change to how long the blood room will last.
				v1.tryp(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], seconds)	
		end
	)
end})
-------------------[[ C H A R A C T E R    C U S T O M I Z A T I O N ]]-------------------


local CharCustomTab = Window:MakeTab({
	Name = "User Customization",
	Icon = "rbxassetid://4431163577",
	PremiumOnly = false
})

--[[CharCustomTab:AddToggle({
    Name = "Headlight",
    Default = true,
    Save = true,
    Flag = "HeadlightEnabledEndeic",
    Callback = function(Value)
    	HeadlightEnabledEndeic.Value = Value
    end
})
CharCustomTab:AddSlider({
	Name = "Headlight Brightness",
	Min = 0,
	Max = 10,
	Default = 0.1,
	Color = Color3.fromRGB(170,221,255),
	Increment = 0.1,
	ValueName = "",
    Flag = "HeadlightBrightnessEndeic",
    Save = true,
	Callback = function(Value)
		HeadlightBrightnessEndeic.Value = Value
	end
})
--]]

local TargetWalkspeed
CharCustomTab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	save = false,
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end    
})


-------------------[[ V I S U A L S ]]-------------------

local VisualsTab = Window:MakeTab({
	Name = "Visuals",
	Icon = "rbxassetid://4384392487",
	PremiumOnly = false
})

local CF = CFrame.new
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart

local KeyChams = {}
VisualsTab:AddToggle({
	Name = "Key ESP",
	Default = false,
    Flag = "KeyToggle",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(KeyChams) do
            v.Enabled = Value
        end
	end    
})

local BookChams = {}
VisualsTab:AddToggle({
	Name = "Book ESP",
	Default = false,
    Flag = "BookToggle",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(BookChams) do
            v.Enabled = Value
        end
	end    
})

--[[local LeverChams = {}
T H I S    I S    V I S U A L L Y    A S S
isualsTab:AddToggle({
	Name = "??? ESP",
	Default = false,
    Flag = "LevToggle",
    Save = true,
	Callback = function(Value)
		for i,v in (LeverChams) do
			v.Enabled = Value
		end
	end
})]]--

-------------------[[ G A M E ]]-------------------

local GameTab = Window:MakeTab({
	Name = "Game",
	Icon = "rbxassetid://4384403555",
	PremiumOnly = false
})

GameTab:AddToggle({
	Name = "Instant Interact",
	Default = false,
    Flag = "InstantToggle",
    Save = true
})

GameTab:AddButton({
	Name = "Skip Room",
	Callback = function()
        pcall(function()
            local HasKey = false
            local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
            for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                if v.Name == "KeyObtain" then
                    HasKey = v
                end
            end
            if HasKey then
                game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                wait(0.3)
                fireproximityprompt(HasKey.ModulePrompt,0)
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                wait(0.3)
                fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
            end
            if LatestRoom == 50 then
                CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
            end
            game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
            wait(0.3)
            CurrentDoor.ClientOpen:FireServer()
        end)
  	end    
})

-------------------[[ O T H E R ]]-------------------

local OtherTab = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4384403555",
	PremiumOnly = false
})

local ToolsSection = OtherTab:AddSection({
	Name = "Tools"
})
OtherTab:AddButton({
	Name = "Get Crucifix",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Johnny39871/assets/main/crucifixo'))()
	end,
})

ToolsSection:AddParagraph("Physics Gun", "Make sure you click the button while on the pre-run shop.")

OtherTab:AddButton({
	Name = "Buy physics gun",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SernoxSergal/Sernox-s-Door-Gui/main/PhysGun.lua"))()
	end
})

OtherTab:AddButton({
	Name = "Get Skeleton Key",
	Callback = function()
		function skelly()
  	 	local DoorReplication = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Door%20Replication/Source.lua"))()


		-- Get current room
		local room = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]


		-- Replicate door
		local replicatedDoor = DoorReplication.ReplicateDoor(room, {
  		CustomKeyName = "Skeleton Key",
   		DestroyKey = false,
		})
	end
end})

local DeathSection = OtherTab:AddSection({
	Name = "Death"
})

OtherTab:AddButton({
	Name = "Die",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
})

--[[OtherTab:AddBind({
	Name = "FullBright",
	Default = Enum.KeyCode.F,
	Hold = false,
    Flag = "FullbrightKeybind",
    Save = true,
	Callback = function()
        fbKey.Value = OrionLib.Flags["FullbrightKeybind"].Value
        print("FullBright Keybind is now: " .. tostring(fbKey.Value))
	end,    
})]]

-------------------[[ C R E D I T S ]]-------------------

local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4384403555",
	PremiumOnly = false
})

CreditsTab:AddLabel("Shlexware - Orion UI Library")
CreditsTab:AddLabel("Endeictic - All The Stuff")
local TesterSection = CreditsTab:AddSection({
	Name = "Beta Testers"
})

CreditsTab:AddLabel("BarberTrail95 - Beta Tester")

local TesterSection = CreditsTab:AddSection({
	Name = "Testers"
})
CreditsTab:AddLabel(" - ")












































-------------------[[ A C T U A L    C O D E ]]-------------------


local EndeicFolder = Instance.new("Folder", game.ReplicatedStorage)
EndeicFolder.Name = "EndeicValues"

local HeadlightEnabledEndeic = Instance.new("BoolValue", EndeicFolder)
HeadlightEnabledEndeic.Name = "HeadlightEnabled"
HeadlightEnabledEndeic.Value = true

local HeadlightBrightnessEndeic = Instance.new("NumberValue", EndeicFolder)
HeadlightEnabledEndeic.Name = "HeadlightBrightness"
HeadlightEnabledEndeic.Value = 0.25

local headlight = Instance.new("SpotLight")
headlight.Brightness = HeadlightBrightnessEndeic.Value
headlight.Face = Enum.NormalId.Front
headlight.Range = 90
headlight.Parent = game.Players.LocalPlayer.Character.Head
headlight.Enabled = HeadlightEnabledEndeic.Value

HeadlightEnabledEndeic:GetPropertyChangedSignal("Value"):Connect(function()
    headlight.Enabled = HeadlightEnabledEndeic.Value
end)

HeadlightBrightnessEndeic:GetPropertyChangedSignal("Value"):Connect(function()
    headlight.Brightness = HeadlightBrightnessEndeic.Value
end)

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if OrionLib.Flags["InstantToggle"].Value == true then
        fireproximityprompt(prompt)
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/100)
        end
    end)
end)

local function ApplyBookChams(inst)
    if inst:IsDescendantOf(game:GetService("Workspace").CurrentRooms:FindFirstChild("50")) and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value == 50 then
        wait()
        local Cham = Instance.new("Highlight")
        Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        Cham.FillColor = Color3.new(0, 1, 0.749019)
        Cham.FillTransparency = 0.5
        Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
        Cham.Parent = game:GetService("CoreGui")
        Cham.Enabled = OrionLib.Flags["BookToggle"].Value
        Cham.Adornee = inst
        Cham.RobloxLocked = true
        return Cham
    end
end

local function ApplyKeyChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(1, 0.33, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Adornee = inst
    Cham.Enabled = OrionLib.Flags["KeyToggle"].Value
    Cham.RobloxLocked = true
    return Cham
end
local BookCoroutine = coroutine.create(function()
    task.wait(1)
    for i,v in pairs(game:GetService("Workspace").CurrentRooms["50"].Assets:GetDescendants()) do
        if v.Name == "LiveHintBook" then
            table.insert(BookChams,ApplyBookChams(v))
        end
    end
end)

local KeyCoroutine = coroutine.create(function()
    workspace.CurrentRooms.DescendantAdded:Connect(function(inst)
        if inst.Name == "KeyObtain" then
            table.insert(KeyChams,ApplyKeyChams(inst))
        end
    end)
end)
for i,v in ipairs(workspace:GetDescendants()) do
    if v.Name == "KeyObtain" then
        table.insert(KeyChams,ApplyKeyChams(v))
    end
end
coroutine.resume(KeyCoroutine)

--[[local function findDrawer()
	for i, obj in pairs(game:GetDescendants()) do
		if obj.Name == "DrawerContainer" then
			return obj
		end
	end
end]]

-- Fullbright

--[[local fbKey = Instance.new("StringValue", EndeicDrSex)
fbKey.Name = "FullbrightKeybind"
fbKey.Value = "F"
local fbEnabled = false
if input.KeyCode == Enum.KeyCode[OrionLib.Flags["FullbrightKeybind"].Value] then
    fbEnabled = not fbEnabled
        
    wait()
        
    if fbEnabled == true then
        lighting.Brightness = OrionLib.Flags["FullbrightIntensity"].Value
		lighting.GlobalShadows = false
		lighting.ClockTime = 12
		lighting.FogEnd = 786543
		lighting.Ambient = Color3.fromRGB(178, 178, 178)
    else
        lighting.Brightness = normalLightingSettings.Brightness
		lighting.GlobalShadows = normalLightingSettings.GlobalShadows
		lighting.ClockTime = normalLightingSettings.ClockTime
		lighting.FogEnd = normalLightingSettings.FogEnd
		lighting.Ambient = normalLightingSettings.Ambient
    end
end]]--

-------------------[[ I N I T I A L I Z E ]]-------------------

OrionLib:Init()
