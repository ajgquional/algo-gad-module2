--[[
Author:
	Adrian Josele G. Quional
	
Script description:
	This script enables the teleportation of the player.
	
How to use the script:
	- Create the origin and destination parts
	- Put the parts inside of a folder
	- Create a Script object inside the folder
	- Copy the contents of this script to the Script object created
--]]

-- reference to the two parts inside the folder
local StartPoint = script.Parent.Part1
local EndPoint = script.Parent.Part2

-- teleport the player to the destination part when origin part is touched
function Teleport(touched)
	if touched.Parent:FindFirstChild("Humanoid") then
		local human = touched.Parent.HumanoidRootPart
		human.Position = EndPoint.Position +Vector3.new(0,10,0)
	end
end

-- connecting the function to the touch event
StartPoint.Touched:Connect(Teleport)
