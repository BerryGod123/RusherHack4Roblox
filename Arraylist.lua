local array = Instance.new("ScreenGui", game:GetService("CoreGui"))
local arrayFrame = Instance.new("Frame", array)
arrayFrame.Size = UDim2.new(0.13, 0, 1, 0)
arrayFrame.Position = UDim2.new(0.87, 0, 0, 0)
arrayFrame.BackgroundTransparency = 0.6
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
        local newName
        if Suffix then
			newName = Name.." | " ..Suffix
        else
            newName = Name
        end
        Text.Name = Name
        Text.BackgroundTransparency = 0.8
        Text.Size = UDim2.new(0,0,1,0)
        Text.Font = Enum.Font.Gotham
        local TextScale = Text.AbsoluteSize.Y * 0.7
        Text.TextSize = TextScale
        Text.Text = newName.." "
        local size = game:GetService("TextService"):GetTextSize(newName, TextScale, Enum.Font.Gotham, Vector2.new(1000000, 1000000))
        Text.TextXAlignment = "Right"
        Text.LayoutOrder = -size.X
        Text.BackgroundColor3 = Color3.fromRGB(0,0,0)
        Text.AutomaticSize = "X"
	    Text.TextColor3 = Color3.fromRGB(170, 0, 255)
	    Text.TextStrokeTransparency = 0
        task.spawn(function()
            repeat
                task.wait()
                Text.TextColor3 = Color3.fromRGB(170, 0, 255)
            until not Text
        end)
    end,
    Remove = function(Name)
        if arrayFrame:FindFirstChild(Name) then
            arrayFrame:FindFirstChild(Name):Destroy()
        end
    end,
}


return Arraylist
