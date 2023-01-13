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
        local Line = Instance.new("Frame",Text)
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
	    asd = Text.AbsoluteSize.Y * 0.7
        local size = game:GetService("TextService"):GetTextSize(newName, TextScale, Enum.Font.Gotham, Vector2.new(1000000, 1000000))
        Text.TextXAlignment = "Right"
	Text.Position = UDim2.new(0, -3, 0, 0)
        Text.LayoutOrder = -size.X
        Text.BackgroundColor3 = Color3.fromRGB(0,0,0)
	    Text.TextColor3 = Color3.fromRGB(170, 0, 255)
	    Text.TextStrokeTransparency = 0
	        Line.Name = "Line"
        Line.Parent = Text
        Line.BackgroundColor3 = Color3.fromRGB(0,0,0)
        Line.BackgroundTransparency = 0
        Line.Position = UDim2.new(1, 1, 0.5, 0)
        Line.AnchorPoint = Vector2.new(-1, 0.5)
        Line.Size = UDim2.new(0, 3, 0, 20)
        Line.Font = GuiLibrary.Font
        Line.Text = ""
        Line.BorderSizePixel = 0
        Line.TextSize = GuiLibrary.TextSize --0.000
        Line.TextXAlignment = Enum.TextXAlignment.Center

    end,
    Remove = function(Name)
        if arrayFrame:FindFirstChild(Name) then
            arrayFrame:FindFirstChild(Name):Destroy()
        end
    end,
}


return Arraylist
