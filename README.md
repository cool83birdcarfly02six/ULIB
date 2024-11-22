getgenv().UIThemeColorElysium = Color3.fromRGB(85, 170, 255)
local lib = {}
--local funcs = {}
--local obj = {}
function lib:NewGui(title)
    local funcs = {}
local indexedrn = 1
local touilib = Instance.new("ScreenGui")
local MainBackground = Instance.new("ScrollingFrame")
MainBackground.CanvasSize = UDim2.new(0,0,0,0)
local UICorner = Instance.new("UICorner")
local TitleLeave = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local TabsNav = Instance.new("ScrollingFrame")





local thepos = nil
local current_tweening = nil
TabsNav.ScrollBarThickness = 1
local function GJLE_fake_script() -- TabsNav.autoscale 
	local script = Instance.new('LocalScript', TabsNav)
	local ScrollFrame = script.Parent
	local function UpdateScrollFrameSize()
		local contentHeight = 0
		for _, child in pairs(ScrollFrame:GetChildren()) do
			if child:IsA("GuiObject") then
				contentHeight = contentHeight + child.Size.Y.Offset
			end
		end
		ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, contentHeight)
	end
	UpdateScrollFrameSize()
	ScrollFrame.ChildAdded:Connect(UpdateScrollFrameSize)
	ScrollFrame.ChildRemoved:Connect(UpdateScrollFrameSize)
end
coroutine.wrap(GJLE_fake_script)()

function funcs:ChangeTheme(color)

for i,v in pairs(touilib:GetDescendants()) do
local go = true
pcall(function()
if v:GetAttribute("IsToggled") == true then
v.Parent.BackgroundColor3 = color
go = false
end
end)



local go = true
if v:GetAttribute("NavigationImage") then
    go = false
    if v.ImageColor3 == getgenv().UIThemeColorElysium then
        v.ImageColor3 = color
    end
end


if go then
if v:GetAttribute("Themeable") then

pcall(function()
v.ImageColor3 = color
end)
pcall(function()
    v.BackgroundColor3 = color
end)
end
end
end

getgenv().UIThemeColorElysium = color
end
    function funcs:AddTab(stuff)
        local obj = {}
        if type(stuff) ~= "table" then
        error("give table bro")
        return
        end

local new = false
if not TabsNav:FindFirstChildWhichIsA("Frame") then
new = true
end


local TabOption = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local NavOrganize = Instance.new("TextLabel")
local NavButton = Instance.new("Frame")
local ButtonBackgroun = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local IconImage = Instance.new("ImageLabel")
local Text = Instance.new("TextLabel")
TabOption.Name = "TabOption"
TabOption.Parent = TabsNav
TabOption.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabOption.BackgroundTransparency = 1.000
TabOption.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabOption.BorderSizePixel = 0
TabOption.Size = UDim2.new(0, 162, 0, 62)
UIListLayout.Parent = TabOption
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
NavOrganize.Name = "NavOrganize"
NavOrganize.Parent = TabOption
NavOrganize.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
NavOrganize.BackgroundTransparency = 1.000
NavOrganize.BorderColor3 = Color3.fromRGB(0, 0, 0)
NavOrganize.BorderSizePixel = 0
NavOrganize.Position = UDim2.new(-0.0545454547, 0, 0, 0)
NavOrganize.Size = UDim2.new(0, 143, 0, 26)
NavOrganize.Font = Enum.Font.SourceSansSemibold
NavOrganize.Text = "......................................................................................................."
NavOrganize.TextColor3 = Color3.fromRGB(149, 149, 149)
NavOrganize.TextSize = 14.000
NavOrganize.TextXAlignment = Enum.TextXAlignment.Left
NavButton.Name = "NavButton"
NavButton.Parent = TabOption
NavButton.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
NavButton.BackgroundTransparency = 1.000
NavButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NavButton.BorderSizePixel = 0
NavButton.Position = UDim2.new(0.0090909088, 0, 0.0687830672, 0)
NavButton.Size = UDim2.new(0, 162, 0, 39)
ButtonBackgroun.Name = "ButtonBackgroun"
ButtonBackgroun.Parent = NavButton
ButtonBackgroun.Active = false
ButtonBackgroun.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
ButtonBackgroun.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonBackgroun.BorderSizePixel = 0
ButtonBackgroun.BackgroundTransparency = 1
ButtonBackgroun.Position = UDim2.new(0.050484363, 0, 0.0965607464, 0)
ButtonBackgroun.Selectable = false
ButtonBackgroun.Size = UDim2.new(0, 147, 0, 32)
ButtonBackgroun.Font = Enum.Font.SourceSansSemibold
ButtonBackgroun.Text = ""
ButtonBackgroun.TextColor3 = Color3.fromRGB(255, 255, 255)
ButtonBackgroun.TextSize = 14.000
ButtonBackgroun.TextXAlignment = Enum.TextXAlignment.Left
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = ButtonBackgroun
IconImage.Name = "IconImage"
IconImage.Parent = ButtonBackgroun
IconImage:SetAttribute("NavigationImage", true)
IconImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IconImage.BackgroundTransparency = 1.000
IconImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
IconImage.BorderSizePixel = 0
IconImage.Position = UDim2.new(0.00700000022, 4, 0.134000003, 0)
IconImage.Size = UDim2.new(0, 22, 0, 22)
IconImage.Image = stuff["Icon"] or "http://www.roblox.com/asset/?id=97898636919008"
IconImage.ImageColor3 = Color3.fromRGB(53, 53, 53)
Text.Name = "Text"
Text.Parent = ButtonBackgroun
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.232876718, 0, 0, 0)
Text.Size = UDim2.new(0, 108, 0, 32)
Text.Font = Enum.Font.SourceSansSemibold
Text.Text = "Player"
Text.TextColor3 = Color3.fromRGB(53, 53, 53)
Text.TextSize = 14.000
Text.TextXAlignment = Enum.TextXAlignment.Left

local PAGE1 = Instance.new("ScrollingFrame")
PAGE1.ScrollBarThickness = 1
local function GJLE111_fake_script() 
	local script = Instance.new('LocalScript', PAGE1)
	local ScrollFrame = script.Parent
	local function UpdateScrollFrameSize()
		local contentHeight = 0
		for _, child in pairs(ScrollFrame:GetChildren()) do
			if child:IsA("GuiObject") then
				contentHeight = contentHeight + child.Size.Y.Offset
			end
		end
		ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, contentHeight)
	end
	UpdateScrollFrameSize()
	ScrollFrame.ChildAdded:Connect(UpdateScrollFrameSize)
	ScrollFrame.ChildRemoved:Connect(UpdateScrollFrameSize)
end
coroutine.wrap(GJLE111_fake_script)()

