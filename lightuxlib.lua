local library = {}

function library:CreateGui(parameters)
    local ThemeColor, GuiFunctions, Pages, UIElements, CurrentPage, Minimized = Color3.fromRGB(85, 170, 255), {}, {}, {}, nil, false
    local LightuxUILibRedo = Instance.new("ScreenGui")
    if get_hidden_gui or gethui then
        local hiddenUI = get_hidden_gui or gethui
        LightuxUILibRedo.Parent = hiddenUI()
    else
        for i,v in pairs(game:GetChildren()) do
            if v:IsA("CoreGui") then
                LightuxUILibRedo.Parent = v
            end
        end
    end
    local Draggable = Instance.new("Frame")
    local Mainframe = Instance.new("Frame")
    local DropShadowHolder = Instance.new("Frame")
    local DropShadow = Instance.new("ImageLabel")
    local UIListLayout = Instance.new("UIListLayout")
    local UICorner = Instance.new("UICorner")
    local Tabs = Instance.new("ScrollingFrame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local TopTitle = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local TopTitles = Instance.new("Folder")
    local Frame = Instance.new("Frame")
    local TopName = Instance.new("TextLabel")
    local UIListLayout_3 = Instance.new("UIListLayout")
    local GameName = Instance.new("TextLabel")
    local UIListLayout_4 = Instance.new("UIListLayout")
    local Minimize = Instance.new("ImageButton")
    local Maximize = Instance.new("TextButton")
    local Openable = Instance.new("TextLabel")
    LightuxUILibRedo.Name = "LightuxUILibRedo123"
    LightuxUILibRedo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    LightuxUILibRedo.ResetOnSpawn = false
    Draggable.Name = "Draggable"
    Draggable.Parent = LightuxUILibRedo
    Draggable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Draggable.BackgroundTransparency = 1.000
    Draggable.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Draggable.BorderSizePixel = 0
    Draggable.Size = UDim2.new(0, 330, 0, 50)
    Mainframe.Name = "Mainframe"
    Mainframe.Parent = Draggable
    Mainframe.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Mainframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Mainframe.BorderSizePixel = 0
    Mainframe.Position = UDim2.new(-0.00966519397, 0, -0.00736206071, 0)
    Mainframe.Size = UDim2.new(0, 336, 0, 369)
    DropShadowHolder.Name = "DropShadowHolder"
    DropShadowHolder.Parent = Mainframe
    DropShadowHolder.BackgroundTransparency = 1.000
    DropShadowHolder.BorderColor3 = Color3.fromRGB(27, 42, 53)
    DropShadowHolder.BorderSizePixel = 0
    DropShadowHolder.Position = UDim2.new(-0.00970873795, 0, -0.00819672085, 0)
    DropShadowHolder.Size = UDim2.new(1.0226537, 0, 1.01639342, 0)
    DropShadowHolder.ZIndex = 0
    DropShadow.Name = "DropShadow"
    DropShadow.Parent = DropShadowHolder
    DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    DropShadow.BackgroundTransparency = 1.000
    DropShadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
    DropShadow.BorderSizePixel = 0
    DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropShadow.Size = UDim2.new(1, 47, 1, 47)
    DropShadow.ZIndex = 0
    DropShadow.Image = "rbxassetid://6014261993"
    DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow.ImageTransparency = 0.500
    DropShadow.ScaleType = Enum.ScaleType.Slice
    DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
    UIListLayout.Parent = DropShadowHolder
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = Mainframe
    Tabs.Name = "Tabs"
    Tabs.Parent = Mainframe
    Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tabs.BackgroundTransparency = 1.000
    Tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Tabs.BorderSizePixel = 0
    Tabs.Position = UDim2.new(0.038509734, 0, 0.0792350024, 0)
    Tabs.Size = UDim2.new(0, 312, 0, 34)
    Tabs.AutomaticCanvasSize = "X"
    Tabs.ScrollBarThickness = 0.1
    Tabs.CanvasSize = UDim2.new(0, 0,0, 0)
    Tabs.AutomaticCanvasSize = "X"
    UIListLayout_2.Parent = Tabs
    UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout_2.Padding = UDim.new(0, 5)
    TopTitle.Name = "TopTitle"
    TopTitle.Parent = Mainframe
    TopTitle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TopTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TopTitle.BorderSizePixel = 0
    TopTitle.Size = UDim2.new(0, 336, 0, 28)
    UICorner_2.CornerRadius = UDim.new(0, 4)
    UICorner_2.Parent = TopTitle
    TopTitles.Name = "TopTitles"
    TopTitles.Parent = TopTitle
    Frame.Parent = TopTitles
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BackgroundTransparency = 1.000
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.065476194, 0, 0, 0)
    Frame.Size = UDim2.new(0, 314, 0, 28)
    TopName.Name = "TopName"
    TopName.Parent = Frame
    TopName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopName.BackgroundTransparency = 1.000
    TopName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TopName.BorderSizePixel = 0
    TopName.Position = UDim2.new(0, 0, -0.0178571437, 0)
    TopName.Size = UDim2.new(0, 10, 0, 29)
    TopName.Font = Enum.Font.SourceSansBold
    TopName.Text = parameters["Title"] or parameters['Header'] or "Ex │"
    TopName.TextColor3 = Color3.fromRGB(255, 255, 255)
    TopName.TextSize = 14.000
    TopName.AutomaticSize = "X"
    TopName.TextXAlignment = Enum.TextXAlignment.Left
    UIListLayout_3.Parent = Frame
    UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout_3.Padding = UDim.new(0, 1)
    GameName.Name = "GameName"
    GameName.Parent = Frame
    GameName.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
    GameName.BackgroundTransparency = 1.000
    GameName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    GameName.BorderSizePixel = 0
    GameName.Position = UDim2.new(0.194267511, 0, 0.0178571437, 0)
    GameName.Size = UDim2.new(0, -29, 0, 27)
    GameName.Font = Enum.Font.SourceSansBold
    GameName.Text = parameters["Name"] or parameters['GameName'] or 'GameName'
    GameName.AutomaticSize = "X"
    GameName.TextColor3 = ThemeColor
    GameName.TextSize = 14.000
    GameName.TextXAlignment = Enum.TextXAlignment.Left
    UIListLayout_4.Parent = TopTitles
    UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center
    Minimize.Name = "Minimize"
    Minimize.Parent = Draggable
    Minimize.Active = false
    Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Minimize.BackgroundTransparency = 1.000
    Minimize.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Minimize.Position = UDim2.new(0.936248362, 0, 0.0929724127, 0)
    Minimize.Selectable = false
    Minimize.Size = UDim2.new(0, 19, 0, 19)
    Minimize.Image = "http://www.roblox.com/asset/?id=16499830557"
    Maximize.Name = "Maximize"
    Maximize.Parent = Draggable
    Maximize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Maximize.BackgroundTransparency = 1.000
    Maximize.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Maximize.Position = UDim2.new(0.93599999, 0, 0.0729999989, 0)
    Maximize.Size = UDim2.new(0, 19, 0, 19)
    Maximize.Visible = false
    Maximize.Font = Enum.Font.SourceSans
    Maximize.Text = "+"
    Maximize.TextColor3 = Color3.fromRGB(255, 255, 255)
    Maximize.TextSize = 31.000
    Maximize.TextStrokeTransparency = 0.500
    Maximize.TextTransparency = 0.400
    Maximize.TextWrapped = true
    Openable.Name = "Openable"
    Openable.Parent = Draggable
    Openable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Openable.BackgroundTransparency = 1.000
    Openable.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Openable.BorderSizePixel = 0
    Openable.Size = UDim2.new(0, 0, 0, 8)
    Openable.Visible = false
    Openable.Font = Enum.Font.SourceSans
    Openable.TextColor3 = Color3.fromRGB(0, 0, 0)
    Openable.TextSize = 14.000

    ---Scripts

    local a=Minimize;local b=Minimize;local c=Maximize;local d=Mainframe;local e=game:GetService("TweenService")local f={isOpen=true,hiddenElements={},Excluded={"toptitle","tabs","dropshadowholder"},Tween=nil}b.MouseButton1Click:Connect(function()table.clear(f.hiddenElements)Minimized=true;if f.Tween then f.Tween:Cancel()end;b.Visible=false;c.Visible=true;for g,h in pairs(d:GetChildren())do if h:IsA("Frame")and not table.find(f.Excluded,h.Name:lower())or CurrentPage.Page==h then h.Visible=false;table.insert(f.hiddenElements,h)end end;local i=e:Create(d,TweenInfo.new(0.4),{Size=UDim2.new(0,336,0,28)})f.Tween=i;f.Tween:Play()task.delay(0.2,function()if f.Tween==i then Tabs.Visible=false;e:Create(d.DropShadowHolder.DropShadow,TweenInfo.new(0.1),{Size=UDim2.new(0.973,35,0.973,35)}):Play()end end)end)c.MouseButton1Click:Connect(function()if f.Tween then f.Tween:Cancel()end;b.Visible=true;c.Visible=false;local i=e:Create(d,TweenInfo.new(0.4),{Size=UDim2.new(0,336,0,369)})f.Tween=i;f.Tween:Play()Tabs.Visible=true;task.delay(0.3,function()if f.Tween==i then for g,h in pairs(f.hiddenElements)do if h and h.Parent then h.Visible=true end end;Minimized=false end end)if f.Tween==i then d.DropShadowHolder.Visible=true;e:Create(d.DropShadowHolder.DropShadow,TweenInfo.new(0),{Size=UDim2.new(1,47,1,47)}):Play()end end)

    Draggable.AnchorPoint = Vector2.new(0.5, 0.5) -- Adjusts anchor to the center
    Draggable.Position = UDim2.new(0.5, 0, 0.2, 0) -- Centered based on Scale
    pcall(function() local a=game:GetService("UserInputService")local b=game:GetService("RunService")local c=Draggable;local d;local e;local f;local g;function Lerp(h,i,j)return h+(i-h)*j end;local k;local l;local m=8;function Update(n)if not g then return end;if not d and l then c.Position=UDim2.new(g.X.Scale,Lerp(c.Position.X.Offset,l.X.Offset,n*m),g.Y.Scale,Lerp(c.Position.Y.Offset,l.Y.Offset,n*m))return end;local o=k-a:GetMouseLocation()local p=g.X.Offset-o.X;local q=g.Y.Offset-o.Y;l=UDim2.new(g.X.Scale,p,g.Y.Scale,q)c.Position=UDim2.new(g.X.Scale,Lerp(c.Position.X.Offset,p,n*m),g.Y.Scale,Lerp(c.Position.Y.Offset,q,n*m))end;c.InputBegan:Connect(function(r)if r.UserInputType==Enum.UserInputType.MouseButton1 or r.UserInputType==Enum.UserInputType.Touch then d=true;f=r.Position;g=c.Position;k=a:GetMouseLocation()r.Changed:Connect(function()if r.UserInputState==Enum.UserInputState.End then d=false end end)end end)c.InputChanged:Connect(function(r)if r.UserInputType==Enum.UserInputType.MouseMovement or r.UserInputType==Enum.UserInputType.Touch then e=r end end)b.Heartbeat:Connect(Update) end)
    ---

    function GuiFunctions:ChangeTheme(color)
        ThemeColor = color
        GameName.TextColor3 = color
        for i,v in pairs(UIElements) do
            if v.Type == "Button" then
                v.Object.TextButton.ImageColor3 = color
            elseif v.Type == "Toggle" then
                v.Object.TOGGLEBUTTON.BorderColor3 = color
                if v.Attributes.Toggled then
                    v.Object.TOGGLEBUTTON.BackgroundColor3 = color
                end
            elseif v.Type == "Slider" then
                v.Object.SliderFrame.Slider.Bar.BackgroundColor3 = color
                v.Object.SliderFrame.Slider.circ.BackgroundColor3 = color
            end
        end
    end

    

    function GuiFunctions:AddPage(parameters)
        local PageFunctions = {}
        local SizeMultiplier = 7.071428571428571
        local NavigationButton = Instance.new("TextButton")
        local Page = Instance.new("ScrollingFrame")
        local PageData = {
            ["NavigationButton"] = NavigationButton,
            ["Opened"] = false,
            ["Page"] = Page,
            ["ElementCount"] = 0,
            ["Groups"] = {},
            ["GroupSpoof"] = nil
        }
        local function GetGroups()
            local GroupTable = {}
            for i,group in pairs(PageData.Groups) do
                table.insert(GroupTable, group)
            end
            return GroupTable
        end
        local function GetGroup(GroupName)
            if not PageData.Groups[GroupName] then
                
                local Group = Instance.new("Frame")
                local UIListLayout = Instance.new("UIListLayout")
                Group.Name = "Group"
                Group.Parent = Page
                Group.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Group.BackgroundTransparency = 1.000
                Group.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Group.AutomaticSize = "XY"
                Group.BorderSizePixel = 0
                Group.Position = UDim2.new(0.00148809527, 0, 0, 0)
                Group.Size = UDim2.new(0, 0, 0, 0)
                UIListLayout.Parent = Group
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top

                local GroupHolder = Instance.new("Frame")
                local UIListLayout = Instance.new("UIListLayout")
                local UICorner = Instance.new("UICorner")
                local Title = Instance.new("Frame")
                local Title_2 = Instance.new("TextLabel")
                GroupHolder.Name = "GroupHolder"
                GroupHolder.Parent = Group
                GroupHolder.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                GroupHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
                GroupHolder.BorderSizePixel = 0
                GroupHolder.Position = UDim2.new(0.0272727273, 0, 0.0869565234, 0)
                GroupHolder.Size = UDim2.new(0, 156, 0, 10)
                GroupHolder.AutomaticSize = "XY"
                Group.AutomaticSize = "XY"
                UIListLayout.Parent = GroupHolder
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UICorner.CornerRadius = UDim.new(0, 4)
                UICorner.Parent = GroupHolder
                Title.Name = "Title"
                Title.Parent = GroupHolder
                Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title.BackgroundTransparency = 1.000
                Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Title.BorderSizePixel = 0
                Title.Size = UDim2.new(0, 156, 0, 23)
                Title_2.Name = "Title"
                Title_2.Parent = Title
                Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title_2.BackgroundTransparency = 1.000
                Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Title_2.BorderSizePixel = 0
                Title_2.Position = UDim2.new(0.0450001247, 0, 3.98055363e-06, 0)
                Title_2.Size = UDim2.new(0, 145, 0, 25)
                Title_2.Font = Enum.Font.SourceSansBold
                Title_2.Text = GroupName
                Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Title_2.TextSize = 16.000
                Title_2.TextXAlignment = Enum.TextXAlignment.Left

                PageData.Groups[GroupName] = GroupHolder
                

                if #GetGroups() % 2 == 0 then
                    if PageData.GroupSpoof then
                        PageData.GroupSpoof:Destroy()
                    end
                else
                    if PageData.GroupSpoof then
                        PageData.GroupSpoof:Destroy()
                    end
                    local GroupSpoof = Instance.new("Frame")
                    GroupSpoof.Name = "GroupSpoof"
                    GroupSpoof.BackgroundTransparency = 1
                    GroupSpoof.Size = UDim2.new(0, 156,0, 23)
                    GroupSpoof.Parent = Page
                    PageData.GroupSpoof = GroupSpoof
                end

                return PageData.Groups[GroupName]
            else
                return PageData.Groups[GroupName]
            end
        end

        local UICorner = Instance.new("UICorner")
        NavigationButton.Name = "NavigationButton"
        NavigationButton.Parent = Tabs
        NavigationButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        NavigationButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        NavigationButton.BorderSizePixel = 0
        NavigationButton.Position = UDim2.new(0, 0, 0.176470593, 0)
        NavigationButton.Size = UDim2.new(0, 21, 0, 22)
        NavigationButton.Font = Enum.Font.SourceSansSemibold
        NavigationButton.Text = parameters["Name"] or "Page"
        NavigationButton.TextColor3 = Color3.fromRGB(145, 145, 145)
        NavigationButton.TextSize = 14.000
        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = NavigationButton
        NavigationButton.Size = UDim2.new(0, SizeMultiplier * string.len(parameters["Name"] or "Text"),0, 22)

        local PageLayout = Instance.new("UIListLayout")
        Page.Name = "Page"
        Page.Parent = Mainframe
        Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Page.BackgroundTransparency = 1.000
        Page.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Page.BorderSizePixel = 0
        Page.Position = UDim2.new(0, 0, 0.172130883, 0)
        Page.Selectable = false
        Page.Size = UDim2.new(0, 336, 0, 305)
        Page.CanvasSize = UDim2.new(0, 0, 0, 0)
        Page.AutomaticCanvasSize = "Y"
        Page.ScrollBarThickness = 3
        Page.Visible = false
        PageLayout.Name = "PageLayout"
        PageLayout.Wraps = true
        PageLayout.Parent = Page
        PageLayout.FillDirection = Enum.FillDirection.Horizontal
        PageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 5)

        if #Pages <= 0 then
            CurrentPage = PageData
            PageData.Opened = true
            NavigationButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            Page.Visible = true
        end

        NavigationButton.MouseButton1Click:connect(function()
            if Minimized then return end
            if CurrentPage ~= PageData then
                CurrentPage.Page.Visible = false
                PageData.Opened = false
                Page.Visible = true
                PageData.Opened = true
                CurrentPage.NavigationButton.TextColor3 = Color3.fromRGB(145, 145, 145)
                NavigationButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                CurrentPage = PageData
            end
        end)

        table.insert(Pages, PageData)

        function PageFunctions:AddButton(parameters)
            local ElementData = {
                ["Type"] = "Button",
                ["PageData"] = PageData,
                ["Trigger"] = nil,
                ["Object"] = nil
            }
            local Button = Instance.new("TextButton")
            local TextLabel = Instance.new("TextLabel")
            local TextButton = Instance.new("ImageLabel")
            local UICorner = Instance.new("UICorner")
            Button.Name = "Button"
            Button.Parent = GetGroup(parameters["Group"] or "Main")
            Button.Active = false
            Button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Button.BorderSizePixel = 0
            Button.Position = UDim2.new(0.0414012745, 0, 0.60535115, 0)
            Button.Selectable = false
            Button.Size = UDim2.new(0, 156, 0, 23)
            Button.Text = ""
            TextLabel.Parent = Button
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0450012982, 0, 0, 0)
            TextLabel.Size = UDim2.new(0, 143, 0, 23)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = parameters["Name"] or "Button"
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextButton.Name = "TextButton"
            TextButton.Parent = Button
            TextButton.Active = true
            TextButton.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.BorderSizePixel = 0
            TextButton.Position = UDim2.new(0.863820374, 0, 0.193603516, 0)
            TextButton.Selectable = true
            TextButton.Size = UDim2.new(0, 14, 0, 14)
            TextButton.Image = "http://www.roblox.com/asset/?id=15230865047"
            TextButton.ImageColor3 = ThemeColor
            UICorner.CornerRadius = UDim.new(0, 3)
            UICorner.Parent = Button

            local ClickedFunc = parameters["Function"] or function() print("No Function Assigned") end
            ElementData.Trigger = ClickedFunc
            ElementData.Object = Button
            Button.MouseButton1Click:connect(function()
                ClickedFunc()
            end)

            
            table.insert(UIElements, ElementData)
            return ElementData
        end


        function PageFunctions:AddToggle(parameters)
            local ElementData = {
                ["Type"] = "Toggle",
                ["PageData"] = PageData,
                ["Trigger"] = nil,
                ["Object"] = nil,
                ["Attributes"] = {
                    ["Toggled"] = false
                }
            }
            
            local Toggle = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local TOGGLEBUTTON = Instance.new("TextButton")
            Toggle.Name = "Toggle"
            Toggle.Parent = GetGroup(parameters["Group"] or "Main")
            Toggle.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
            Toggle.BackgroundTransparency = 1.000
            Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Toggle.BorderSizePixel = 0
            Toggle.Position = UDim2.new(0, 0, 0.778846145, 0)
            Toggle.Size = UDim2.new(0, 156, 0, 23)
            TextLabel.Parent = Toggle
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0450001247, 0, 0, 0)
            TextLabel.Size = UDim2.new(0, 97, 0, 23)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = parameters["Name"] or "Toggle"
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TOGGLEBUTTON.Name = "TOGGLEBUTTON"
            TOGGLEBUTTON.Parent = Toggle
            TOGGLEBUTTON.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            TOGGLEBUTTON.BorderColor3 = ThemeColor
            TOGGLEBUTTON.Position = UDim2.new(0.860000014, 0, 0.140000001, 0)
            TOGGLEBUTTON.Size = UDim2.new(0, 16, 0, 16)
            TOGGLEBUTTON.Font = Enum.Font.SourceSans
            TOGGLEBUTTON.Text = ""
            TOGGLEBUTTON.TextColor3 = Color3.fromRGB(0, 0, 0)
            TOGGLEBUTTON.TextSize = 14.000

            local function OnToggle(Toggled)
                if Toggled == true then
                    ElementData["Attributes"].Toggled = true
                    parameters["Function"](true)
                    game:GetService("TweenService"):Create(TOGGLEBUTTON, TweenInfo.new(0, Enum.EasingStyle.Linear), {BackgroundColor3 = ThemeColor}):Play()
                    TOGGLEBUTTON.AutoButtonColor = false
                elseif Toggled == false then
                    ElementData["Attributes"].Toggled = false
                    parameters["Function"](false)
                    game:GetService("TweenService"):Create(TOGGLEBUTTON, TweenInfo.new(0, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(20,20,20)}):Play()
                    TOGGLEBUTTON.AutoButtonColor = true
                end
            end
            ElementData.Trigger = OnToggle
            ElementData.Object = Toggle
            TOGGLEBUTTON.MouseButton1Click:connect(function()
                OnToggle(not ElementData["Attributes"].Toggled)
            end)
            
            table.insert(UIElements, ElementData)
            return ElementData
        end

        function PageFunctions:AddInput(parameters)
            local ElementData = {
                ["Type"] = "Input",
                ["PageData"] = PageData,
                ["Trigger"] = nil,
                ["Object"] = nil,
                ["Attributes"] = {
                    ["Text"] = ""
                }
            }

            local TextBoxFrame = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local TextBox = Instance.new("TextBox")
            local UICorner = Instance.new("UICorner")
            TextBoxFrame.Name = "TextBoxFrame"
            TextBoxFrame.Parent = GetGroup(parameters["Group"] or "Main")
            TextBoxFrame.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
            TextBoxFrame.BackgroundTransparency = 1.000
            TextBoxFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextBoxFrame.BorderSizePixel = 0
            TextBoxFrame.Position = UDim2.new(0.00318471342, 0, 0.230769232, 0)
            TextBoxFrame.Size = UDim2.new(0, 156, 0, 40)
            TextLabel.Parent = TextBoxFrame
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0450001247, 0, -0.05, 0) --  -0.05 was on -0.09
            TextLabel.Size = UDim2.new(0, 97, 0, 23)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = parameters["Text"] or "InputBox"
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextBox.Parent = TextBoxFrame
            TextBox.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            TextBox.BorderColor3 = Color3.fromRGB(20, 20, 20)
            TextBox.Position = UDim2.new(0.0449997336, 0, 0.527185798, 0)
            TextBox.Size = UDim2.new(0, 140, 0, 17)
            TextBox.Font = Enum.Font.SourceSansSemibold
            TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
            TextBox.PlaceholderText = parameters["Name"] or "Input"
            TextBox.Text = ""
            TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.TextSize = 12.000
            TextBox.TextWrapped = true
            TextBox.TextStrokeTransparency = 0.000
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = TextBox

            if not parameters["Text"] then
                TextLabel:Destroy()
                TextBoxFrame.Size = UDim2.new(0, 156,0, 23)
                local UIListLayout = Instance.new("UIListLayout")
                UIListLayout.Parent = TextBoxFrame
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            end
            local OnChanged = parameters["Changed"] or parameters["OnChange"] or parameters["Signal"] or function() return end
            ElementData.Object = TextBoxFrame

            local function Set(value)
                TextBox.Text = value
                OnChanged(TextBox.Text, true)
            end

            ElementData.Trigger = Set

            TextBox:GetPropertyChangedSignal("Text"):connect(function()
                ElementData.Attributes.Text = TextBox.Text
                OnChanged(TextBox.Text, false)
            end)

            --[[
            TextBox.Changed:connect(function()
                ElementData.Attributes.Text = TextBox.Text
                OnChanged(TextBox.Text, false)
            end)]]--

            TextBox.FocusLost:connect(function()
                ElementData.Attributes.Text = TextBox.Text
                OnChanged(TextBox.Text, true)
            end)

            table.insert(UIElements, ElementData)
            return ElementData
        end


        function PageFunctions:AddDropdown(parameters)
            local ElementData = {
                ["Type"] = "Dropdown",
                ["PageData"] = PageData,
                ["Trigger"] = nil,
                ["Object"] = nil,
                ["DropdownsBtns"] = {},
                ["Attributes"] = {
                    ["Selected"] = false
                }
            }


            local DroppyDown = Instance.new("Frame")
            ElementData.Object = DroppyDown
            local TextLabel = Instance.new("TextLabel")
            local TextButton = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            DroppyDown.Name = "DroppyDown"
            DroppyDown.Parent = GetGroup(parameters["Group"] or "Main")
            DroppyDown.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
            DroppyDown.BackgroundTransparency = 1.000
            DroppyDown.BorderColor3 = Color3.fromRGB(0, 0, 0)
            DroppyDown.BorderSizePixel = 0
            DroppyDown.Position = UDim2.new(0.00318471342, 0, 0.230769232, 0)
            DroppyDown.Size = UDim2.new(0, 156, 0, 40)
            TextLabel.Parent = DroppyDown
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0450001247, 0, -0.05, 0)
            TextLabel.Size = UDim2.new(0, 97, 0, 23)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = parameters["Text"] or "Dropdown"
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextButton.Parent = DroppyDown
            TextButton.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.BorderSizePixel = 0
            TextButton.Position = UDim2.new(0.0450000018, 0, 0.52700001, 0)
            TextButton.Size = UDim2.new(0, 140, 0, 17)
            TextButton.Font = Enum.Font.SourceSansSemibold
            TextButton.Text = parameters["Name"] or "Select"
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 13.000
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = TextButton

            local Droplist = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            local Frame = Instance.new("Frame")
            local UIListLayout_2 = Instance.new("UIListLayout")
            local Fake = Instance.new("TextLabel")
            local Fake_2 = Instance.new("TextLabel")
            local DropdownFrame = Instance.new("ScrollingFrame")
            local UIListLayout_3 = Instance.new("UIListLayout")
            local Sample = Instance.new("TextButton")
            local Search = Instance.new("TextBox")
            local CloseBtn = Instance.new("TextButton")
            Droplist.Name = "Droplist"
            Droplist.Parent = Draggable
            Droplist.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Droplist.BackgroundTransparency = 0.500
            Droplist.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Droplist.BorderSizePixel = 0
            Droplist.Position = UDim2.new(-0.00966519397, 0, 0.582000434, 0)
            Droplist.Selectable = false
            Droplist.Size = UDim2.new(0, 335, 0, 339)
            Droplist.Visible = false
            Droplist.CanvasSize = UDim2.new(0, 0, 1, 0)
            Droplist.ScrollBarThickness = 3
            UIListLayout.Parent = Droplist
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 8)
            Frame.Parent = Droplist
            Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Frame.BackgroundTransparency = 1.000
            Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
            Frame.BorderSizePixel = 0
            Frame.ClipsDescendants = true
            Frame.Position = UDim2.new(0.141791046, 0, 0, 0)
            Frame.Size = UDim2.new(0, 240, 0, 238)
            UIListLayout_2.Parent = Frame
            UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            Fake.Name = "Fake"
            Fake.Text = ""
            Fake.Parent = Frame
            Fake.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Fake.BackgroundTransparency = 1.000
            Fake.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Fake.BorderSizePixel = 0
            Fake.Position = UDim2.new(0.0833333358, 0, 0.0912863091, 0)
            Fake.Size = UDim2.new(0, 200, 0, 8)
            Fake.Font = Enum.Font.SourceSans
            Fake.Text = ""
            Fake.TextColor3 = Color3.fromRGB(0, 0, 0)
            Fake.TextSize = 14.000
            Fake.TextTransparency = 1.000
            Fake_2.Name = "Fake"
            Fake_2.Text = ""
            Fake_2.Parent = Frame
            Fake_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Fake_2.BackgroundTransparency = 1.000
            Fake_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Fake_2.BorderSizePixel = 0
            Fake_2.Position = UDim2.new(0.0833333358, 0, 0.0912863091, 0)
            Fake_2.Size = UDim2.new(0, 200, 0, 8)
            Fake_2.Font = Enum.Font.SourceSans
            Fake_2.TextColor3 = Color3.fromRGB(0, 0, 0)
            Fake_2.TextSize = 14.000
            DropdownFrame.Name = "DropdownFrame"
            DropdownFrame.Parent = Frame
            DropdownFrame.Active = true
            DropdownFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            DropdownFrame.BorderColor3 = Color3.fromRGB(49, 49, 49)
            DropdownFrame.Position = UDim2.new(0, 0, 0.0672268942, 0)
            DropdownFrame.Size = UDim2.new(0, 240, 0, 216)
            DropdownFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
            DropdownFrame.ScrollBarThickness = 2
            DropdownFrame.AutomaticCanvasSize = "Y"
            UIListLayout_3.Parent = DropdownFrame
            UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_3.Padding = UDim.new(0, 1)
            Sample.Name = "Sample"
            Sample.Parent = DropdownFrame
            Sample.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
            Sample.BorderColor3 = Color3.fromRGB(49, 49, 49)
            Sample.Position = UDim2.new(0.00416666688, 0, 0.00462962966, 0)
            Sample.Size = UDim2.new(0, 236, 0, 27)
            Sample.Visible = false
            Sample.Font = Enum.Font.SourceSansSemibold
            Sample.Text = "Sample"
            Sample.TextColor3 = Color3.fromRGB(255, 255, 255)
            Sample.TextSize = 13.000
            Search.Name = "Search"
            Search.Parent = Droplist
            Search.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
            Search.BorderColor3 = Color3.fromRGB(49, 49, 49)
            Search.Size = UDim2.new(0, 235, 0, 28)
            Search.Font = Enum.Font.SourceSans
            Search.PlaceholderColor3 = Color3.fromRGB(116, 116, 116)
            Search.PlaceholderText = "Search"
            Search.Text = ""
            Search.TextColor3 = Color3.fromRGB(255, 255, 255)
            Search.TextSize = 14.000
            Search.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            Search.Visible = false
            CloseBtn.Name = "CloseBtn"
            CloseBtn.Parent = Droplist
            CloseBtn.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
            CloseBtn.BorderColor3 = Color3.fromRGB(49, 49, 49)
            CloseBtn.Position = UDim2.new(0.150297612, 0, 0.754098356, 0)
            CloseBtn.Size = UDim2.new(0, 235, 0, 28)
            CloseBtn.Font = Enum.Font.SourceSansBold
            CloseBtn.Text = "Close"
            CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            CloseBtn.TextSize = 13.000
            CloseBtn.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

            if not parameters["Text"] then
                TextLabel:Destroy()
                DroppyDown.Size = UDim2.new(0, 156,0, 23)
                local UIListLayout = Instance.new("UIListLayout")
                UIListLayout.Parent = DroppyDown
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            end

            local objects = parameters["Objects"] or function() return {} end
            local func = parameters["Function"] or function() return end

            local function Select(text)
                if parameters["Save"] or parameters["SaveSelection"] then
                    TextButton.Text = text
                end
                func(text)
                ElementData.Attributes.Selected = text
                Droplist.Visible = false
            end


            if parameters["SearchBox"] or parameters["Search"] then
                Search.Visible = true
                Search.Changed:connect(function()
                    if not Droplist.Visible then return end
                    for _,v in pairs(ElementData.DropdownsBtns) do
                        local lower = string.lower(Search.Text)
                        local lowertext = string.lower(v.Text)
                
                        if string.match(lowertext,lower) then
                            v.Visible = true
                        else
                            v.Visible = false
                        end
                    end
                end)
            end


            
            TextButton.MouseButton1Click:connect(function()
                for _,v in pairs(ElementData.DropdownsBtns) do
                    v:Destroy()
                end
                table.clear(ElementData.DropdownsBtns)
                for _,v in pairs(objects()) do
                    local btn = Sample:Clone()
                    btn.Name = "Btn"
                    btn.Text = tostring(v)
                    btn.Parent = DropdownFrame
                    btn.Visible = true
                    table.insert(ElementData.DropdownsBtns, btn)
                    btn.MouseButton1Click:connect(function()
                        Select(tostring(v))
                    end)
                end
                
                Droplist.Visible = not Droplist.Visible
            end)

            CloseBtn.MouseButton1Click:connect(function()
                Droplist.Visible = false
            end)

            

            table.insert(UIElements, ElementData)
            return ElementData
        end


        function PageFunctions:AddSlider(parameters)

            local ElementData = {
                ["Type"] = "Slider",
                ["Trigger"] = nil,
                ["Object"] = nil,
                ["Attributes"] = {
                    ["Value"] = 0
                }
            }

            local SliderInput = Instance.new("Frame")
            ElementData.Object = SliderInput
            local TextLabel = Instance.new("TextLabel")
            local SliderFrame = Instance.new("Frame")
            local Slider = Instance.new("TextButton")
            local UIListLayout = Instance.new("UIListLayout")
            local Bar = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local circ = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local UICorner_3 = Instance.new("UICorner")
            local UIListLayout_2 = Instance.new("UIListLayout")
            local UICorner_4 = Instance.new("UICorner")
            local SlideValue = Instance.new("TextLabel")
            SliderInput.Name = "SliderInput"
            SliderInput.Parent = GetGroup(parameters["Group"] or "Main")
            SliderInput.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
            SliderInput.BackgroundTransparency = 1.000
            SliderInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SliderInput.BorderSizePixel = 0
            SliderInput.Position = UDim2.new(0.00318471342, 0, 0.802675664, 0)
            SliderInput.Size = UDim2.new(0, 156, 0, 40)
            TextLabel.Parent = SliderInput
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0450001247, 0, 0, 0)
            TextLabel.Size = UDim2.new(0, 117, 0, 23)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = parameters["Name"] or "Slider"
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = SliderInput
            SliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderFrame.BackgroundTransparency = 1.000
            SliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Position = UDim2.new(0.035, 0,0.353, 0)
            SliderFrame.Size = UDim2.new(0.922284424, 0, 0.749000072, 0)
            Slider.Name = "Slider"
            Slider.Parent = SliderFrame
            Slider.AnchorPoint = Vector2.new(0.5, 0.5)
            Slider.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            Slider.BorderColor3 = Color3.fromRGB(27, 42, 53)
            Slider.BorderSizePixel = 0
            Slider.Position = UDim2.new(0.5, 0, 0.437625438, 0)
            Slider.Size = UDim2.new(0.971000016, 0, 0.150000006, 0)
            Slider.AutoButtonColor = false
            Slider.Font = Enum.Font.Cartoon
            Slider.Text = ""
            Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
            Slider.TextSize = 14.000
            UIListLayout.Parent = Slider
            UIListLayout.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            UIListLayout.Padding = UDim.new(0, -6)
            Bar.Name = "Bar"
            Bar.Parent = Slider
            Bar.BackgroundColor3 = ThemeColor
            Bar.BackgroundTransparency = 0.100
            Bar.BorderColor3 = Color3.fromRGB(27, 42, 53)
            Bar.BorderSizePixel = 0
            Bar.Position = UDim2.new(0, 0, -0.792766869, 0)
            Bar.Size = UDim2.new(0.971000016, 0, 1.5, 0)
            UICorner.CornerRadius = UDim.new(0, 70)
            UICorner.Parent = Bar
            circ.Name = "circ"
            circ.Parent = Slider
            circ.BackgroundColor3 = ThemeColor
            circ.BorderColor3 = Color3.fromRGB(0, 0, 0)
            circ.BorderSizePixel = 0
            circ.Position = UDim2.new(0.930670381, 0, -0.299373418, 0)
            circ.Size = UDim2.new(0, 12, 0, 13)
            circ.Font = Enum.Font.SourceSans
            circ.Text = ""
            circ.TextColor3 = Color3.fromRGB(0, 0, 0)
            circ.TextSize = 14.000
            UICorner_2.Parent = circ
            UICorner_3.Parent = Slider
            UIListLayout_2.Parent = SliderFrame
            UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
            UICorner_4.CornerRadius = UDim.new(0, 4)
            UICorner_4.Parent = SliderFrame
            SlideValue.Name = "SlideValue"
            SlideValue.Parent = SliderInput
            SlideValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SlideValue.BackgroundTransparency = 1.000
            SlideValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SlideValue.BorderSizePixel = 0
            SlideValue.Position = UDim2.new(0.809715867, 0, 0, 0)
            SlideValue.Size = UDim2.new(0, 24, 0, 22)
            SlideValue.Font = Enum.Font.SourceSansSemibold
            SlideValue.Text = "0"
            SlideValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            SlideValue.TextSize = 14.000
            SlideValue.TextXAlignment = Enum.TextXAlignment.Right

            local uistroke = Instance.new("UIStroke")
            uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            uistroke.Color = Color3.new(0.192157, 0.192157, 0.192157)
            uistroke.Parent = Slider

            local min, max, init,func = parameters["Min"] or parameters["Minimum"] or 0, parameters["Max"] or parameters["Maximum"] or 100, parameters["Initial"] or parameters["Ini"] or 50,(parameters["Function"] or function(value) end)
            local h = SliderInput
            local val, sldr, bar, mouse, sliderlong = nil, Slider, Bar, game.Players.LocalPlayer:GetMouse(), h.SliderFrame
            local circ, held = sldr.circ, false
            bar.Size = UDim2.new((init - min)/(max - min), 0, 1.45, 0)
            SlideValue.Text = tostring(init)
            sliderlong.MouseEnter:Connect(function()
            sliderlong.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            end)
            sliderlong.MouseLeave:Connect(function()
            sliderlong.BackgroundColor3 = Color3.fromRGB(34,34,34)
            end)	


            local function SetValue(value, dontusefunc)
                bar.Size = UDim2.new((value - min)/(max - min), 0, 0.95, 0)
                SlideValue.Text = tostring(value)
                ElementData.Attributes.Value = tonumber(value)
                if not dontusefunc then
                    func(tonumber(value))
                end
            end

            SetValue(init, true)
            ElementData.Trigger = SetValue
            
            local function update()
                local x = mouse.X
                local scale = math.clamp((x - sldr.AbsolutePosition.X)/sldr.AbsoluteSize.X, 0, 1)
                bar.Size = UDim2.new(scale, 0, 0.95, 0)
                SlideValue.Text = tostring(math.floor(scale * (max - min) + min))
                ElementData.Attributes.Value = tonumber(math.floor(scale * (max - min) + min))
                func(tonumber(math.floor(scale * (max - min) + min)))
            end

            
            sldr.MouseButton1Down:Connect(function() held = true update() end)
            circ.MouseButton1Down:Connect(function() held = true update() end)
            game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then held = false end
            end)
            mouse.Move:Connect(function() if held then update() end end)


            table.insert(UIElements, ElementData)
            return ElementData
        end


        function PageFunctions:AddGap(parameters)
            local gp = Instance.new("Frame")
            gp.Name = "SliderInput"
            gp.Parent = GetGroup(parameters["Group"] or "Main")
            gp.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
            gp.BackgroundTransparency = 1.000
            gp.BorderColor3 = Color3.fromRGB(0, 0, 0)
            gp.BorderSizePixel = 0
            gp.Position = UDim2.new(0.00318471342, 0, 0.802675664, 0)
            gp.Size = UDim2.new(0, 156, 0, parameters["Gap"] or 40)

        end

        function PageFunctions:AddColorPicker(parameters)
            local ElementData = {
                ["Type"] = "ColorPicker",
                ["Trigger"] = nil,
                ["Object"] = nil,
                ["Attributes"] = {
                    ["Color"] = 0
                }
            }

            local ColorPicker = Instance.new("Frame")
            local ColorBox = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local Box = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            ColorBox.Name = "ColorBox"
            ColorBox.Parent = GetGroup(parameters["Group"] or "Main")
            ColorBox.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
            ColorBox.BackgroundTransparency = 1.000
            ColorBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ColorBox.BorderSizePixel = 0
            ColorBox.Position = UDim2.new(0, 0, 0.778846145, 0)
            ColorBox.Size = UDim2.new(0, 156, 0, 23)
            TextLabel.Parent = ColorBox
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0450001247, 0, 0, 0)
            TextLabel.Size = UDim2.new(0, 117, 0, 23)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = parameters["Name"] or "Pick Color"
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            Box.Name = "Box"
            Box.Parent = ColorBox
            Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Box.BorderColor3 = Color3.fromRGB(20, 20, 20)
            Box.BorderSizePixel = 2
            Box.Position = UDim2.new(0.666795015, 0, 0.117000416, 0)
            Box.Size = UDim2.new(0, 45, 0, 17)
            Box.Font = Enum.Font.SourceSansSemibold
            Box.Text = ""
            Box.TextColor3 = Color3.fromRGB(255, 255, 255)
            Box.TextSize = 12.000
            Box.TextStrokeTransparency = 0.000
            Box.TextWrapped = true
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = Box

            Box.MouseButton1Click:connect(function()
                ColorPicker.Visible = not ColorPicker.Visible
            end)
            

            --color block part --
            
            local Main = Instance.new("Frame")
            local TextButton = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local UICorner_2 = Instance.new("UICorner")
            local ColrBlock = Instance.new("Frame")
            local uistroke = Instance.new("UIStroke")
            uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            uistroke.Thickness = 2
            uistroke.Parent = ColrBlock
            local UICorner_3 = Instance.new("UICorner")
            local Options = Instance.new("Frame")
            local UIListLayout = Instance.new("UIListLayout")
            local BoxToggle = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local TOGGLEBUTTON = Instance.new("TextButton")
            local UIListLayout_2 = Instance.new("UIListLayout")
            local ColorBlock = Instance.new("ImageButton")
            local Picker = Instance.new("Frame")
            local ValueBlock = Instance.new("ImageButton")
            local Picker_2 = Instance.new("Frame")
            local UIListLayout_3 = Instance.new("UIListLayout")
            local Fake = Instance.new("TextLabel")
            ColorPicker.Name = "ColorPicker"
            ColorPicker.Parent = Mainframe
            ColorPicker.Active = true
            ColorPicker.Visible = false
            ColorPicker.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            ColorPicker.BackgroundTransparency = 0.500
            ColorPicker.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ColorPicker.BorderSizePixel = 0
            ColorPicker.Position = UDim2.new(0, 0, 0.168021351, 0)
            ColorPicker.Size = UDim2.new(0, 336, 0, 306)
            Main.Name = "Main"
            Main.Parent = ColorPicker
            Main.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Main.BorderSizePixel = 0
            Main.ClipsDescendants = true
            Main.Position = UDim2.new(0.125734463, 0, 0.144399777, 0)
            Main.Selectable = true
            Main.Size = UDim2.new(0.748531044, 0, 0.831114769, 0)
            Main.ZIndex = 2
            TextButton.Parent = Main
            TextButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
            TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.BorderSizePixel = 0
            TextButton.Position = UDim2.new(0.115305327, 0, 0.795036614, 0)
            TextButton.Size = UDim2.new(0, 149, 0, 27)
            TextButton.Font = Enum.Font.SourceSansBold
            TextButton.Text = "Close"
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 14.000
            UICorner.Parent = TextButton
            UICorner_2.CornerRadius = UDim.new(0, 10)
            UICorner_2.Parent = Main
            ColrBlock.Name = "ColrBlock"
            ColrBlock.Parent = Main
            ColrBlock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ColrBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ColrBlock.BorderSizePixel = 0
            ColrBlock.Position = UDim2.new(0.819064558, 0, 0.779175282, 0)
            ColrBlock.Size = UDim2.new(0, 37, 0, 37)
            UICorner_3.CornerRadius = UDim.new(0, 30)
            UICorner_3.Parent = ColrBlock
            Options.Name = "Options"
            Options.Parent = Main
            Options.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Options.BackgroundTransparency = 1.000
            Options.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Options.BorderSizePixel = 0
            Options.Position = UDim2.new(0.10215459, 0, 3.59988718e-07, 0)
            Options.Size = UDim2.new(0, 153, 0, 32)
            UIListLayout.Parent = Options
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            BoxToggle.Name = "BoxToggle"
            BoxToggle.Parent = Options
            BoxToggle.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
            BoxToggle.BackgroundTransparency = 1.000
            BoxToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
            BoxToggle.BorderSizePixel = 0
            BoxToggle.Position = UDim2.new(-1.99461297e-07, 0, 0.140625, 0)
            BoxToggle.Size = UDim2.new(0, 153, 0, 23)
            UIListLayout_2.Parent = BoxToggle
            UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
            ColorBlock.Name = "ColorBlock"
            ColorBlock.Parent = Main
            ColorBlock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ColorBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ColorBlock.BorderSizePixel = 2
            ColorBlock.Position = UDim2.new(0, 29, 0, 36)
            ColorBlock.Size = UDim2.new(0, 150, 0, 150)
            ColorBlock.AutoButtonColor = false
            ColorBlock.Image = "rbxassetid://17073799681"
            for i,v in pairs({Picker, Picker_2}) do
                local uistroke = Instance.new("UIStroke", v)
                uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                uistroke.LineJoinMode = Enum.LineJoinMode.Bevel
                uistroke.Thickness = 2
            end
            Picker.Name = "Picker"
            Picker.Parent = ColorBlock
            Picker.AnchorPoint = Vector2.new(0.5, 0.5)
            Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Picker.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Picker.BorderSizePixel = 0
            Picker.Position = UDim2.new(0.5, 0, 1, 0)
            Picker.Size = UDim2.new(0, 5, 0, 5)
            ValueBlock.Name = "ValueBlock"
            ValueBlock.Parent = Main
            ValueBlock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ValueBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ValueBlock.BorderSizePixel = 2
            ValueBlock.Position = UDim2.new(0, 214, 0, 36)
            ValueBlock.Size = UDim2.new(0, 20, 0, 150)
            ValueBlock.AutoButtonColor = false
            ValueBlock.Image = "rbxassetid://17073827687"
            Picker_2.Name = "Picker"
            Picker_2.Parent = ValueBlock
            Picker_2.AnchorPoint = Vector2.new(0.5, 0.5)
            Picker_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Picker_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Picker_2.BorderSizePixel = 0
            Picker_2.Position = UDim2.new(0.5, 0, 0, 0)
            Picker_2.Size = UDim2.new(0, 25, 0, 5)
            UIListLayout_3.Parent = ColorPicker
            UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
            Fake.Name = "Fake"
            Fake.Parent = ColorPicker
            Fake.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Fake.BackgroundTransparency = 1.000
            Fake.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Fake.BorderSizePixel = 0
            Fake.Position = UDim2.new(0.202380955, 0, 0.833858132, 0)
            Fake.Size = UDim2.new(0, 200, 0, 20)
            Fake.Font = Enum.Font.SourceSans
            Fake.Text = ""
            Fake.TextColor3 = Color3.fromRGB(0, 0, 0)
            Fake.TextSize = 14.000
            TextLabel.Parent = BoxToggle
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Size = UDim2.new(0, 80, 0, 23)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = "Rainbow Color"
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TOGGLEBUTTON.Name = "TOGGLEBUTTON"
            TOGGLEBUTTON.Parent = BoxToggle
            TOGGLEBUTTON.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            TOGGLEBUTTON.BorderColor3 = Color3.fromRGB(255, 255, 255)
            TOGGLEBUTTON.Position = UDim2.new(0.860000014, 0, 0.140000001, 0)
            TOGGLEBUTTON.Size = UDim2.new(0, 16, 0, 16)
            TOGGLEBUTTON.AutoButtonColor = false
            TOGGLEBUTTON.Font = Enum.Font.SourceSans
            TOGGLEBUTTON.Text = ""
            TOGGLEBUTTON.TextColor3 = Color3.fromRGB(255, 255, 255)

                local scripte = ColorPicker
                
                local ColorFunc = parameters["Function"] or function() end

                local lastHue, lastSaturation, lastValue = 0, 0, 1
                local lastcolorvalue = nil
                local lastcolorblock = nil
                local touchTap = Enum.UserInputType.Touch
                local mouse1 = Enum.UserInputType.MouseButton1
                local mouseMovement = Enum.UserInputType.MouseMovement
                
                local inpService = game:GetService("UserInputService")
                local runService = game:GetService("RunService")
                
                local colorPickerMain = scripte
                local colorPicker = colorPickerMain:WaitForChild("Main")
                local ColrBlock = colorPicker:WaitForChild("ColrBlock")
                local colorBlock = colorPicker:WaitForChild("ColorBlock")
                local valueBlock = colorPicker:WaitForChild("ValueBlock")
                
                local pickerColor = colorBlock:WaitForChild("Picker")
                local pickerValue = valueBlock:WaitForChild("Picker")
                
                local colorChanging = false
                local inputTypeNeeded = mouse1
                local plrInputHeldDown = false
                local inputPosition = Vector2.zero
                
                local colors = {
                    RawColor = Color3.fromRGB(255, 255, 255),
                    RealColor = Color3.fromRGB(255, 255, 255)
                }
                
                if not inpService.MouseEnabled then
                    inputTypeNeeded = touchTap
                end
                
                if not inpService.MouseEnabled then
                    inpService.TouchMoved:Connect(function(inp)
                        inputPosition = inp.Position
                    end)
                else
                    inpService.InputChanged:Connect(function(inp)
                        if inp.UserInputType == mouseMovement then
                            inputPosition = inp.Position
                        end
                    end)
                end
                
                inpService.InputBegan:Connect(function(inp)
                    if inp.UserInputType == inputTypeNeeded then
                        plrInputHeldDown = true
                    end
                end)
                
                inpService.InputEnded:Connect(function(inp)
                    if inp.UserInputType == inputTypeNeeded then
                        plrInputHeldDown = false
                    end
                end)
                
                local function getNormalizedCursorPosition(mousePosition, frame)
                    local framePosition = frame.AbsolutePosition
                    local frameSize = frame.AbsoluteSize
                
                    local relativeX = (mousePosition.X - framePosition.X) / frameSize.X
                    local relativeY = (mousePosition.Y - framePosition.Y) / frameSize.Y
                
                    return relativeX, relativeY
                end
                
                colorBlock.InputBegan:Connect(function(inp)
                    if inp.UserInputType == inputTypeNeeded and pickerColor.Visible then
                        colorChanging = true
                        plrInputHeldDown = true
                        local lastcolor = nil
                        while plrInputHeldDown do
                            local xPos, yPos = getNormalizedCursorPosition(inputPosition, colorBlock)
                            xPos, yPos = math.clamp(xPos, 0, 1), math.clamp(yPos, 0, 1)
                
                            pickerColor.Position = UDim2.new(xPos, 0, yPos, 0)
                
                            lastHue = 1 - xPos
                            lastSaturation = 1 - yPos
                
                            colors.RawColor = Color3.fromHSV(lastHue, lastSaturation, 1)
                            colors.RealColor = Color3.fromHSV(lastHue, lastSaturation, lastValue)
                
                            colorBlock.BackgroundColor3 = colors.RealColor
                
                            runService.Heartbeat:Wait()
                            valueBlock.ImageColor3 = colors.RawColor
                            ColrBlock.BackgroundColor3 = colors.RealColor
                            
                            if lastcolor ~= colors.RealColor then
                                Box.BackgroundColor3 = colors.RealColor
                                lastcolor = colors.RealColor
                                ColorFunc(colors.RealColor)
                            end
                        end
                        colorChanging = false
                    end
                end)
                
                valueBlock.InputBegan:Connect(function(inp)
                    if inp.UserInputType == inputTypeNeeded and pickerValue.Visible then
                        colorChanging = true
                        plrInputHeldDown = true
                        local lastcolor = nil
                        while plrInputHeldDown do
                            local _, yPos = getNormalizedCursorPosition(inputPosition, valueBlock)
                            yPos = math.clamp(yPos, 0, 1)
                
                            lastValue = 1 - yPos
                            pickerValue.Position = UDim2.new(0.5, 0, yPos, 0)
                
                            colors.RealColor = Color3.fromHSV(lastHue, lastSaturation, lastValue)
                            colorBlock.BackgroundColor3 = colors.RealColor
                
                            runService.Heartbeat:Wait()
                            valueBlock.ImageColor3 = colors.RawColor
                            
                            ColrBlock.BackgroundColor3 = colors.RealColor

                            if lastcolor ~= colors.RealColor then
                                Box.BackgroundColor3 = colors.RealColor
                                lastcolor = colors.RealColor
                                ColorFunc(colors.RealColor)
                            end

                        end
                        colorChanging = false
                    end
                end)
                
                
                local function setColor(color)
                    local h, s, v = color:ToHSV()
                
                    lastHue, lastSaturation = h, s
                    colors.RawColor = Color3.fromHSV(h, s, 1)
                    colors.RealColor = color
                
                    -- Update picker positions
                    pickerColor.Position = UDim2.new(1 - h, 0, 1 - s, 0)
                    pickerValue.Position = UDim2.new(0.5, 0, 1 - v, 0)
                
                    valueBlock.ImageColor3 = colors.RawColor
                    ColrBlock.BackgroundColor3 = colors.RealColor

                    Box.BackgroundColor3 = colors.RealColor
                    ColorFunc(colors.RealColor)

                end
                
                
                
                
                local toggled = false
                
                
                ElementData.Trigger = setColor

                local togglebtn = scripte.Main.Options.BoxToggle.TOGGLEBUTTON
                togglebtn.MouseButton1Click:Connect(function()
                    local bool = not toggled
                    if not bool then
                        pickerColor.Visible = true
                        pickerValue.Visible = true
                        togglebtn.BackgroundColor3 = Color3.fromRGB(20,20,20)
                        togglebtn.BorderColor3 = Color3.fromRGB(255,255,255)
                        valueBlock.ImageColor3 = lastcolorvalue
                        ColrBlock.BackgroundColor3 = lastcolorblock

                        Box.BackgroundColor3 = lastcolorblock
                        ColorFunc(lastcolorblock)

                    else
                        lastcolorvalue = valueBlock.ImageColor3
                        lastcolorblock = ColrBlock.BackgroundColor3
                        pickerColor.Visible = false
                        pickerValue.Visible = false
                        valueBlock.ImageColor3 = lastcolorvalue
                        
                    end
                    toggled = bool
                end)
                
                local default = parameters["Default"] or parameters["Initial"]

                if default then
                    setColor(default)
                end
                
                coroutine.wrap(function()
                    while task.wait() do
                        if toggled then
                            for i = 0,1,0.01 do
                                if not toggled then break end
                                ColrBlock.BackgroundColor3 = Color3.fromHSV(i,1,1)
                                togglebtn.BorderColor3 = Color3.fromHSV(i,1,1)
                                togglebtn.BackgroundColor3 = Color3.fromHSV(i,1,1)
                                valueBlock.ImageColor3 = Color3.fromHSV(i,1,1)
                                Box.BackgroundColor3 = Color3.fromHSV(i,1,1)
                                ColorFunc(Color3.fromHSV(i,1,1))
                                wait(0.003)
                            end
                        end
                    end
                end)()
                
        

            TextButton.MouseButton1Click:connect(function()
                ColorPicker.Visible = false
            end)

            table.insert(UIElements, ElementData)

            return ElementData
        end

        return PageFunctions
    end

    return GuiFunctions
end

return library
