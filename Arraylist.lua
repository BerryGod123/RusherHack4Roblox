local array = Instance.new("ScreenGui", game:GetService("CoreGui"))
local arrayFrame = Instance.new("Frame", array)
arrayFrame.Name = "ArrayList"
arrayFrame.Parent = ScreenGui
arrayFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
arrayFrame.BackgroundTransparency = 1.000
arrayFrame.Position = UDim2.new(0.4, 0, 0.5, 0)
arrayFrame.Size = UDim2.new(0, 197, 0, 346)
arrayFrame.Visible = false
local Grid = Instance.new("UIGridLayout",arrayFrame)
Grid.Parent = ArrayList
Grid.HorizontalAlignment = Enum.HorizontalAlignment.Right
Grid.SortOrder = Enum.SortOrder.LayoutOrder



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
        Text.LayoutOrder = -size.X
        Text.Position = UDim2.new(-0.0152284261, 0, 0, 0)
        local vec = Text.AbsoluteSize + Vector2.new(5, 0)
        Text.Size = UDim2.new(0, 10, 0, 18)
        Text.BackgroundColor3 = Color3.fromRGB(0,0,0)
	    Text.TextColor3 = Color3.fromRGB(170, 0, 255)
	    Text.TextStrokeTransparency = 0
	    Line.Name = newName
        Line.Parent = Text
        Line.BackgroundColor3 = Color3.fromRGB(255,255,255)
        Line.BackgroundTransparency = 0
        Line.Position = UDim2.new(1, 1, 0.5, 0)
        Line.AnchorPoint = Vector2.new(-1, 0.5)
        Line.Size = UDim2.new(0, 3, 0, Text.Size.y)
        Line.BorderSizePixel = 0

    end,
    Remove = function(Name)
        if arrayFrame:FindFirstChild(Name) then
            arrayFrame:FindFirstChild(Name):Destroy()
        end
    end,
}


return Arraylist