local UICorner1 = Instance.new("UICorner")
local UIListLayout1 = Instance.new("UIListLayout")
local PageInfoTOPOFEVERYPAGE1 = Instance.new("Frame")
local PageIcon1 = Instance.new("Frame")
local rbkaijfasafad = Instance.new("UIListLayout")
rbkaijfasafad.Parent = PageIcon1
rbkaijfasafad.HorizontalAlignment = Enum.HorizontalAlignment.Center
rbkaijfasafad.SortOrder = Enum.SortOrder.LayoutOrder
rbkaijfasafad.VerticalAlignment = Enum.VerticalAlignment.Center
local UICorner_21 = Instance.new("UICorner")
local IconImage1 = Instance.new("ImageLabel")
local PageTitle1 = Instance.new("TextLabel")
local PageDesc1 = Instance.new("TextLabel")
PAGE1.Name = "PAGE"
PAGE1.Parent = MainBackground
PAGE1.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
PAGE1.BorderColor3 = Color3.fromRGB(0, 0, 0)
PAGE1.BorderSizePixel = 0
PAGE1.Position = UDim2.new(0.373100013, 0, 0, 0)
PAGE1.Size = UDim2.new(0, 278, 0, 420)
if new then
    PAGE1.Position = UDim2.new(0.373100013, 0,0, 0)
else
    PAGE1.Position = UDim2.new(0.373100013, 0,1.1, 0)
end
UICorner1.CornerRadius = UDim.new(0, 6)
UICorner1.Parent = PAGE1
UIListLayout1.Parent = PAGE1
UIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
PageInfoTOPOFEVERYPAGE1.Name = "PageInfo(TOPOFEVERYPAGE)"
PageInfoTOPOFEVERYPAGE1.Parent = PAGE1
PageInfoTOPOFEVERYPAGE1.BackgroundColor3 = Color3.fromRGB(255, 170, 255)
PageInfoTOPOFEVERYPAGE1.BackgroundTransparency = 1.000
PageInfoTOPOFEVERYPAGE1.BorderColor3 = Color3.fromRGB(0, 0, 0)
PageInfoTOPOFEVERYPAGE1.BorderSizePixel = 0
PageInfoTOPOFEVERYPAGE1.Size = UDim2.new(0, 278, 0, 50)
PageIcon1.Name = "PageIcon"
PageIcon1.Parent = PageInfoTOPOFEVERYPAGE1
PageIcon1.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
PageIcon1.BorderColor3 = Color3.fromRGB(0, 0, 0)
PageIcon1.BorderSizePixel = 0
PageIcon1.Position = UDim2.new(0.0323740989, 0, 0.200000003, 0)
PageIcon1.Size = UDim2.new(0, 30, 0, 30)
UICorner_21.CornerRadius = UDim.new(0, 4)
UICorner_21.Parent = PageIcon1
IconImage1.Name = "IconImage"
IconImage1.Parent = PageIcon1
IconImage1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IconImage1.BackgroundTransparency = 1.000
IconImage1.BorderColor3 = Color3.fromRGB(0, 0, 0)
IconImage1.BorderSizePixel = 0
IconImage1.Position = UDim2.new(0.0403340645, 4, 0.167333469, 0)
IconImage1.Size = UDim2.new(0, 18, 0, 18)
IconImage1.Image = stuff["Icon"] or "http://www.roblox.com/asset/?id=97898636919008"
IconImage1.ImageColor3 = getgenv().UIThemeColorElysium
IconImage1:SetAttribute("Themeable", true)
PageTitle1.Name = "PageTitle"
PageTitle1.Parent = PageInfoTOPOFEVERYPAGE1
PageTitle1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageTitle1.BackgroundTransparency = 1.000
PageTitle1.BorderColor3 = Color3.fromRGB(0, 0, 0)
PageTitle1.BorderSizePixel = 0
PageTitle1.Position = UDim2.new(0.169064745, 0, 0.200000003, 0)
PageTitle1.Size = UDim2.new(0, 200, 0, 13)
PageTitle1.Font = Enum.Font.SourceSansSemibold
PageTitle1.Text = stuff["Name"]
PageTitle1.TextColor3 = Color3.fromRGB(255, 255, 255)
PageTitle1.TextSize = 14.000
PageTitle1.TextXAlignment = Enum.TextXAlignment.Left
PageDesc1.Name = "PageDesc"
PageDesc1.Parent = PageInfoTOPOFEVERYPAGE1
PageDesc1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageDesc1.BackgroundTransparency = 1.000
PageDesc1.BorderColor3 = Color3.fromRGB(0, 0, 0)
PageDesc1.BorderSizePixel = 0
PageDesc1.Position = UDim2.new(0.169064745, 0, 0.540000021, 0)
PageDesc1.Size = UDim2.new(0, 200, 0, 13)
PageDesc1.Font = Enum.Font.SourceSansSemibold
PageDesc1.Text = stuff["Description"] or ""
if PageDesc1.Text == "" then
PageTitle1.Position = UDim2.new(0.169, 0,0.36, 0)
end

if PageTitle1.Text == "" then
    PageDesc1.Position = UDim2.new(0.169, 0,0.36, 0)
end

PageDesc1.TextColor3 = Color3.fromRGB(124, 124, 124)
PageDesc1.TextSize = 12.000
PageDesc1.TextStrokeColor3 = Color3.fromRGB(132, 132, 132)
PageDesc1.TextXAlignment = Enum.TextXAlignment.Left
local acc = PAGE1
ButtonBackgroun.MouseButton1Click:connect(function()
    if not ButtonBackgroun:GetAttribute("Opened") then
        ButtonBackgroun:SetAttribute("Opened", true)
    pcall(function()
        current_tweening:Cancel()
    end)
    wait()
    pcall(function()
    PAGE1.Position = thepos
    end)
    local tw = game:GetService("TweenService"):Create(PAGE1, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Position = UDim2.new(0.373100013, 0,0, 0)})
    tw:Play()
    current_tweening = tw
end


end)
local function YSCYW_fake_script() -- TabOption.LocalScript 
	local script = Instance.new('LocalScript', TabOption)
	function changethingy()
		local size = 0
		for i,v in pairs(script.Parent:GetChildren()) do
			pcall(function()
				size += v.Size.Y.Offset
			end)
		end
		script.Parent.Size = UDim2.new(script.Parent.Size.X.Scale, script.Parent.Size.X.Offset, script.Parent.Size.Y.Scale, size)
	end
	changethingy()
	script.Parent.ChildAdded:Connect(function(es)
		script.Parent.Size = UDim2.new(script.Parent.Size.X.Scale, script.Parent.Size.X.Offset, script.Parent.Size.Y.Scale, es.Size.Y.Offset + script.Parent.Size.Y.Offset)
	end)
end
coroutine.wrap(YSCYW_fake_script)()
if new then
    ButtonBackgroun:SetAttribute("Opened", true)
    Text.TextColor3 = Color3.fromRGB(255,255,255)
    ButtonBackgroun.BackgroundTransparency = 0
    IconImage.ImageColor3 = getgenv().UIThemeColorElysium
    IconImage:SetAttribute("Themeable", true)
end



