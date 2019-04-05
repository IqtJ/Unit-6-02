-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
--background
display.setDefault("background", 250, 0, 0)

----text field for number

local numberTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 250, 50 )
numberTextField.id = "numberTextField textField"

---------title text
local titleText = display.newText( "Enter an integer(no decimals)" , 160, 25, native.systemFont, 20)
titleText.id = "title text"
titleText:setFillColor( 1, 1, 1)

-------negative or positive texts
local output = display.newText( " " , 160, 125, native.systemFont, 20)
output.id = "correct answer text"
output:setFillColor( 0, 0, 255)
-----check button

local check = display.newImageRect( "assets/check.png", 150, 100 )
check.x = display.contentCenterX
check.y = 400
check.id = "check button" 

--function to determine negative or positive
local function checkButtonTouch( event )
	-- answer as a number
	local answerNumber = tonumber(numberTextField.text)
	-- negative or positive
	if answerNumber <0 then 
		output.text = "Negative"
	else
		output.text = "Positive"
	end
end

check:addEventListener( 'touch' , checkButtonTouch)