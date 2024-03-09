--[[
Author:
	Adrian Josele G. Quional
	
Script description:
	This script makes the password screen usable.
	
How to use the script:
	- Design the frame
	- Add a text box and label in the frame
	- Create a LocalScript object inside the frame
	- Copy the contents of this script to the LocalScript object created
--]]

local textBox = script.Parent.TextBox
local Frame = script.Parent
local secretWord = "8888"
local colorNormal = Color3.new(1, 1, 1)
local colorWrong = Color3.new(1, 0, 0)
local colorCorrect = Color3.new(0, 1, 0)

textBox.ClearTextOnFocus = true
textBox.Text = ""
textBox.Font = Enum.Font.Code
textBox.PlaceholderText = "Enter the secret word"
textBox.BackgroundColor3 = colorNormal

local function onFocused()
	textBox.BackgroundColor3 = colorNormal
end

local function onFocusLost(enterPressed, inputObject)
	if enterPressed then
		local guess = textBox.Text
		if guess == secretWord then
			textBox.Text = "Correct answer"
			textBox.BackgroundColor3 = colorCorrect
			wait(4)
			Frame.Visible = false
		else
			textBox.Text = "Wrong answer"
			textBox.BackgroundColor3 = colorWrong
			wait(4)
			Frame.Visible = false
		end
	else
		textBox.Text = ""
		textBox.BackgroundColor3 = colorNormal
	end
end

textBox.FocusLost:Connect(onFocusLost)
textBox.Focused:Connect(onFocused)