if not stuff["Category"] or type(stuff["Category"]) ~= "string" then
NavOrganize:Destroy()
else
for i,v in pairs(TabsNav:GetDescendants()) do
if v.Name == "NavOrganize" then
if v.Text == stuff["Category"] then
    NavButton.Parent = v.Parent
    TabOption:Destroy()
end
end
end
NavOrganize.Text = stuff["Category"]
end

Text.Text = stuff["Name"]





function obj:AddButton(tb)
    local Button = Instance.new("Frame")
    --Button.ZIndex = 1
    local TextButton = Instance.new("TextButton")
    local ImageLabel = Instance.new("ImageLabel")
    local Text = Instance.new("TextLabel")
    local Circle = Instance.new("ImageLabel")
    Button.Name = "Button"
    Button.Parent = acc
    Button.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
    Button.BackgroundTransparency = 1.000
    Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Button.BorderSizePixel = 0
    Button.Position = UDim2.new(0, 0, 0.183333337, 0)
    Button.Size = UDim2.new(0, 278, 0, 29)
    TextButton.Parent = Button
    TextButton.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(0.0320000015, 0, 0.00200000009, 0)
    TextButton.Size = UDim2.new(0, 260, 0, 28)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = ""
    TextButton.AutoButtonColor = false
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextSize = 14.000
    ImageLabel.Parent = TextButton
    ImageLabel.BackgroundColor3 = getgenv().UIThemeColorElysium
    ImageLabel:SetAttribute("Themeable", true)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.903999984, 0, 0.200000003, 0)
    ImageLabel.Size = UDim2.new(0, 18, 0, 18)
    ImageLabel.Image = "http://www.roblox.com/asset/?id=16630151971"
    ImageLabel.ImageColor3 = getgenv().UIThemeColorElysium
    ImageLabel:SetAttribute("Themeable", true)
    Text.Name = "Text"
    Text.Parent = TextButton
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Text.BorderSizePixel = 0
    Text.Position = UDim2.new(0.0400000922, 0, 0, 0)
    Text.Size = UDim2.new(0, 168, 0, 28)
    Text.Font = Enum.Font.SourceSansSemibold
    Text.Text = tb["Name"]
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.TextSize = 13.000
    Text.TextXAlignment = Enum.TextXAlignment.Left
    Circle.Name = "Circle"
    local strok = Instance.new("UIStroke")
    strok.Thickness = 1.2
    strok.Name = "strokethingy"
    strok.Color = Color3.fromRGB(30, 30, 30)
    strok.ApplyStrokeMode = "Border"
    strok.Parent = TextButton
    Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Circle.BackgroundTransparency = 1.000
    Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Circle.ZIndex = 10
    Circle.Image = "rbxassetid://266543268"
    Circle.ImageColor3 = Color3.fromRGB(88, 88, 88)
    Circle.ImageTransparency = 0.600
    local tweenstroke = nil
    TextButton.MouseEnter:connect(function()
        Button.ZIndex = 999
        pcall(function()
            tweenstroke:Cancel()
        end)

        local tween = game:GetService("TweenService"):Create(strok, TweenInfo.new(0.08, Enum.EasingStyle.Linear), {Thickness = 4})
        tweenstroke = tween
        tween:Play()
    end)
    
    TextButton.MouseLeave:connect(function()
        Button.ZIndex = 1
        pcall(function()
            tweenstroke:Cancel()
        end)

        local tween = game:GetService("TweenService"):Create(strok, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {Thickness = 1.2})
        tweenstroke = tween
        tween:Play()
    end)
    TextButton.MouseButton1Click:connect(function()
        tb["Function"]()
    end)
    TextButton.ClipsDescendants = true

    local function EOQI_fake_script()
    local script = Instance.new('LocalScript', TextButton)

    


script.Parent.MouseButton1Down:Connect(function()
	local m = game.Players.LocalPlayer:GetMouse()
	local X, Y = m.X, m.Y
	local Circle = Circle:Clone()
	Circle.Parent = script.Parent
	Circle.Position = UDim2.new(0, X - Circle.AbsolutePosition.X, 0, Y - Circle.AbsolutePosition.Y)

	local Size = math.max(script.Parent.AbsoluteSize.X, script.Parent.AbsoluteSize.Y) * 1.5
	local Time = 0.5

	Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)

	for i = 1, 12 do
		Circle.ImageTransparency = Circle.ImageTransparency + 0.01
		wait(Time / 10)
	end
	
	Circle:Destroy()
end)

    end
    coroutine.wrap(EOQI_fake_script)()
    return Button
end


function obj:AddKeybind(tb)
    
    local strok = Instance.new("UIStroke")
    strok.Thickness = 1.2
    strok.Name = "strokethingy"
    strok.Color = Color3.fromRGB(30, 30, 30)
    strok.ApplyStrokeMode = "Border"
    
    -- Gui to Lua
-- Version: 3.2

-- Instances:

local Keybind = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local Text = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local TextButton_2 = Instance.new("TextButton")

Keybind.Name = "Keybind"
Keybind.Parent = acc
Keybind.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
Keybind.BackgroundTransparency = 1.000
Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
Keybind.BorderSizePixel = 0
Keybind.Position = UDim2.new(0, 0, 0.183333337, 0)
Keybind.Size = UDim2.new(0, 278, 0, 29)
Keybind.ZIndex = 5

TextButton.Parent = Keybind
TextButton.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.ClipsDescendants = true
TextButton.Position = UDim2.new(0.0320000015, 0, 0.00200000009, 0)
TextButton.Size = UDim2.new(0, 260, 0, 28)
TextButton.AutoButtonColor = false
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
strok.Parent = TextButton

ImageLabel.Parent = TextButton
ImageLabel.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.903999984, 0, 0.200000003, 0)
ImageLabel.Size = UDim2.new(0, 18, 0, 18)
ImageLabel.Image = "http://www.roblox.com/asset/?id=16630151971"
ImageLabel.ImageColor3 = Color3.fromRGB(85, 170, 255)
ImageLabel:SetAttribute("Themeable", true)
Text.Name = "Text"
Text.Parent = TextButton
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.0400000922, 0, 0, 0)
Text.Size = UDim2.new(0, 168, 0, 28)
Text.Font = Enum.Font.SourceSansSemibold
Text.Text = tb["Name"]
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 13.000
Text.TextXAlignment = Enum.TextXAlignment.Left

Frame.Parent = Keybind
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.449999988, 0, 0.126000002, 0)
Frame.Size = UDim2.new(0, 100, 0, 20)

UIListLayout.Parent = Frame
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 5)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.ClipsDescendants = true
TextButton_2.Position = UDim2.new(0.25999999, 0, 0.0250000004, 0)
TextButton_2.Size = UDim2.new(0, 82, 0, 19)
TextButton_2.AutoButtonColor = false
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = tb['Default'].Name or "No Key"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 14.000
strok:Clone().Parent = TextButton_2

-- Scripts:

