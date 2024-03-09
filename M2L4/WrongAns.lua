--[[
Author:
	Adrian Josele G. Quional
	
Script description:
	This script enables the killing of the player when the part containing the wrong answer is touched.
	
How to use the script:
	- Create a part containing the wrong answer for the puzzle
	- Create a Script object inside the part
	- Copy the contents of this script to the Script object created
--]]

-- reference to the part containing the script
local part = script.Parent

local function onTouchBam(who)
	-- kill the player when the part is touched
	who.Parent.Humanoid.Health = 0
end

-- connecting the function to the touch event
part.Touched:Connect(onTouchBam)
