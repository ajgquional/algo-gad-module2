--[[
Author:
	Adrian Josele G. Quional
	
Script description:
	This script enables a ParticleEmitter effect when the part containing the correct answer is touched.
	
How to use the script:
	- Create a part containing the correct answer for the puzzle
	- Make sure the ParticleEmitter effect is disabled and the part is anchored
	- Create a Script object inside the part
	- Copy the contents of this script to the Script object created
	- ParticleEmitter effect can be changed
--]]

-- reference to the part containing the script
local part = script.Parent

local function onTouch(who)
	-- enable the ParticleEmitter effect when the part is touched
	-- if effect inside the part is not ParticleEmitter, change the line of code accordingly
	part.ParticleEmitter.Enabled = true
end

-- connecting the function to the touch event
part.Touched:Connect(onTouch)