local function QLNVQN_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	
	
	local userInputService = game:GetService("UserInputService")
	local function getmyebasdasda()
		script.Parent.Text = "..."
	
		local inputEvent
		inputEvent = userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
			if not gameProcessedEvent then
				wait(0.05)
				if tostring(input.KeyCode.Name) ~= "Unknown" then
				
					tb['Function'](input.KeyCode)
                    script.Parent.Text = "" .. tostring(input.KeyCode.Name)

				else
					tb['Function'](input.UserInputType)
                    script.Parent.Text = "" .. tostring(input.UserInputType.Name)

				end
				inputEvent:Disconnect()
			end
		end)
	end
	
	
	script.Parent.MouseButton1Click:Connect(getmyebasdasda)
	
end
coroutine.wrap(QLNVQN_fake_script)()


    return Keybind
end








function obj:AddButtonInput(tb)
    local Button = Instance.new("Frame")
    --Button.ZIndex = 1
    local TextButton = Instance.new("TextButton")
    local ImageLabel = Instance.new("ImageLabel")
    local Text = Instance.new("TextLabel")
    local Circle = Instance.new("ImageLabel")
    Button.Name = "Button"
    Button.Parent = acc
    Button.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
    Button.BackgroundTransparency = 1.000
    Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Button.BorderSizePixel = 0
    Button.Position = UDim2.new(0, 0, 0.183333337, 0)
    Button.Size = UDim2.new(0, 278, 0, 29)
    TextButton.Parent = Button
    TextButton.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(0.0320000015, 0, 0.00200000009, 0)
    TextButton.Size = UDim2.new(0, 260, 0, 28)
    TextButton.Font = Enum.Font.SourceSans
    TextButton.Text = ""
    TextButton.AutoButtonColor = false
    TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.TextSize = 14.000
    ImageLabel.Parent = TextButton
    ImageLabel.BackgroundColor3 = getgenv().UIThemeColorElysium
    ImageLabel:SetAttribute("Themeable", true)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.903999984, 0, 0.200000003, 0)
    ImageLabel.Size = UDim2.new(0, 18, 0, 18)
    ImageLabel.Image = "http://www.roblox.com/asset/?id=16630151971"
    ImageLabel.ImageColor3 = getgenv().UIThemeColorElysium
    ImageLabel:SetAttribute("Themeable", true)
    Text.Name = "Text"
    Text.Parent = TextButton
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Text.BorderSizePixel = 0
    Text.Position = UDim2.new(0.0400000922, 0, 0, 0)
    Text.Size = UDim2.new(0, 168, 0, 28)
    Text.Font = Enum.Font.SourceSansSemibold
    Text.Text = tb["Name"]
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.TextSize = 13.000
    Text.TextXAlignment = Enum.TextXAlignment.Left
    Circle.Name = "Circle"
    local strok = Instance.new("UIStroke")
    strok.Thickness = 1.2
    strok.Name = "strokethingy"
    strok.Color = Color3.fromRGB(30, 30, 30)
    strok.ApplyStrokeMode = "Border"
    strok.Parent = TextButton
    Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Circle.BackgroundTransparency = 1.000
    Circle.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Circle.ZIndex = 10
    Circle.Image = "rbxassetid://266543268"
    Circle.ImageColor3 = Color3.fromRGB(88, 88, 88)
    Circle.ImageTransparency = 0.600
    local tweenstroke = nil
    TextButton.MouseEnter:connect(function()
        Button.ZIndex = 999
        pcall(function()
            tweenstroke:Cancel()
        end)

        local tween = game:GetService("TweenService"):Create(strok, TweenInfo.new(0.08, Enum.EasingStyle.Linear), {Thickness = 4})
        tweenstroke = tween
        tween:Play()
    end)
    
    TextButton.MouseLeave:connect(function()
        Button.ZIndex = 1
        pcall(function()
            tweenstroke:Cancel()
        end)

        local tween = game:GetService("TweenService"):Create(strok, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {Thickness = 1.2})
        tweenstroke = tween
        tween:Play()
    end)
    TextButton.MouseButton1Click:connect(function()
        tb["Function"]()
    end)
    TextButton.ClipsDescendants = true

    local function EOQI_fake_script()
    local script = Instance.new('LocalScript', TextButton)

    


script.Parent.MouseButton1Down:Connect(function()
	local m = game.Players.LocalPlayer:GetMouse()
	local X, Y = m.X, m.Y
	local Circle = Circle:Clone()
	Circle.Parent = script.Parent
	Circle.Position = UDim2.new(0, X - Circle.AbsolutePosition.X, 0, Y - Circle.AbsolutePosition.Y)

	local Size = math.max(script.Parent.AbsoluteSize.X, script.Parent.AbsoluteSize.Y) * 1.5
	local Time = 0.5

	Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)

	for i = 1, 12 do
		Circle.ImageTransparency = Circle.ImageTransparency + 0.01
		wait(Time / 10)
	end
	
	Circle:Destroy()
end)

    end
    coroutine.wrap(EOQI_fake_script)()


    local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local TextBox = Instance.new("TextBox")
Frame.Parent = Button
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.389977753, 0, 0.125999719, 0)
Frame.Size = UDim2.new(0, 100, 0, 20)

UIListLayout.Parent = Frame
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.119999997, 0, 0, 0)
TextBox.Size = UDim2.new(0, 88, 0, 20)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.PlaceholderText = "..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
local strok = Instance.new("UIStroke")


    strok.Thickness = 1.2
    strok.Name = "strokethingy"
    strok.Color = Color3.fromRGB(30, 30, 30)
    strok.ApplyStrokeMode = "Border"
    strok.Parent = TextBox

local function HKDL_fake_script() -- TextBox.LocalScript 
	local script = Instance.new('LocalScript', TextBox)

	script.Parent.FocusLost:Connect(function()
		tb["SignalText"](true, script.Parent.Text, TextBox)
	end)
	
	script.Parent:GetPropertyChangedSignal("Text"):Connect(function()
		tb["SignalText"](false, script.Parent.Text, TextBox)
	end)
end
coroutine.wrap(HKDL_fake_script)()

    return Button
end

function obj:AddToggle(tb)
    
