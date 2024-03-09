--[[
Author:
	Adrian Josele G. Quional
	
Script description:
	This script enables the showing of the frame when the button is pressed.
	
How to use the script:
	- Create a ScreenGui object inside StarterGui
	- Create the button and frame
	- Create a LocalScript object inside ScreenGui
	- Copy the contents of this script to the LocalScript object created
--]]

-- reference to the button and frame
button = script.Parent.TextButton
frame = script.Parent.Frame

-- shows the frame when the button is clicked
local function showFrame()
	frame.Visible = true
end

-- connects the function to the mouse click event
button.MouseButton1Click:Connect(showFrame)

