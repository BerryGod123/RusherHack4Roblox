local array = Instance.new("ScreenGui", game:GetService("CoreGui"))
local arrayFrame = Instance.new("Frame", array)
arrayFrame.Size = UDim2.new(0.13, 0, 1, 0)
arrayFrame.Position = UDim2.new(0.8687, 0, 0, 0)
arrayFrame.BackgroundTransparency = 1
local Grid = Instance.new("UIGridLayout",arrayFrame)
Grid.CellPadding = UDim2.new(0, 0, 0.0001, 0)
Grid.SortOrder = Enum.SortOrder.LayoutOrder
Grid.CellSize = UDim2.new(1, 0, 0.0275, 0)
Grid.HorizontalAlignment = "Left"
local topframe = Instance.new("Frame", array)
topframe.Size = UDim2.new(0.41, 0, 0.004, 0)
topframe.Position = UDim2.new(0.876, 0, 0, 0)
topframe.BorderSizePixel = 0
topframe.BackgroundTransparency = 0
topframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
local BozoUIGradient = Instance.new("UIGradient")
BozoUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(191, 223, 245)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(62, 167, 240))}
BozoUIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.29, 0.00), NumberSequenceKeypoint.new(0.46, 0.00), NumberSequenceKeypoint.new(0.71, 0.00), NumberSequenceKeypoint.new(1.00, 0.00)}
BozoUIGradient.Parent = topframe
local Bozobutton = topframe
local Bozogradient = BozoUIGradient
local Bozots = game:GetService("TweenService")
local Bozoti = TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
local Bozooffset1 = {Offset = Vector2.new(-1, 0)}
local Bozocreate1 = Bozots:Create(Bozogradient, Bozoti, Bozooffset1)
local BozostartPos = Vector2.new(1, 0)
local Bozorot = 180
Bozogradient.Offset = BozostartPos
Bozogradient.Rotation = 0
        
local function Bozocompleted()
    if Bozorot == 0 then
        Bozogradient.Rotation = 180
        Bozogradient.Offset = BozostartPos -------------------------- ("Autogamemode","Bedwars")
        Bozocreate1:Play()	
    elseif Bozorot == 180 then
        Bozogradient.Rotation = 0
        Bozogradient.Offset = BozostartPos
        Bozocreate1:Play()
    end	
end

Bozocreate1.Completed:Connect(function() 
    if Bozorot == 0 then Bozorot = 180 elseif Bozorot == 180 then Bozorot = 0 end
    Bozocompleted()
end)

Bozocreate1:Play()

Arraylist = {
    Add = function(Name, Settings)
        local Text = Instance.new("TextLabel",arrayFrame)
        local Frick = Instance.new("Frame",Text)
        local UIGradient = Instance.new("UIGradient") 
        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(191, 223, 245)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(62, 167, 240))}
        UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.29, 0.00), NumberSequenceKeypoint.new(0.46, 0.00), NumberSequenceKeypoint.new(0.71, 0.00), NumberSequenceKeypoint.new(1.00, 0.00)}
        UIGradient.Parent = Frick
        
        
        
        Frick.Position = UDim2.new(0.997, 0, 0, 0)
        Frick.BorderSizePixel = 0
        Frick.Size = UDim2.new(16, 0, 1, 0)
        Frick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        local newName
        if Settings then
	        newName = Name .. " " .. Settings 
        else
            newName = Name
        end
        Text.TextColor3 = Text.BackgroundColor3
        Text.Name = Name
        Text.BackgroundTransparency = 1
        Text.Size = UDim2.new(0,0,1,0)
        Text.Font = Enum.Font.GothamBold
        local TextScale = Text.AbsoluteSize.Y * 0.7
        Text.TextSize = TextScale
        Text.Text = newName.." "
        local sizee = game:GetService("TextService"):GetTextSize(newName, TextScale, Enum.Font.GothamBold, Vector2.new(1000000, 1000000))
        Text.TextXAlignment = "Right"
        Text.LayoutOrder = -sizee.X
        Text.TextTransparency = 1

        local shadow = Instance.new("TextLabel",Text)
        local TextService = game:GetService("TextService")
        shadow.BorderSizePixel = 0
        shadow.TextXAlignment = "Center"
        local vecx = sizee + Vector2.new(5, 0)
        shadow.Size = UDim2.new(0, vecx.X, 0, vecx.Y)
        shadow.AnchorPoint = Vector2.new(1,0)
        shadow.Position = UDim2.new(0.997, 0, 0, 0)
        shadow.Font = Enum.Font.GothamBold
        shadow.TextSize = TextScale
        shadow.Text = " " .. newName.." "
        shadow.AutomaticSize = "X"
        shadow.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
        shadow.TextTransparency = 0
        shadow.BackgroundTransparency = 0.5
        shadow.TextStrokeTransparency = 1
        shadow.TextColor3 = Color3.fromRGB(255, 255, 255)
        print(sizee)
        shadow.Size = UDim2.new(0,shadowsize,0.99,1)
        shadow.AutomaticSize = "X"
        local textUIGradient = Instance.new("UIGradient", shadow)
        textUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(191, 223, 245)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(62, 167, 240))}
        textUIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.29, 0.00), NumberSequenceKeypoint.new(0.46, 0.00), NumberSequenceKeypoint.new(0.71, 0.00), NumberSequenceKeypoint.new(1.00, 0.00)}
        local button = Frick
        local gradient = UIGradient
        local ts = game:GetService("TweenService")
        local ti = TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
        local offset1 = {Offset = Vector2.new(-1, 0)}
        local create1 = ts:Create(gradient, ti, offset1)
        local startPos = Vector2.new(1, 0)
        local rot = 180
        gradient.Offset = startPos
        gradient.Rotation = 0
        local function completed()
            if button.BorderSizePixel == 0 and rot == 0 then
                gradient.Rotation = 180
                gradient.Offset = startPos
                create1:Play()	
            elseif button.BorderSizePixel == 0 and rot == 180 then
                gradient.Rotation = 0
                gradient.Offset = startPos
                create1:Play()
            end	
        end
        create1.Completed:Connect(function() 
            if rot == 0 then rot = 180 elseif rot == 180 then rot = 0 end
            completed()
        end)
        create1:Play()

        local textbutton = shadow
        shadow.BorderSizePixel = 0
        local textgradient = textUIGradient
        local textts = game:GetService("TweenService")
        local textti = TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
        local textoffset1 = {Offset = Vector2.new(-1, 0)}
        local textcreate1 = textts:Create(textgradient, textti, textoffset1)
        local textstartPos = Vector2.new(1, 0)
        local textrot = 180
        textgradient.Offset = textstartPos
        textgradient.Rotation = 0
        
        local function textcompleted()
            if textrot == 0 then
                textgradient.Rotation = 180
                textgradient.Offset = textstartPos
                textcreate1:Play()	
            elseif textrot == 180 then
                textgradient.Rotation = 0
                textgradient.Offset = textstartPos
                textcreate1:Play()
            end	
        end
        textcreate1.Completed:Connect(function() 
            if textrot == 0 then textrot = 180 elseif textrot == 180 then textrot = 0 end
            textcompleted()
        end)
        textcreate1:Play()
        if Settings then
            local settingcolor = string.find(Text.Text, Settings)
            settingcolor.TextColor3 = Color3.new(1, 1, 1)
        end
    end,
    Remove = function(Name)
        if arrayFrame:FindFirstChild(Name) then
            arrayFrame:FindFirstChild(Name):Destroy()
        end
    end,
}
return Arraylist