local Toggle = Instance.new("Frame")
local strok = Instance.new("UIStroke")
local Frame = Instance.new("Frame")
local Toggle_2 = Instance.new("Frame")
strok.Thickness = 1.2
strok.Name = "strokethingy"
strok.Color = Color3.fromRGB(30, 30, 30)
strok.ApplyStrokeMode = "Border"
strok.Parent = Frame
local UICorner = Instance.new("UICorner")
local Toggle_3 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Text = Instance.new("TextLabel")
Toggle.Name = "Toggle"
Toggle.Parent = acc
Toggle.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0, 0, 0.183333337, 0)
Toggle.Size = UDim2.new(0, 278, 0, 29)
Frame.Parent = Toggle
Frame.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0323740989, 0, 0.00185841531, 0)
Frame.Size = UDim2.new(0, 260, 0, 28)
Toggle_2.Name = "Toggle"
Toggle_2.Parent = Frame
Toggle_2.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
Toggle_2:SetAttribute("Themeable", false)
Toggle_2.BackgroundTransparency = 0.500
Toggle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_2.BorderSizePixel = 0
Toggle_2.Position = UDim2.new(0.864898682, 0, 0.241000578, 0)
Toggle_2.Size = UDim2.new(0, 29, 0, 14)
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Toggle_2
Toggle_3.Name = "Toggle"
Toggle_3.Parent = Toggle_2
Toggle_3.Active = false
Toggle_3.BackgroundColor3 = getgenv().UIThemeColorElysium
Toggle_3:SetAttribute("Themeable", true)
Toggle_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_3.BorderSizePixel = 0
Toggle_3.Selectable = false
Toggle_3.Size = UDim2.new(0, 14, 0, 14)
Toggle_3.Text = ""
UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = Toggle_3
Text.Name = "Text"
Text.Parent = Frame
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.0399999991, 0, 0, 0)
Text.Size = UDim2.new(0, 190, 0, 28)
Text.Font = Enum.Font.SourceSansSemibold
Text.Text = tb["Name"]
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 13.000
Text.TextXAlignment = Enum.TextXAlignment.Left
local function ATIPE_fake_script()
	local script = Instance.new('LocalScript', Toggle_3)

	local toggle = false
	script.Parent.MouseButton1Click:Connect(function()
		if not toggle then
			local tween = game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Position = UDim2.new(0.515, 0,0, 0)})
			tween:Play()
			
			local tween = game:GetService("TweenService"):Create(script.Parent.Parent, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundColor3 = getgenv().UIThemeColorElysium})
			tween:Play()
			toggle = true
		else
			local tween = game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Position = UDim2.new(0, 0,0, 0)})
			tween:Play()
			
			local tween = game:GetService("TweenService"):Create(script.Parent.Parent, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(66, 66, 66)})
			tween:Play()
			toggle = false
		end
        tb["Function"](toggle)
        Toggle_3:SetAttribute("IsToggled", toggle)
	end)
	
	
end
coroutine.wrap(ATIPE_fake_script)()

    return Toggle
end


function obj:AddDropdown(tb)
    
    local Dropdown = Instance.new("Frame")
local Frame = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
    local strok = Instance.new("UIStroke")
    
    strok.Thickness = 1.2
    strok.Name = "strokethingy"
    strok.Color = Color3.fromRGB(30, 30, 30)
    strok.ApplyStrokeMode = "Border"
    strok.Parent = Frame


    

local DropDownList = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayoutFOORDOP = Instance.new("UIListLayout")
UIListLayoutFOORDOP.Parent = ScrollingFrame
UIListLayoutFOORDOP.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayoutFOORDOP.SortOrder = Enum.SortOrder.LayoutOrder

local TextBox = Instance.new("TextBox")
local TextButtonda = Instance.new("TextButton")
DropDownList.Name = "DropDown List"
DropDownList.Visible = false
DropDownList.Parent = MainBackground
DropDownList.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
DropDownList.BackgroundTransparency = 0.500
DropDownList.BorderColor3 = Color3.fromRGB(0, 0, 0)
DropDownList.BorderSizePixel = 0
DropDownList.Position = UDim2.new(0.373099923, 0, 0.0546318293, 0)
DropDownList.Size = UDim2.new(0, 278, 0, 397)
DropDownList.ZIndex = 123123123
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = DropDownList
UIListLayout.Parent = DropDownList
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 10)
ScrollingFrame.Parent = DropDownList
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
strok:Clone().Parent = ScrollingFrame
ScrollingFrame.Position = UDim2.new(0.0287769791, 0, 0.119185671, 0)
ScrollingFrame.Size = UDim2.new(0, 262, 0, 251)
ScrollingFrame.ScrollBarThickness = 1
TextBox.Parent = DropDownList
TextBox.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
strok:Clone().Parent = TextBox
TextBox.Position = UDim2.new(0.140287772, 0, 0.837531507, 0)
TextBox.Size = UDim2.new(0, 200, 0, 30)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Search"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000

TextBox:GetPropertyChangedSignal("Text"):connect(function()
    for _,v in pairs(ScrollingFrame:GetChildren()) do
        if v:IsA("TextButton") then
        local lower = string.lower(TextBox.Text)
        local lowerplayer = string.lower(v.Text)

        if string.match(lowerplayer,lower) then
            v.Visible = true
        else
            v.Visible = false
        end
    end
    end
end)
TextButtonda.Parent = DropDownList
TextButtonda.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextButtonda.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButtonda.BorderSizePixel = 0
TextButtonda.Position = UDim2.new(0.147482008, 0, 0.835012615, 0)
TextButtonda.Size = UDim2.new(0, 214, 0, 35)
strok:Clone().Parent = TextButtonda
TextButtonda.Font = Enum.Font.SourceSans
TextButtonda.Text = "Close"
TextButtonda.TextColor3 = Color3.fromRGB(208, 208, 208)
TextButtonda.TextSize = 14.000
local function EETWTCT_fake_script() -- ScrollingFrame.autoscale 
	local script = Instance.new('LocalScript', ScrollingFrame)

	local ScrollFrame = script.Parent
	local function UpdateScrollFrameSize()
		local contentHeight = 0
		for _, child in pairs(ScrollFrame:GetChildren()) do
			if child:IsA("GuiObject") then
				contentHeight = contentHeight + child.Size.Y.Offset
			end
		end
		ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, contentHeight)
	end
	UpdateScrollFrameSize()
	ScrollFrame.ChildAdded:Connect(UpdateScrollFrameSize)
	ScrollFrame.ChildRemoved:Connect(UpdateScrollFrameSize)
end
coroutine.wrap(EETWTCT_fake_script)()
local function CLGZ_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButtonda)

	script.Parent.MouseButton1Click:Connect(function()
        
		script.Parent.Parent.TextBox.Text = ""
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(CLGZ_fake_script)()





Dropdown.Name = "Dropdown"
Dropdown.Parent = acc
Dropdown.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
Dropdown.BackgroundTransparency = 1.000
Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dropdown.BorderSizePixel = 0
Dropdown.Position = UDim2.new(0, 0, 0.183333337, 0)
Dropdown.Size = UDim2.new(0, 278, 0, 29)

Frame.Name = "Frame"
Frame.Parent = Dropdown
Frame.Active = false
Frame.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0323740989, 0, 0.00185841531, 0)
Frame.Selectable = false
Frame.Size = UDim2.new(0, 260, 0, 28)
Frame.Text = ""

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.ClipsDescendants = true
TextButton.Position = UDim2.new(0.0369229838, 0, 0, 0)
TextButton.Size = UDim2.new(0, 250, 0, 28)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = tb["Name"]
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 12.000
TextButton.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.919230759, 0, 0.321428567, 0)
ImageLabel.Rotation = 180.000
ImageLabel.Size = UDim2.new(0, 10, 0, 10)
ImageLabel.Image = "http://www.roblox.com/asset/?id=17475089042"

