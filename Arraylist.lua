local array = Instance.new("ScreenGui", game:GetService("CoreGui"))
local arrayFrame = Instance.new("Frame", array)
arrayFrame.Size = UDim2.new(0.13, 0, 1, 0)
arrayFrame.Position = UDim2.new(0.87, 0, 0, 0)
arrayFrame.BackgroundTransparency = 1
arrayFrame.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
arrayFrame.AutomaticSize = "X"
local Grid = Instance.new("UIGridLayout",arrayFrame)
Grid.CellPadding = UDim2.new(0, 0, 0.0001, 0)
Grid.SortOrder = Enum.SortOrder.LayoutOrder
Grid.CellSize = UDim2.new(1, 0, 0.0275, 0)
Grid.HorizontalAlignment = "Left"



Arraylist = {
    Add = function(Name,Suffix)
        local Text = Instance.new("TextLabel",arrayFrame)
        local Frome = Instance.new("Frame",Text)
        local newName
        if Suffix then
			newName = Name.." | " ..Suffix
        else
            newName = Name
        end
        Text.Name = Name
        Text.BackgroundTransparency = 1
        Text.Font = Enum.Font.Gotham
	Text.AutomaticSize = "X"
        local TextScale = Text.AbsoluteSize.Y * 0.7
        Text.TextSize = TextScale
        Text.Text = newName.." "
        local size = game:GetService("TextService"):GetTextSize(newName, TextScale, Enum.Font.Gotham, Vector2.new(1000000, 1000000))
        Text.TextXAlignment = "Right"
        Text.LayoutOrder = -size.X
        Text.BackgroundColor3 = Color3.fromRGB(0,0,0)
	Text.TextColor3 = Color3.fromRGB(170, 0, 255)
	Text.TextStrokeTransparency = 0
        Frome.BackgroundColor3 =Color3.fromRGB(170, 0, 255)
	local rasicm = { Color3.fromRGB(209,106,255);
		Color3.fromRGB(187,68,240); 
		Color3.fromRGB(150,20,208);
		Color3.fromRGB(102,0,148); 
		Color3.fromRGB(150,20,208); 
		Color3.fromRGB(187,68,240); 
		Color3.fromRGB(209,106,255)} 
	local tweeninfoanim = TweenInfo.new(0.3, Enum.EasingStyle.Vertical, Enum.EasingDirection.InOut, 0, false, 0) 
	Text.TextColor3 = r[1] nigga = 1 
	while true do 
		local tween = game:GetService("TweenService"):Create(Text, tweeninfoanim, { TextColor3 = rasicm[i]}) 
		tween:Play() repeat wait() until tween.Completed wait(0.1) 
		if nigga == #rasicm then 
			nigga = 1 
		else 
			nigga = nigga + 1 
		end 
	end
    end,
    Remove = function(Name)
        if arrayFrame:FindFirstChild(Name) then
            arrayFrame:FindFirstChild(Name):Destroy()
        end
    end,
}


return Arraylist

