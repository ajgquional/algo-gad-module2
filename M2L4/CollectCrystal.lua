--[[
Author:
	Adrian Josele G. Quional
	
Script description:
	This script shows and makes the teleporter active when all crystals are collected.
	
How to use the script:
	- Create the teleporter and make sure it is working
	- Add the crystals to the game and put them in a folder
	- Create a Script object inside ServerScriptService
	- Copy the contents of this script to the Script object created
--]]

-- getting the location of the crystals and teleporter in the Workspace
local crystals = game.Workspace.Crystals:GetChildren()
local teleporter = game.Workspace.Teleports.Part1

-- making the teleporter invisible and untouchable by the player
teleporter.Transparency = 1
teleporter.CanTouch = false
teleporter.CanCollide = false
teleporter.ParticleEmitter.Enabled = false

-- variable to hold the number of crystals collected
local crystalCollected = 0

-- looping through all the crystals in the crystals folder
for _, crystal in crystals do
	-- once a crystal is touched, it would be destroyed and crystalNum would increment
	crystal.Touched:connect(function(p)
		crystal:Destroy()
		crystalCollected = crystalCollected + 1
		-- printing the number of crystals collected, for debugging
		print("Crystals collected: ", crystalCollected)

		-- if the number of crystals collected is 3, make the teleporter visible
		-- number of crystals to be collected can be modified
		if crystalCollected == 3 then
			teleporter.Transparency = 0
			teleporter.CanTouch = true
			teleporter.CanCollide = true
			teleporter.ParticleEmitter.Enabled = true
		end
	end)
end