-- Scripts:

local function QBONV_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local opened = false
	local theirtween = nil
    local tweenstroke = nil

    script.Parent.MouseEnter:connect(function()
        script.Parent.Parent.Parent.ZIndex = 999
        pcall(function()
            tweenstroke:Cancel()
        end)
        pcall(function()
            theirtween:Cancel()
        end)
        local tween = game:GetService("TweenService"):Create(strok, TweenInfo.new(0.08, Enum.EasingStyle.Linear), {Thickness = 4})
        tweenstroke = tween
        tween:Play()

        local tween2 = game:GetService("TweenService"):Create(script.Parent.Parent.ImageLabel, TweenInfo.new(0.2), {Rotation = 180})
		theirtween = tween2
		tween2:Play()


    end)
    
    script.Parent.MouseLeave:connect(function()
        script.Parent.Parent.Parent.ZIndex = 1
        pcall(function()
            tweenstroke:Cancel()
        end)
        pcall(function()
            theirtween:Cancel()
        end)
    
        local tween = game:GetService("TweenService"):Create(strok, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {Thickness = 1.2})
        tweenstroke = tween
        tween:Play()

        local tween2 = game:GetService("TweenService"):Create(script.Parent.Parent.ImageLabel, TweenInfo.new(0.2), {Rotation = 0})
		theirtween = tween2
		tween2:Play()

    end)


	script.Parent.MouseButton1Click:Connect(function()
        DropDownList.Visible = not DropDownList.Visible
        for i,v in pairs(ScrollingFrame:GetChildren()) do
            if v:IsA('TextButton') then
                v:Destroy()
            end
        end

		for i,v in pairs(tb["Objects"]()) do
            local dropbtn = Instance.new("TextButton")
            strok:Clone().Parent = dropbtn
dropbtn.Parent = ScrollingFrame
dropbtn.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
dropbtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
dropbtn.BorderSizePixel = 0
dropbtn.Position = UDim2.new(0.0381679386, 0, 0.00859768968, 0)
dropbtn.Size = UDim2.new(0, 259,0, 32)
dropbtn.Font = Enum.Font.SourceSans
dropbtn.TextColor3 = Color3.fromRGB(255, 255, 255)
dropbtn.TextSize = 14.000
dropbtn.Text = v

dropbtn.MouseButton1Click:connect(function()
    DropDownList.Visible = not DropDownList.Visible
    tb["Function"](v)
    if tb["SaveSelection"] == true then
        TextButton.Text = v
    end
end)



        end
	end)
end
coroutine.wrap(QBONV_fake_script)()


    end


function obj:AddToggleInput(tb)
    
    local Toggle = Instance.new("Frame")
    local strok = Instance.new("UIStroke")
    local Frame = Instance.new("Frame")
    local Toggle_2 = Instance.new("Frame")
    strok.Thickness = 1.2
    strok.Name = "strokethingy"
    strok.Color = Color3.fromRGB(30, 30, 30)
    strok.ApplyStrokeMode = "Border"
    strok.Parent = Frame
    local UICorner = Instance.new("UICorner")
    local Toggle_3 = Instance.new("TextButton")
    local UICorner_2 = Instance.new("UICorner")
    local Text = Instance.new("TextLabel")
    Toggle.Name = "Toggle"
    Toggle.Parent = acc
    Toggle.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
    Toggle.BackgroundTransparency = 1.000
    Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Toggle.BorderSizePixel = 0
    Toggle.Position = UDim2.new(0, 0, 0.183333337, 0)
    Toggle.Size = UDim2.new(0, 278, 0, 29)
    Frame.Parent = Toggle
    Frame.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.0323740989, 0, 0.00185841531, 0)
    Frame.Size = UDim2.new(0, 260, 0, 28)
    Toggle_2.Name = "Toggle"
    Toggle_2.Parent = Frame
    Toggle_2.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
    Toggle_2.BackgroundTransparency = 0.500
    Toggle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Toggle_2.BorderSizePixel = 0
    Toggle_2.Position = UDim2.new(0.864898682, 0, 0.241000578, 0)
    Toggle_2.Size = UDim2.new(0, 29, 0, 14)
    
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = Toggle_2
    Toggle_3.Name = "Toggle"
    Toggle_3.Parent = Toggle_2
    Toggle_3.Active = false
    Toggle_3.BackgroundColor3 = getgenv().UIThemeColorElysium
    Toggle_3:SetAttribute("Themeable", true)
    Toggle_3:SetAttribute("IsToggled", false)
    Toggle_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Toggle_3.BorderSizePixel = 0
    Toggle_3.Selectable = false
    Toggle_3.Size = UDim2.new(0, 14, 0, 14)
    Toggle_3.Text = ""
    UICorner_2.CornerRadius = UDim.new(0, 10)
    UICorner_2.Parent = Toggle_3
    Text.Name = "Text"
    Text.Parent = Frame
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Text.BorderSizePixel = 0
    Text.Position = UDim2.new(0.0399999991, 0, 0, 0)
    Text.Size = UDim2.new(0, 190, 0, 28)
    Text.Font = Enum.Font.SourceSansSemibold
    Text.Text = tb["Name"]
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.TextSize = 13.000
    Text.TextXAlignment = Enum.TextXAlignment.Left

    

local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local TextBox = Instance.new("TextBox")
Frame.Parent = Toggle
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.389977753, 0, 0.125999719, 0)
Frame.Size = UDim2.new(0, 100, 0, 20)

UIListLayout.Parent = Frame
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.119999997, 0, 0, 0)
TextBox.Size = UDim2.new(0, 88, 0, 20)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.PlaceholderText = "..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
local strok = Instance.new("UIStroke")


    strok.Thickness = 1.2
    strok.Name = "strokethingy"
    strok.Color = Color3.fromRGB(30, 30, 30)
    strok.ApplyStrokeMode = "Border"
    strok.Parent = TextBox

local function HKDL_fake_script() -- TextBox.LocalScript 
	local script = Instance.new('LocalScript', TextBox)

	script.Parent.FocusLost:Connect(function()
		tb["SignalText"](true, script.Parent.Text, TextBox)
	end)
	
	script.Parent:GetPropertyChangedSignal("Text"):Connect(function()
		tb["SignalText"](false, script.Parent.Text, TextBox)
	end)
end
coroutine.wrap(HKDL_fake_script)()



    local function ATIPE_fake_script()
        local script = Instance.new('LocalScript', Toggle_3)
    
        local toggle = false
        script.Parent.MouseButton1Click:Connect(function()
            if not toggle then
                local tween = game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Position = UDim2.new(0.515, 0,0, 0)})
                tween:Play()
                
                local tween = game:GetService("TweenService"):Create(script.Parent.Parent, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundColor3 = getgenv().UIThemeColorElysium})
                tween:Play()
                toggle = true
            else
                local tween = game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Position = UDim2.new(0, 0,0, 0)})
                tween:Play()
                
                local tween = game:GetService("TweenService"):Create(script.Parent.Parent, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(66, 66, 66)})
                tween:Play()
                toggle = false
            end
            tb["Function"](toggle)
            Toggle_3:SetAttribute("IsToggled", toggle)
        end)
        
        
    end
    coroutine.wrap(ATIPE_fake_script)()
    
        return Toggle
    end



function obj:AddSlider(tb)
    local Slider = Instance.new("Frame")
local Frame = Instance.new("Frame")
local strok = Instance.new("UIStroke")
    strok.Thickness = 1.2
    strok.Name = "strokethingy"
    strok.Color = Color3.fromRGB(30, 30, 30)
    strok.ApplyStrokeMode = "Border"
    strok.Parent = Frame
local Text = Instance.new("TextLabel")
local Slider_2 = Instance.new("Frame")
local Slider_3 = Instance.new("TextButton")
local Bar = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local circ = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local UICorner_4 = Instance.new("UICorner")
local SlideValue = Instance.new("TextLabel")
Slider.Name = "Slider"
Slider.Parent = acc
Slider.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
Slider.BackgroundTransparency = 1.000
Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider.BorderSizePixel = 0
Slider.Position = UDim2.new(0, 0, 0.454761893, 0)
Slider.Size = UDim2.new(0, 278, 0, 45)
Frame.Parent = Slider
Frame.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0323740989, 0, 0.00181977649, 0)
Frame.Size = UDim2.new(0, 260, 0, 44)
Text.Name = "Text"
Text.Parent = Frame
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.0399999991, 0, 0, 0)
Text.Size = UDim2.new(0, 190, 0, 28)
Text.Font = Enum.Font.SourceSansSemibold
Text.Text = tb["Name"]
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 13.000
Text.TextXAlignment = Enum.TextXAlignment.Left
Slider_2.Name = "Slider"
Slider_2.Parent = Frame
Slider_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Slider_2.BackgroundTransparency = 1.000
Slider_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider_2.BorderSizePixel = 0
Slider_2.Position = UDim2.new(0.0400000922, 0, 0.479015589, 0)
Slider_2.Size = UDim2.new(0.93643713, 0, 0.436586678, 0)
Slider_3.Name = "Slider"
Slider_3.Parent = Slider_2
Slider_3.AnchorPoint = Vector2.new(0.5, 0.5)
Slider_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Slider_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Slider_3.BorderSizePixel = 0
Slider_3.Position = UDim2.new(0.487624645, 0, 0.500000954, 0)
Slider_3.Size = UDim2.new(0.968233645, 0, 0.233772963, 0)
Slider_3.Font = Enum.Font.Cartoon
Slider_3.Text = ""
Slider_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Slider_3.TextSize = 14.000
Bar.Name = "Bar"
Bar.Parent = Slider_3
Bar.BackgroundColor3 = getgenv().UIThemeColorElysium
Bar:SetAttribute("Themeable", true)
Bar.BorderColor3 = Color3.fromRGB(27, 42, 53)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(2.26298835e-06, 0, 0, 0)
Bar.Size = UDim2.new(0.971160114, 0, 0.973472655, 0)
UICorner.Parent = Bar
UICorner_2.Parent = Slider_3
circ.Name = "circ"
circ.Parent = Slider_3
circ.BackgroundColor3 = getgenv().UIThemeColorElysium
circ:SetAttribute("Themeable", true)
circ.BorderColor3 = Color3.fromRGB(0, 0, 0)
circ.BorderSizePixel = 0
circ.Position = UDim2.new(0.968999982, 0, -1, 0)
circ.Size = UDim2.new(0, 13, 0, 13)
circ.Font = Enum.Font.SourceSans
circ.Text = ""
circ.TextColor3 = Color3.fromRGB(0, 0, 0)
circ.TextSize = 14.000
UICorner_3.Parent = circ
UIListLayout.Parent = Slider_3
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, -6)
UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Slider_2
SlideValue.Name = "SlideValue"
SlideValue.Parent = Frame
SlideValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SlideValue.BackgroundTransparency = 1.000
SlideValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
SlideValue.BorderSizePixel = 0
SlideValue.Position = UDim2.new(0.619230747, 0, 0.13636364, 0)
SlideValue.Size = UDim2.new(0, 92, 0, 16)
SlideValue.Font = Enum.Font.FredokaOne
SlideValue.Text = "100"
SlideValue.TextColor3 = Color3.fromRGB(154, 154, 154)
SlideValue.TextSize = 10.000
SlideValue.TextXAlignment = Enum.TextXAlignment.Right
local function CHBDQ_fake_script() -- Slider_2.slide 
	local script = Instance.new('LocalScript', Slider_2)

	local minimum = tb["Min"]
	local maximum = tb["Max"]
	local initial = tb["Initial"]
	
	local slider = script.Parent.Slider
	local bar = slider.Bar
	local mouse = game.Players.LocalPlayer:GetMouse()
	local hov = script.Parent.Slider.circ
	local held = false
	local initialScale = (initial - minimum) / (maximum - minimum)
	bar.Size = UDim2.new(initialScale, 0, 1, 0)
	script.Parent.Parent.SlideValue.Text = tostring(initial)
	slider.MouseButton1Down:Connect(function()
		held = true
		local mouseX = game.Players.LocalPlayer:GetMouse().X
		bar.Size = UDim2.new(math.clamp((mouseX - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1), 0, 1, 0)
		script.Parent.Parent.SlideValue.Text = tostring(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum))

        tb["Function"](tonumber(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum)))
	end)
	hov.MouseButton1Down:Connect(function()
		held = true
		local mouseX = game.Players.LocalPlayer:GetMouse().X
		bar.Size = UDim2.new(math.clamp((mouseX - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1), 0, 1, 0)
		script.Parent.Parent.SlideValue.Text = tostring(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum))
        tb["Function"](tonumber(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum)))
	end)
	game:GetService("UserInputService").InputEnded:Connect(function(input, gp)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			held = false
		end
	end)
	mouse.Move:Connect(function()
		if held then
			local mouseX = game.Players.LocalPlayer:GetMouse().X
			bar.Size = UDim2.new(math.clamp((mouseX - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1), 0, 1, 0)
			script.Parent.Parent.SlideValue.Text = tostring(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum))
            tb["Function"](tonumber(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum)))
		end
	end)
	
end
coroutine.wrap(CHBDQ_fake_script)()

    
    
        return Slider
    end





    function obj:AddLabel(tb)
        local Textabel = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Text = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
Textabel.Name = "Textabel"
Textabel.Parent = PAGE1
Textabel.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
Textabel.BackgroundTransparency = 1.000
Textabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Textabel.BorderSizePixel = 0
Textabel.Position = UDim2.new(0, 0, 0.183333337, 0)
Textabel.Size = UDim2.new(0, 278, 0, 29)
Frame.Parent = Textabel
Frame.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0323740989, 0, 0.00185841531, 0)
Frame.Size = UDim2.new(0, 260, 0, 28)
Text.Name = "Text"
Text.Parent = Frame
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.0400000922, 0, 0, 0)
Text.Size = UDim2.new(0, 150, 0, 28)
Text.Font = Enum.Font.SourceSansSemibold
Text.Text = tb["Text"]
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 13.000
Text.TextXAlignment = Enum.TextXAlignment.Left
--[[ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.903999984, 0, 0.200000003, 0)
ImageLabel.Size = UDim2.new(0, 18, 0, 18)
ImageLabel.Image = "http://www.roblox.com/asset/?id=18478181103"
ImageLabel.ImageColor3 = Color3.fromRGB(85, 170, 255)]]--
coroutine.wrap(function()
if tb["Color"] == true then
while true do
	pcall(function()
	for i = 0,1,0.01 do
		Text.TextColor3 = Color3.fromHSV(i,1,1)
        --ImageLabel.ImageColor3 = Color3.fromHSV(i,1,1)
		wait(0.003)
		end
	end)
end
end
end)()
        
        
            return Textabel
        end






return obj

end --end of func






    local UIListLayout = Instance.new("UIListLayout")
    TabsNav.Name = "TabsNav"
    local function MUPEKD_fake_script() -- TabsNav.Click 
        local script = Instance.new('LocalScript', TabsNav)
        local buttons = {}
        local offtw = nil
function registerbtn(v)
--for i,v in pairs(script.Parent:GetDescendants()) do
    
	--pcall(function()
    
		if v.Name == "ButtonBackgroun" and not v:GetAttribute("Iterated") then
			table.insert(buttons, v)
			v:SetAttribute("Iterated", true)
				v.MouseButton1Click:connect(function()
                    
                    if not v:GetAttribute("Opened") then
                    local offset = 1.1
                    for i,che in pairs(buttons) do
                        if che == v then
                            if i < indexedrn then
                                offset = 1.1
                                thepos = UDim2.new(0.373100013, 0,-1.1, 0)
                            elseif i > indexedrn then
                                offset = -1.1
                                thepos = UDim2.new(0.373100013, 0,1.1, 0)
                            else
                                thepos = UDim2.new(0.373100013, 0,0, 0)
                            end
                            indexedrn = i
                        end
                    end
                    for i,z in pairs(MainBackground:GetChildren()) do
                        if z.Name == "PAGE" then
                            pcall(function()
                                offtw:Cancel()
                            end)
                          --  z.Position = UDim2.new(0.373100013, 0,1.1, 0)
                            local tw = game:GetService("TweenService"):Create(z, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Position = UDim2.new(0.373100013, 0,offset, 0)})
                            tw:Play()
                            offtf = tw
                        end
                    end
					for i,s in pairs(buttons) do
                        s:SetAttribute("Opened", false)

                        
						game:GetService("TweenService"):Create(s:FindFirstChildWhichIsA("TextLabel"), TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(53, 53, 53)}):Play()
						game:GetService("TweenService"):Create(s, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
						game:GetService("TweenService"):Create(s.IconImage, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(53, 53, 53)}):Play()
					end

					game:GetService("TweenService"):Create(v:FindFirstChildWhichIsA("TextLabel"), TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
					game:GetService("TweenService"):Create(v, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
					game:GetService("TweenService"):Create(v.IconImage, TweenInfo.new(0.2), {ImageColor3 = getgenv().UIThemeColorElysium}):Play()
				end
            end)
		end
    
	--end)
--end
end
--registerbtn()
TabsNav.ChildAdded:Connect(function(c)
    if c:IsA("Frame") then
	registerbtn(c:WaitForChild("NavButton"):WaitForChild("ButtonBackgroun"))
    end
end)
    end
    coroutine.wrap(MUPEKD_fake_script)()

    TabsNav.Parent = MainBackground
    TabsNav.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
    TabsNav.BackgroundTransparency = 1.000
    TabsNav.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabsNav.BorderSizePixel = 0
    TabsNav.Position = UDim2.new(0, 0, 0.102137767, 0)
    TabsNav.Size = UDim2.new(0, 165, 0, 378)
    UIListLayout.Parent = TabsNav
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder


touilib.Name = "toui;lib"
touilib.Parent = game.CoreGui
touilib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling





MainBackground.Name = "MainBackground"
MainBackground.Parent = touilib
MainBackground.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
MainBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainBackground.BorderSizePixel = 0
MainBackground.Position = UDim2.new(0.376762927, 0, 0.237562194, 0)
MainBackground.Size = UDim2.new(0, 444, 0, 421)



UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = MainBackground

TitleLeave.Name = "TitleLeave"
TitleLeave.Parent = MainBackground
TitleLeave.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
TitleLeave.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLeave.BorderSizePixel = 0
TitleLeave.Position = UDim2.new(0.0217983481, 0, 0.0166270789, 0)
TitleLeave.Size = UDim2.new(0, 149, 0, 29)

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = TitleLeave

TextLabel.Parent = TitleLeave
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 149, 0, 29)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = title or "..."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = MainBackground
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6014261993"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
local function dragasdosacirprgt0iasojdasdasrsafasfdqrasf()
	local script = Instance.new('LocalScript', MainBackground)
	local a=game:GetService("UserInputService")local b=game:GetService("RunService")local c=script.Parent;local d;local e;local f;local g;function Lerp(h,i,j)return h+(i-h)*j end;local k;local l;local m=8;function Update(n)if not g then return end;if not d and l then c.Position=UDim2.new(g.X.Scale,Lerp(c.Position.X.Offset,l.X.Offset,n*m),g.Y.Scale,Lerp(c.Position.Y.Offset,l.Y.Offset,n*m))return end;local o=k-a:GetMouseLocation()local p=g.X.Offset-o.X;local q=g.Y.Offset-o.Y;l=UDim2.new(g.X.Scale,p,g.Y.Scale,q)c.Position=UDim2.new(g.X.Scale,Lerp(c.Position.X.Offset,p,n*m),g.Y.Scale,Lerp(c.Position.Y.Offset,q,n*m))end;c.InputBegan:Connect(function(r)if r.UserInputType==Enum.UserInputType.MouseButton1 or r.UserInputType==Enum.UserInputType.Touch then d=true;f=r.Position;g=c.Position;k=a:GetMouseLocation()r.Changed:Connect(function()if r.UserInputState==Enum.UserInputState.End then d=false end end)end end)c.InputChanged:Connect(function(r)if r.UserInputType==Enum.UserInputType.MouseMovement or r.UserInputType==Enum.UserInputType.Touch then e=r end end)b.Heartbeat:Connect(Update)
end
coroutine.wrap(dragasdosacirprgt0iasojdasdasrsafasfdqrasf)()

coroutine.wrap(function()
   -- wait(400)
    --touilib:Destroy()
end)()




    
    return funcs
end


return lib
