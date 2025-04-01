local library = {}

function library:CreateGui(parameters)
    --Library Data
    local ThemeColor = Color3.fromRGB(112, 138, 255)
    local Pages = {}
    local GuiSubFuncs = {}
    local UIElements = {}

    --Objects Instances
    local newuielysium = Instance.new("ScreenGui")

    if get_hidden_gui or gethui then
        local hiddenUI = get_hidden_gui or gethui
        newuielysium.Parent = hiddenUI()
    else
        newuielysium.Parent = game.CoreGui
    end

    
    local MainBackground = Instance.new("Frame")
    local Dropdowns = Instance.new("Folder", MainBackground)
    Dropdowns.Name = "Dropdowns"
    local DropShadowHolder = Instance.new("Frame")
    local DropShadow = Instance.new("ImageLabel")
    local UICorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local TopBar = Instance.new("Frame")
    local ImageLabel = Instance.new("ImageLabel")
    local TextLabel = Instance.new("TextLabel")
    local Lines = Instance.new("Frame")
    local Lines_2 = Instance.new("Frame")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local MobilesOpenUI = Instance.new("Frame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local OpenUI = Instance.new("ImageButton")
    newuielysium.Name = "newuielysium"
    newuielysium.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    MainBackground.Name = "MainBackground"
    MainBackground.Parent = newuielysium
    MainBackground.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
    MainBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MainBackground.BorderSizePixel = 0
    MainBackground.Position = UDim2.new(0.276695758, 0, 0.232587069, 0)
    MainBackground.Size = UDim2.new(0, 665, 0, 429)
    MainBackground.ClipsDescendants = true
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

    local SBSHADOW = DropShadowHolder:Clone()
    SBSHADOW.AnchorPoint = Vector2.new(0.5,0.5)

    MainBackground:GetPropertyChangedSignal("Position"):connect(function()
        SBSHADOW.Position = MainBackground.Position
    end)

    SBSHADOW.Size = MainBackground.Size
    SBSHADOW.Position = MainBackground.Position

    SBSHADOW.Name = "DropShadowHolder"
    SBSHADOW.Parent = newuielysium
    local shadowim2 = DropShadow:Clone()
    shadowim2.Parent = SBSHADOW
    
    DropShadow.Size = UDim2.new(1, 39, 1, 42)


    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = MainBackground
    local uic2 = UICorner:Clone()
    uic2.Parent = TopBar
    uic2.CornerRadius = UDim.new(0, 100)
    Title.Name = "Title"
    Title.Parent = MainBackground
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0, 0, 0.0438525155, 0)
    Title.Size = UDim2.new(0, 195, 0, 50)
    Title.Font = Enum.Font.Unknown
    Title.Text = "E L Y S I U M"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 21.000
    TopBar.Name = "TopBar"
    TopBar.Parent = MainBackground
    TopBar.BackgroundColor3 = Color3.fromRGB(8,8,8)
    TopBar.BackgroundTransparency = 0
    TopBar.ZIndex = 3
    TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TopBar.BorderSizePixel = 0
    TopBar.Position = UDim2.new(0.294212222, 0, 0, 0)
    TopBar.Size = UDim2.new(0, 469, 0, 45)
    ImageLabel.Parent = TopBar
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.918976545, 0, 0.200000003, 0)
    ImageLabel.Size = UDim2.new(0, 28, 0, 28)
    ImageLabel.Image = "http://www.roblox.com/asset/?id=110637318822640"
    TextLabel.Parent = TopBar
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.0234541576, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 189, 0, 45)
    TextLabel.Font = Enum.Font.Unknown
    TextLabel.Text = "Name"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 12.000
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    Lines.Name = "Lines"
    Lines.Parent = MainBackground
    Lines.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    Lines.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Lines.BorderSizePixel = 0
    Lines.Position = UDim2.new(0.294, 0, 0.107000001, 0)
    Lines.Size = UDim2.new(0, 468, 0, 1)
    Lines_2.Name = "Lines"
    Lines_2.Parent = MainBackground
    Lines_2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    Lines_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Lines_2.BorderSizePixel = 0
    Lines_2.Position = UDim2.new(0.294212222, 0, 0.106999896, 0)
    Lines_2.Size = UDim2.new(0, 1, 0, 383)
    ScrollingFrame.Parent = MainBackground
    ScrollingFrame.Active = true
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame.BackgroundTransparency = 1.000
    ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.Position = UDim2.new(0, 0, 0.159999996, 0)
    ScrollingFrame.Size = UDim2.new(0, 195, 0, 359)
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollingFrame.ScrollBarThickness = 2
    ScrollingFrame.AutomaticCanvasSize = "Y"
    UIListLayout.Parent = ScrollingFrame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    MobilesOpenUI.Name = "MobilesOpenUI"
    MobilesOpenUI.Parent = newuielysium
    MobilesOpenUI.Visible = false
    MobilesOpenUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MobilesOpenUI.BackgroundTransparency = 1.000
    MobilesOpenUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MobilesOpenUI.BorderSizePixel = 0
    MobilesOpenUI.Size = UDim2.new(0, 100, 1, 0)
    UIListLayout_2.Parent = MobilesOpenUI
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
    OpenUI.Name = "OpenUI"
    OpenUI.Parent = MobilesOpenUI
    OpenUI.Active = false
    OpenUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    OpenUI.BackgroundTransparency = 1.000
    OpenUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
    OpenUI.BorderSizePixel = 0
    OpenUI.Selectable = false
    OpenUI.Size = UDim2.new(0, 55, 0, 55)
    OpenUI.Image = "http://www.roblox.com/asset/?id=98524993722105"
    ----
    --Object Scripts
    MainBackground.Position = UDim2.new(0.5, 0, 0.5, 0) -- Centered based on Scale
    MainBackground.AnchorPoint = Vector2.new(0.5, 0.5) -- Adjusts anchor to the center
    pcall(function() local a=game:GetService("UserInputService")local b=game:GetService("RunService")local c=MainBackground;local d;local e;local f;local g;function Lerp(h,i,j)return h+(i-h)*j end;local k;local l;local m=8;function Update(n)if not g then return end;if not d and l then c.Position=UDim2.new(g.X.Scale,Lerp(c.Position.X.Offset,l.X.Offset,n*m),g.Y.Scale,Lerp(c.Position.Y.Offset,l.Y.Offset,n*m))return end;local o=k-a:GetMouseLocation()local p=g.X.Offset-o.X;local q=g.Y.Offset-o.Y;l=UDim2.new(g.X.Scale,p,g.Y.Scale,q)c.Position=UDim2.new(g.X.Scale,Lerp(c.Position.X.Offset,p,n*m),g.Y.Scale,Lerp(c.Position.Y.Offset,q,n*m))end;c.InputBegan:Connect(function(r)if r.UserInputType==Enum.UserInputType.MouseButton1 or r.UserInputType==Enum.UserInputType.Touch then d=true;f=r.Position;g=c.Position;k=a:GetMouseLocation()r.Changed:Connect(function()if r.UserInputState==Enum.UserInputState.End then d=false end end)end end)c.InputChanged:Connect(function(r)if r.UserInputType==Enum.UserInputType.MouseMovement or r.UserInputType==Enum.UserInputType.Touch then e=r end end)b.Heartbeat:Connect(Update) end)
    ----

    if parameters["Mobile"] then

        MobilesOpenUI.Visible = true
        MobilesOpenUI.ZIndex = 10
        OpenUI.MouseButton1Click:connect(function()
            SBSHADOW.Visible = not SBSHADOW.Visible
            MainBackground.Visible = not MainBackground.Visible
        end)

    end

    if parameters["Tween"] then
        SBSHADOW.Visible = false
        MainBackground.Size = UDim2.new(0,0,0,0)
        local tween = game:GetService("TweenService"):Create(MainBackground, TweenInfo.new(0.3), {Size = UDim2.new(0,665,0,429)})
        tween:Play()
        local objs = {}
        for i,v in pairs(MainBackground:GetDescendants()) do
            if v:IsA("Frame") then
                if v.Transparency == 0 then
                    v.Transparency = 1
                    table.insert(objs,v)
                end
            end
            if v:IsA("TextLabel") then
                if v.TextTransparency == 0 then
                    v.TextTransparency = 1
                    table.insert(objs,v)
                end
            end
            if v:IsA("ImageLabel") then
                if v.ImageTransparency == 0 then
                    v.ImageTransparency = 1
                    table.insert(objs,v)
                end
            end 
        end

        wait(0.2)

        for i,v in pairs(objs) do
            if v:IsA("Frame") then
                if v.Transparency == 1 then
                     game:GetService("TweenService"):Create(v, TweenInfo.new(0.2), {Transparency = 0}):Play()
                end
            end
            if v:IsA("TextLabel") then
                if v.TextTransparency == 1 then
                    game:GetService("TweenService"):Create(v, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
                end
            end
            if v:IsA("ImageLabel") then
                if v.ImageTransparency == 1 then
                    if v == ImageLabel then
                        game:GetService("TweenService"):Create(v, TweenInfo.new(0.2), {ImageTransparency = 0}):Play()
                    else
                    game:GetService("TweenService"):Create(v, TweenInfo.new(0.2), {ImageTransparency = 0.5}):Play()
                    end
                end
            end 
        end
        SBSHADOW.Visible = true
        ImageLabel.ImageTransparency = 0
    end

    TextLabel.FontFace = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Title.FontFace = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

    Title.Text = parameters["Title"]
    Title.Text = parameters["Title"]
    TextLabel.Text = parameters["Name"]


    GuiSubFuncs.GuiObject = newuielysium
    
    function GuiSubFuncs:ChangeTheme(color)
        ThemeColor = color
        for i,v in pairs(Pages) do
            if v["Opened"] then
                v.NavigationButton.TextButton.TextColor3 = color
                v.NavigationButton.ImageButton.ImageColor3 = color
            end
        end

        for i,v in pairs(UIElements) do
            if v.Name == "TextButtonis" then
                v.ImageLabel.ImageColor3 = color
            elseif v.Name == "ToggleFrame" then
                if v:GetAttribute("Toggled") then
                    v.Toggle.BackgroundColor3 = color
                end
                v.Toggle.ToggleBtn.BackgroundColor3 = color
            elseif v.Name == "Slider" then
                v.Slider.Slider.Bar.BackgroundColor3 = color
                v.Slider.Slider.circ.BackgroundColor3 = color
            end
        end
    end


    local LastOpened = 1
    local CurrentlyOpened = nil

    function GuiSubFuncs:AddPage(parameters)

        local PageFuncs = {}
        local Index = #Pages + 1

        local Page = Instance.new("ScrollingFrame")
        
        local NavButton = Instance.new("TextButton")
        local ImageButton = Instance.new("ImageButton")
        local TextButton = Instance.new("TextButton")
        NavButton.Name = "NavButton"
        NavButton.Text = ""
        NavButton.Parent = ScrollingFrame
        NavButton.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
        NavButton.BackgroundTransparency = 1.000
        NavButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        NavButton.BorderSizePixel = 0
        NavButton.Size = UDim2.new(0, 195, 0, 45)
        ImageButton.Parent = NavButton
        ImageButton.Interactable = false
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.BackgroundTransparency = 1.000
        ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ImageButton.BorderSizePixel = 0
        ImageButton.Position = UDim2.new(0.148000002, 0, 0.344999999, 0)
        ImageButton.Size = UDim2.new(0, 17, 0, 17)
        ImageButton.ImageColor3 = Color3.fromRGB(177, 177, 177)
        TextButton.Parent = NavButton
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.282051295, 0, 0.18199259, 0)
        TextButton.Size = UDim2.new(0, 112, 0, 31)
        TextButton.Font = Enum.Font.SourceSansBold
        TextButton.TextColor3 = Color3.fromRGB(177, 177, 177)
        TextButton.TextSize = 14.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        TextButton.Interactable = false
        TextButton.FontFace = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

        local InitiallyOpened = false
        if #Pages == 0 then
            CurrentlyOpened = Page
            TextButton.TextColor3 = ThemeColor
            ImageButton.ImageColor3 = ThemeColor
            InitiallyOpened = true
        end

        TextButton.Text = parameters["Name"]
        ImageButton.Image = parameters["Icon"]

        local NavButtonData = {
            ["Name"] = parameters["Name"],
            ["NavigationButton"] = NavButton,
            ["NavigationPage"] = Page,
            ["Opened"] = InitiallyOpened
        }
        table.insert(Pages, NavButtonData)

        NavButton.MouseButton1Click:connect(function()
            
            if NavButtonData["Opened"] then return end
            local Direction = ""
            if Index < LastOpened then
                Direction = "Up"
            elseif Index > LastOpened then
                Direction = "Down"
            end
            LastOpened = Index
            for i,v in pairs(Pages) do
                if v["Opened"] then
                    game:GetService("TweenService"):Create(v.NavigationButton.TextButton, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(177, 177, 177)}):Play()
                    game:GetService("TweenService"):Create(v.NavigationButton.ImageButton, TweenInfo.new(0.1), {ImageColor3 = Color3.fromRGB(177, 177, 177)}):Play()
                    v["Opened"] = false
                    --v["NavigationPage"].Visible = false
                end
            end
            game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.1), {TextColor3 = ThemeColor}):Play()
            game:GetService("TweenService"):Create(ImageButton, TweenInfo.new(0.1), {ImageColor3 = ThemeColor}):Play()
            NavButtonData["Opened"] = true
            

            Page.Visible = true

            if Direction == "Up" then
                Page.Position = UDim2.new(0.293233097, 0, 1, 0)
                game:GetService("TweenService"):Create(Page, TweenInfo.new(0.3), {Position = UDim2.new(0.293233097, 0, 0.109331034, 0)}):Play()

                game:GetService("TweenService"):Create(CurrentlyOpened, TweenInfo.new(0.3), {Position = UDim2.new(0.293233097, 0, -1, 0)}):Play()

            else
                Page.Position = UDim2.new(0.293233097, 0, -1, 0)
                game:GetService("TweenService"):Create(Page, TweenInfo.new(0.3), {Position = UDim2.new(0.293233097, 0, 0.109331034, 0)}):Play()
                game:GetService("TweenService"):Create(CurrentlyOpened, TweenInfo.new(0.3), {Position = UDim2.new(0.293233097, 0, 1, 0)}):Play()
            end

            CurrentlyOpened = Page
        end)

        
        Page.Visible = InitiallyOpened
        Page.CanvasSize = UDim2.new(0,0,0,0)
        local Right = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")
        local Left = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")
        Page.Name = "Page"
        Page.Parent = MainBackground
        Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Page.BackgroundTransparency = 1.000
        Page.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Page.BorderSizePixel = 0
        Page.ClipsDescendants = true
        Page.ScrollBarThickness = 2
        Page.AutomaticCanvasSize = "Y"
        Page.Position = UDim2.new(0.293233097, 0, 0.109331034, 0)
        Page.Size = UDim2.new(0, 469, 0, 381)
        Right.Name = "Right"
        Right.AutomaticCanvasSize = "Y"
        Right.Parent = Page
        Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Right.BackgroundTransparency = 1
        Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Right.BorderSizePixel = 0
        Right.Position = UDim2.new(0.520255446, 0, 0.0252213757, 0)
        Right.Size = UDim2.new(0, 211, 0, 0) --362
        UIListLayout.Parent = Right
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        Left.Name = "Left"
        Left.Parent = Page
        Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Left.BackgroundTransparency = 1
        Left.AutomaticCanvasSize = "Y"
        Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Left.BorderSizePixel = 0
        Left.Position = UDim2.new(0.0277181603, 0, 0.0250814445, 0)
        Left.Size = UDim2.new(0, 211, 0, 0) --362
        UIListLayout_2.Parent = Left
        UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder


        function PageFuncs:AddButton(parameters)
            local TextButtonis = Instance.new("TextButton")
            table.insert(UIElements, TextButtonis)
            TextButtonis.ClipsDescendants = true
            local TextLabel = Instance.new("TextLabel")
            local Circle1 = Instance.new("ImageLabel")
            local ImageLabel = Instance.new("ImageLabel")
            local UIListLayout = Instance.new("UIListLayout")
            local uistroke = Instance.new("UIStroke")
            uistroke.Color = Color3.new(0.121569, 0.121569, 0.121569)
            uistroke.ApplyStrokeMode = "Border"
            uistroke.Parent = TextButtonis
            TextButtonis.Name = "TextButtonis"
            TextButtonis.Parent = Page[parameters["Side"]]
            TextButtonis.Active = false
            TextButtonis.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            TextButtonis.BorderColor3 = Color3.fromRGB(31, 31, 31)
            TextButtonis.BorderSizePixel = 0
            TextButtonis.Position = UDim2.new(0, 0, -3.11403852e-07, 0)
            TextButtonis.Selectable = false
            TextButtonis.Size = UDim2.new(0, 211, 0, 34)
            TextButtonis.Text = ""
            TextButtonis.AutoButtonColor = false
            TextLabel.Parent = TextButtonis
            TextLabel.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0379146934, 0, 0.18, 0) --0.142716467
            TextLabel.Size = UDim2.new(0, 194, 0, 21)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = parameters["Name"]
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 14.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            Circle1.Name = "Circle"
            Circle1.Parent = TextButtonis
            Circle1.Visible = false
            Circle1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Circle1.BackgroundTransparency = 1.000
            Circle1.BorderColor3 = Color3.fromRGB(27, 42, 53)
            Circle1.ZIndex = 10
            Circle1.Image = "rbxassetid://266543268"
            Circle1.ImageColor3 = Color3.fromRGB(88, 88, 88)
            Circle1.ImageTransparency = 0.600
            ImageLabel.Parent = TextButtonis
            ImageLabel.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Position = UDim2.new(0.88499999, 0, 0.263000011, 0)
            ImageLabel.Size = UDim2.new(0, 18, 0, 18)
            ImageLabel.Image = "http://www.roblox.com/asset/?id=16630151971"
            ImageLabel.ImageColor3 = ThemeColor
            UIListLayout.Parent = Button
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, -4)
            local Description = Instance.new("TextLabel")
            Description.Name = "Description"
            Description.Parent = TextButtonis
            Description.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            Description.BackgroundTransparency = 1.000
            Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Description.BorderSizePixel = 0
            Description.Position = UDim2.new(0.043, 0,0.539, 0)
            Description.Size = UDim2.new(0, 195, 0, 13)
            Description.Font = Enum.Font.SourceSansSemibold
            Description.Visible = false
            Description.Text = "..."
            Description.TextColor3 = Color3.fromRGB(138, 138, 138)
            Description.TextSize = 11.000
            Description.TextWrapped = true
            Description.TextXAlignment = Enum.TextXAlignment.Left
            Description.TextYAlignment = Enum.TextYAlignment.Top
            m=game.Players.LocalPlayer:GetMouse()
            TextButtonis.MouseButton1Down:connect(function()
                local X = m.X
                local Y = m.Y
                local Button = TextButtonis
                Button.ClipsDescendants = true
                local Circle = Circle1:Clone()
                Circle.Visible = true
                Circle.Parent = TextButtonis
                local NewX = X - Circle.AbsolutePosition.X
                local NewY = Y - Circle.AbsolutePosition.Y
                Circle.Position = UDim2.new(0, NewX, 0, NewY)
                local Size = 0
                if Button.AbsoluteSize.X > Button.AbsoluteSize.Y then
                    Size = Button.AbsoluteSize.X*1.5
                elseif Button.AbsoluteSize.X < Button.AbsoluteSize.Y then
                    Size = Button.AbsoluteSize.Y*1.5
                elseif Button.AbsoluteSize.X == Button.AbsoluteSize.Y then
                    Size = Button.AbsoluteSize.X*1.5
                end
                local Time = 0.5
                Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
                for i=1,12 do
                    Circle.ImageTransparency = Circle.ImageTransparency + 0.01
                    wait(Time/10)
                end
                Circle:Destroy()
            end)

            TextButtonis.MouseButton1Click:connect(function()
                parameters["Function"]()
            end)

            local TweenStroke = nil

            TextButtonis.MouseEnter:connect(function()
                TextButtonis.ZIndex = 999
                pcall(function() TweenStroke:Cancel() end)
                local tween = game:GetService("TweenService"):Create(uistroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear), {Thickness = 4})
                TweenStroke = tween
                tween:Play()
            end)

            TextButtonis.MouseLeave:connect(function()
                TextButtonis.ZIndex = 1
                pcall(function() TweenStroke:Cancel() end)
                local tween = game:GetService("TweenService"):Create(uistroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear), {Thickness = 1})
                TweenStroke = tween
                tween:Play()
            end)

            if parameters["Description"] then
                Description.Visible = true
                TextLabel.Position = UDim2.new(0.038, 0,0.05, 0)
                Description.Text = parameters["Description"]
                TextButtonis.Size = UDim2.new(0, 211,0, 43)
            end

            return parameters["Function"]

        end

        function PageFuncs:AddToggle(parameters)
            local ToggleFrame = Instance.new("Frame")
            table.insert(UIElements, ToggleFrame)
            local uistroke = Instance.new("UIStroke")
            uistroke.Color = Color3.new(0.121569, 0.121569, 0.121569)
            uistroke.ApplyStrokeMode = "Border"
            uistroke.Parent = ToggleFrame
            local TogleName = Instance.new("TextLabel")
            local Toggle = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local ToggleBtn = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local Description = Instance.new("TextLabel")
            ToggleFrame.Name = "ToggleFrame"
            ToggleFrame.Parent = Page[parameters["Side"]]
            ToggleFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            ToggleFrame.BorderColor3 = Color3.fromRGB(31, 31, 31)
            ToggleFrame.Position = UDim2.new(0.0260000005, 0, 0.104999997, 0)
            ToggleFrame.Size = UDim2.new(0, 211, 0, 34)
            TogleName.Name = "TogleName"
            TogleName.Parent = ToggleFrame
            TogleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TogleName.BackgroundTransparency = 1.000
            TogleName.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TogleName.BorderSizePixel = 0
            TogleName.Position = UDim2.new(0.0379146934, 0, 0.272913307, 0)
            TogleName.Size = UDim2.new(0, 124, 0, 16)
            TogleName.Font = Enum.Font.SourceSansSemibold
            TogleName.Text = "Dodge Light Hits"
            TogleName.TextColor3 = Color3.fromRGB(255, 255, 255)
            TogleName.TextSize = 14.000
            TogleName.TextXAlignment = Enum.TextXAlignment.Left
            TogleName.TextYAlignment = Enum.TextYAlignment.Top
            Toggle.Name = "Toggle"
            Toggle.Text = ""
            Toggle.Parent = ToggleFrame
            Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Toggle.BorderSizePixel = 0
            Toggle.BackgroundTransparency = 0.55
            Toggle.Position = UDim2.new(0.830000043, 0, 0.275175214, 0)
            Toggle.Size = UDim2.new(0, 29, 0, 14)
            UICorner.CornerRadius = UDim.new(0, 10)
            UICorner.Parent = Toggle
            ToggleBtn.Name = "ToggleBtn"
            ToggleBtn.Parent = Toggle
            ToggleBtn.Active = false
            ToggleBtn.BackgroundColor3 = ThemeColor
            ToggleBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ToggleBtn.BorderSizePixel = 0
            ToggleBtn.Position = UDim2.new(0.15, 0, 0.19, 0)
            ToggleBtn.Selectable = false
            ToggleBtn.Size = UDim2.new(0, 9, 0, 9)
            ToggleBtn.Text = ""
            ToggleBtn.AutoButtonColor = false
            UICorner_2.CornerRadius = UDim.new(0, 10)
            UICorner_2.Parent = ToggleBtn
            Description.Name = "Description"
            Description.Parent = ToggleFrame
            Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Description.BackgroundTransparency = 1.000
            Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Description.BorderSizePixel = 0
            Description.Position = UDim2.new(0.0379146934, 0, 0.488372087, 0)
            Description.Size = UDim2.new(0, 159, 0, 16)
            Description.Visible = false
            Description.Font = Enum.Font.SourceSansSemibold
            Description.Text = "Automatically dodge punches"
            Description.TextColor3 = Color3.fromRGB(138, 138, 138)
            Description.TextSize = 11.000
            Description.TextXAlignment = Enum.TextXAlignment.Left
            Description.TextYAlignment = Enum.TextYAlignment.Top

            TogleName.Text = parameters["Name"]

            if parameters["Description"] then
                Description.Visible = true
                Description.Text = parameters["Description"]
                TogleName.Position = UDim2.new(0.038, 0,0.116, 0)
                Toggle.Position = UDim2.new(0.83, 0,0.334, 0)
                ToggleFrame.Size = UDim2.new(0, 211,0, 43)
            end


            local Toggled = false
            local Tweens = {}
            function OnToggle()
                if not Toggled then
                    game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.07, Enum.EasingStyle.Linear), {BackgroundColor3 = ThemeColor}):Play()
                    game:GetService("TweenService"):Create(ToggleBtn, TweenInfo.new(0.07, Enum.EasingStyle.Linear), {Position = UDim2.new(0.575, 0,0.19, 0)}):Play()
                    Toggled = true
                    parameters["Function"](true)
                    ToggleFrame:SetAttribute("Toggled", true)
                else
                    game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.07, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(30,30,30)}):Play()
                    game:GetService("TweenService"):Create(ToggleBtn, TweenInfo.new(0.07, Enum.EasingStyle.Linear), {Position = UDim2.new(0.15, 0,0.19, 0)}):Play()
                    Toggled = false
                    ToggleFrame:SetAttribute("Toggled", false)
                    parameters["Function"](false)
                end
            end

            Toggle.MouseButton1Click:connect(OnToggle)
            ToggleBtn.MouseButton1Click:connect(OnToggle)

            return OnToggle
        end

        function PageFuncs:AddLabel(parameters)
            local TextLabel = Instance.new("Frame")
            local labeltext = Instance.new("TextLabel")
            TextLabel.Name = "TextLabel"
            TextLabel.Parent = Page[parameters["Side"]]
            TextLabel.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            TextLabel.BorderColor3 = Color3.fromRGB(31, 31, 31)
            TextLabel.Position = UDim2.new(0.0260000005, 0, 0.104999997, 0)
            TextLabel.Size = UDim2.new(0, 211, 0, 34)
            labeltext.Name = "labeltext"
            labeltext.Parent = TextLabel
            labeltext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            labeltext.BackgroundTransparency = 1.000
            labeltext.BorderColor3 = Color3.fromRGB(0, 0, 0)
            labeltext.BorderSizePixel = 0
            labeltext.Position = UDim2.new(0.0379146934, 0, 0.272913307, 0)
            labeltext.Size = UDim2.new(0, 124, 0, 16)
            labeltext.Font = Enum.Font.SourceSansSemibold
            labeltext.TextColor3 = Color3.fromRGB(255, 255, 255)
            labeltext.TextSize = 14.000
            labeltext.TextXAlignment = Enum.TextXAlignment.Left
            labeltext.TextYAlignment = Enum.TextYAlignment.Top
            labeltext.Text = parameters["Text"]

            return labeltext
        end

        function PageFuncs:AddSlider(parameters)
            local Slider = Instance.new("Frame")
            table.insert(UIElements, Slider)
            local name = Instance.new("TextLabel")
            local SlideValue = Instance.new("TextLabel")
            local Description = Instance.new("TextLabel")
            local Slider_2 = Instance.new("Frame")
            local Slider_3 = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local UIListLayout = Instance.new("UIListLayout")
            local Bar = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local circ = Instance.new("TextButton")
            local UICorner_3 = Instance.new("UICorner")
            local UICorner_4 = Instance.new("UICorner")
            local uistroke = Instance.new("UIStroke")
            uistroke.Color = Color3.new(0.121569, 0.121569, 0.121569)
            uistroke.ApplyStrokeMode = "Border"
            uistroke.Parent = Slider
            Slider.Name = "Slider"
            Slider.Parent = Page[parameters["Side"]]
            Slider.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            Slider.BorderColor3 = Color3.fromRGB(31, 31, 31)
            Slider.Position = UDim2.new(0.522000015, 0, 0.709999979, 0)
            Slider.Size = UDim2.new(0, 211, 0, 34)
            Slider.BorderSizePixel = 0
            name.Name = "name"
            name.Parent = Slider
            name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            name.BackgroundTransparency = 1.000
            name.BorderColor3 = Color3.fromRGB(0, 0, 0)
            name.BorderSizePixel = 0
            name.Position = UDim2.new(0.0331753567, 0, 0.0686519817, 0)
            name.Size = UDim2.new(0, 168, 0, 16)
            name.Font = Enum.Font.SourceSansSemibold
            name.Text = parameters["Name"]
            name.TextColor3 = Color3.fromRGB(255, 255, 255)
            name.TextSize = 14.000
            name.TextXAlignment = Enum.TextXAlignment.Left
            name.TextYAlignment = Enum.TextYAlignment.Top
            SlideValue.Name = "SlideValue"
            SlideValue.Parent = Slider
            SlideValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SlideValue.BackgroundTransparency = 1.000
            SlideValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SlideValue.BorderSizePixel = 0
            SlideValue.Position = UDim2.new(0.791468918, 0, 0.0686523467, 0)
            SlideValue.Size = UDim2.new(0, 36, 0, 16)
            SlideValue.Font = Enum.Font.SourceSansSemibold
            SlideValue.Text = parameters["Initial"]
            SlideValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            SlideValue.TextSize = 14.000
            SlideValue.TextXAlignment = Enum.TextXAlignment.Right
            SlideValue.TextYAlignment = Enum.TextYAlignment.Top
            Description.Name = "Description"
            Description.Parent = Slider
            Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Description.BackgroundTransparency = 1.000
            Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Description.BorderSizePixel = 0
            Description.Position = UDim2.new(0.0331753567, 0, 0.34996593, 0)
            Description.Size = UDim2.new(0, 160, 0, 16)
            Description.Visible = false
            Description.Font = Enum.Font.SourceSansSemibold
            Description.Text = "..."
            Description.TextColor3 = Color3.fromRGB(138, 138, 138)
            Description.TextSize = 11.000
            Description.TextXAlignment = Enum.TextXAlignment.Left
            Description.TextYAlignment = Enum.TextYAlignment.Center
            Slider_2.Name = "Slider"
            Slider_2.Parent = Slider
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
            Slider_3.Position = UDim2.new(0.487624705, 0, 0.56736964, 0)
            Slider_3.Size = UDim2.new(0.968233645, 0, 0.368507683, 0)
            Slider_3.Font = Enum.Font.Cartoon
            Slider_3.Text = ""
            Slider_3.TextColor3 = Color3.fromRGB(0, 0, 0)
            Slider_3.TextSize = 14.000
            UICorner.Parent = Slider_3
            UIListLayout.Parent = Slider_3
            UIListLayout.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            UIListLayout.Padding = UDim.new(0, -6)
            Bar.Name = "Bar"
            Bar.Parent = Slider_3
            Bar.BackgroundColor3 = ThemeColor
            Bar.BorderColor3 = Color3.fromRGB(27, 42, 53)
            Bar.BorderSizePixel = 0
            Bar.Position = UDim2.new(0, 0, -0.124996848, 0)
            Bar.Size = UDim2.new(0.971000016, 0, 1.12500322, 0)
            Bar.Transparency = 0.1
            UICorner_2.Parent = Bar
            circ.Name = "circ"
            circ.Parent = Slider_3
            circ.BackgroundColor3 = ThemeColor
            circ.BorderColor3 = Color3.fromRGB(0, 0, 0)
            circ.BorderSizePixel = 0
            circ.Position = UDim2.new(0.968999982, 0, -1, 0)
            circ.Size = UDim2.new(0, 13, 0, 13)
            circ.Font = Enum.Font.SourceSans
            circ.Text = ""
            circ.TextColor3 = Color3.fromRGB(0, 0, 0)
            circ.TextSize = 14.000
            UICorner_3.Parent = circ
            UICorner_4.CornerRadius = UDim.new(0, 4)
            UICorner_4.Parent = Slider_2
            local script = Slider_2
            local minimum = parameters["Min"]
            local maximum = parameters["Max"]
            local initial = parameters["Initial"]
            local slider = Slider_3
            local bar = Bar
            local mouse = game.Players.LocalPlayer:GetMouse()
            local hov = circ
            local held = false
            local mainsize = 1.125

            if parameters["Description"] then
                Slider.Size = UDim2.new(0, 211,0, 60)
                mainsize = 1.21
                Slider_2.Size = UDim2.new(0.936, 0,0.253, 0)
                Slider_2.Position = UDim2.new(0.04, 0,0.6, 0)
                Description.Visible = true
                Description.Text = parameters["Description"]
            end


            local initialScale = (initial - minimum) / (maximum - minimum)
            bar.Size = UDim2.new(initialScale, 0, mainsize, 0)
            SlideValue.Text = tostring(initial)
            slider.MouseButton1Down:Connect(function()
            held = true
                local mouseX = game.Players.LocalPlayer:GetMouse().X
                bar.Size = UDim2.new(math.clamp((mouseX - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1), 0, mainsize, 0)
                SlideValue.Text = tostring(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum))
                parameters["Function"](tonumber(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum)))
            end)
            hov.MouseButton1Down:Connect(function()
                held = true
                local mouseX = game.Players.LocalPlayer:GetMouse().X
                bar.Size = UDim2.new(math.clamp((mouseX - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1), 0, mainsize, 0)
                SlideValue.Text = tostring(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum))
                parameters["Function"](tonumber(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum)))
            end)
            game:GetService("UserInputService").InputEnded:Connect(function(input, gp)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    held = false
                end
            end)
            mouse.Move:Connect(function()
                if held then
                    local mouseX = game.Players.LocalPlayer:GetMouse().X
                    bar.Size = UDim2.new(math.clamp((mouseX - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1), 0, mainsize, 0)
                    SlideValue.Text = tostring(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum))
                    parameters["Function"](tonumber(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum)))
                end
            end)
        end


        function PageFuncs:AddDropdown(parameters)
            local Dropdown = Instance.new("Frame")
            local Frame = Instance.new("TextButton")
            local TextButton = Instance.new("TextButton")
            local ImageLabel = Instance.new("ImageLabel")
            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Page[parameters["Side"]]
            Dropdown.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Dropdown.BorderSizePixel = 0
            Dropdown.Position = UDim2.new(0, 0, 0.183333337, 0)
            Dropdown.Size = UDim2.new(0, 211, 0, 34)
            Frame.Name = "Frame"
            Frame.Parent = Dropdown
            Frame.Active = false
            Frame.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
            Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Frame.BorderSizePixel = 0
            Frame.Selectable = false
            Frame.Size = UDim2.new(0, 211, 0, 34)
            Frame.Text = ""
            TextButton.Parent = Frame
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.BorderSizePixel = 0
            TextButton.ClipsDescendants = true
            TextButton.Position = UDim2.new(0.0369230881, 0, 0, 0)
            TextButton.Size = UDim2.new(0, 203, 0, 34)
            TextButton.Font = Enum.Font.SourceSansSemibold
            TextButton.Text = parameters["Name"]
            TextButton.Interactable = false
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 14.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Left
            ImageLabel.Parent = Frame
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Position = UDim2.new(0.919230759, 0, 0.321428567, 0)
            ImageLabel.Rotation = 0
            ImageLabel.Size = UDim2.new(0, 10, 0, 10)
            ImageLabel.Image = "rbxassetid://85736156388097"
            local Description = Instance.new("TextLabel")
            Description.Name = "Description"
            Description.Parent = Dropdown
            Description.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            Description.BackgroundTransparency = 1.000
            Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Description.BorderSizePixel = 0
            Description.Position = UDim2.new(0.043, 0,0.601, 0)
            Description.Size = UDim2.new(0, 195, 0, 13)
            Description.Visible = false
            Description.Font = Enum.Font.SourceSansSemibold
            Description.Text = "hai"
            Description.TextColor3 = Color3.fromRGB(138, 138, 138)
            Description.TextSize = 11.000
            Description.TextWrapped = true
            Description.TextXAlignment = Enum.TextXAlignment.Left
            Description.TextYAlignment = Enum.TextYAlignment.Top
            local DropDownBtnMain = TextButton
            if parameters["Description"] then
                Description.Visible = true
                Description.Text = parameters["Description"]
                Dropdown.Size = UDim2.new(0, 211,0, 43)
                TextButton.Size = UDim2.new(0, 203,0, 29)
                Frame.Size = UDim2.new(0, 211,0, 43)
            end

            local opened = false
	        local theirtween = nil
            local tweenstroke = nil

            local strok = Instance.new("UIStroke")
            strok.Color = Color3.new(0.121569, 0.121569, 0.121569)
            strok.ApplyStrokeMode = "Border"
            strok.Parent = Frame

            Frame.MouseEnter:connect(function()
                Frame.Parent.ZIndex = 999
                pcall(function()
                    tweenstroke:Cancel()
                end)
                pcall(function()
                    theirtween:Cancel()
                end)
                local tween = game:GetService("TweenService"):Create(strok, TweenInfo.new(0.08, Enum.EasingStyle.Linear), {Thickness = 4})
                tweenstroke = tween
                tween:Play()
        
                local tween2 = game:GetService("TweenService"):Create(Frame.ImageLabel, TweenInfo.new(0.2), {Rotation = 180})
                theirtween = tween2
                tween2:Play()
        
        
            end)
            
            Frame.MouseLeave:connect(function()
                Frame.Parent.ZIndex = 1
                pcall(function()
                    tweenstroke:Cancel()
                end)
                pcall(function()
                    theirtween:Cancel()
                end)
            
                local tween = game:GetService("TweenService"):Create(strok, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {Thickness = 1.2})
                tweenstroke = tween
                tween:Play()
        
                local tween2 = game:GetService("TweenService"):Create(Frame.ImageLabel, TweenInfo.new(0.2), {Rotation = 0})
                theirtween = tween2
                tween2:Play()
        
            end)

            local Blur = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            local UICorner = Instance.new("UICorner")
            local ScrollingFrame = Instance.new("ScrollingFrame")
            local UIListLayout_2 = Instance.new("UIListLayout")
            local Sample = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local UICorner_3 = Instance.new("UICorner")
            local TextBox = Instance.new("TextBox")
            local UICorner_4 = Instance.new("UICorner")
            local TextButton = Instance.new("TextButton")
            local UICorner_5 = Instance.new("UICorner")
            Blur.Name = "Dropdown"
            Blur.ZIndex = 2
            Blur.Parent = Dropdowns
            Blur.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Blur.BackgroundTransparency = 0.500
            Blur.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Blur.BorderSizePixel = 0
            Blur.Position = UDim2.new(0.295715988, 0, 0.0209790207, 0)
            Blur.Selectable = false
            Blur.Size = UDim2.new(0, 466, 0, 419)
            Blur.Visible = false
            Blur.CanvasSize = UDim2.new(0, 0, 1, 0)
            Blur.ScrollBarThickness = 3
            UIListLayout.Parent = Blur
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            UIListLayout.Padding = UDim.new(0, 15)
            UICorner.CornerRadius = UDim.new(0, 100)
            UICorner.Parent = Blur
            ScrollingFrame.Parent = Blur
            ScrollingFrame.Active = true
            ScrollingFrame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            ScrollingFrame.BorderColor3 = Color3.fromRGB(49, 49, 49)
            ScrollingFrame.Position = UDim2.new(0.21351932, 0, 0.155131266, 0)
            ScrollingFrame.Size = UDim2.new(0, 267, 0, 237)
            ScrollingFrame.AutomaticCanvasSize = "Y"
            local uistroke = Instance.new("UIStroke", ScrollingFrame)
            uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            uistroke.Color = Color3.new(0.262745, 0.262745, 0.262745)
            ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
            ScrollingFrame.ScrollBarThickness = 2
            UIListLayout_2.Parent = ScrollingFrame
            UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 3)
            Sample.Name = "Sample"
            Sample.Parent = Blur
            Sample.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            Sample.BorderColor3 = Color3.fromRGB(49, 49, 49)
            Sample.Position = UDim2.new(0.00749063678, 0, 0.00421940908, 0)
            Sample.Size = UDim2.new(0, 265, 0, 29)
            Sample.Visible = false
            Sample.Font = Enum.Font.SourceSans
            Sample.Text = "Player"
            Sample.TextColor3 = Color3.fromRGB(255, 255, 255)
            Sample.TextSize = 13.000
            local uistroke = Instance.new("UIStroke", Sample)
            uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            uistroke.Color = Color3.new(0.262745, 0.262745, 0.262745)
            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = Sample
            UICorner_3.CornerRadius = UDim.new(0, 5)
            UICorner_3.Parent = ScrollingFrame
            TextBox.Parent = Blur
            TextBox.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            TextBox.BorderColor3 = Color3.fromRGB(49, 49, 49)
            TextBox.Position = UDim2.new(0.223175973, 0, 0.727923632, 0)
            TextBox.Size = UDim2.new(0, 258, 0, 28)
            TextBox.ClearTextOnFocus = false
            TextBox.Font = Enum.Font.SourceSans
            TextBox.PlaceholderColor3 = Color3.fromRGB(116, 116, 116)
            TextBox.PlaceholderText = "..."
            TextBox.Text = ""
            TextBox.TextColor3 = Color3.fromRGB(211, 211, 211)
            TextBox.TextSize = 14.000
            local uistroke = Instance.new("UIStroke", TextBox)
            uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            uistroke.Color = Color3.new(0.262745, 0.262745, 0.262745)
            TextBox.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            UICorner_4.CornerRadius = UDim.new(0, 5)
            UICorner_4.Parent = TextBox
            TextButton.Parent = Blur
            TextButton.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            TextButton.BorderColor3 = Color3.fromRGB(49, 49, 49)
            TextButton.Position = UDim2.new(0.247854084, 0, 0.830548942, 0)
            TextButton.Size = UDim2.new(0, 258, 0, 28)
            TextButton.Font = Enum.Font.SourceSans
            TextButton.Text = "Close"
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 13.000
            TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            local uistroke = Instance.new("UIStroke", TextButton)
            uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            uistroke.Color = Color3.new(0.262745, 0.262745, 0.262745)

            UICorner_5.CornerRadius = UDim.new(0, 5)
            UICorner_5.Parent = TextButton

            TextButton.MouseButton1Click:connect(function()
                Blur.Visible = false
            end)

            Frame.MouseButton1Click:Connect(function()
                Blur.Visible = not Blur.Visible
                TextBox.Text = ""
            end)
            TextBox.Visible = false
            if parameters["Search"] then
                TextBox.Visible = true
            end

            TextBox.Changed:connect(function()
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

            for i,v in pairs(parameters["Objects"]()) do
                local btn = Sample:Clone()
                btn.Visible = true
                btn.Text = v
                btn.Parent = ScrollingFrame
                btn.MouseButton1Click:connect(function()
                    Blur.Visible = false
                    if parameters["SaveSelection"] then
                        DropDownBtnMain.Text = v
                        parameters["Function"](v)
                    end
                end)
            end

            return DropDownBtnMain

        end


        function PageFuncs:AddGap(parameters)
            local Gap = Instance.new("Frame")
            Gap.Name = "Gap"
            Gap.Parent = Page[parameters["Side"]]
            Gap.BackgroundColor3 = Color3.fromRGB(0,0,0)
            Gap.BackgroundTransparency = 1.000
            Gap.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Gap.BorderSizePixel = 0
            Gap.Position = UDim2.new(0, 0, 0.270718247, 0)
            Gap.Size = UDim2.new(0, 211, 0, parameters["Gap"] or 34)
        end

        function PageFuncs:AddKeybind(parameters)
            local Keybind = Instance.new("Frame")
            table.insert(UIElements, Keybind)
            local TogleName = Instance.new("TextLabel")
            local Description = Instance.new("TextLabel")
            local ToggleBtn = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            Keybind.Name = "Keybind"
            Keybind.Parent = Page[parameters["Side"]]
            Keybind.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
            Keybind.BorderColor3 = Color3.fromRGB(31, 31, 31)
            Keybind.Position = UDim2.new(0.0260000005, 0, 0.104999997, 0)
            Keybind.Size = UDim2.new(0, 211, 0, 34)
            TogleName.Name = "TogleName"
            TogleName.Parent = Keybind
            TogleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TogleName.BackgroundTransparency = 1.000
            TogleName.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TogleName.BorderSizePixel = 0
            TogleName.Position = UDim2.new(0.0379146934, 0, 0.272913307, 0)
            TogleName.Size = UDim2.new(0, 124, 0, 16)
            TogleName.Font = Enum.Font.SourceSansSemibold
            TogleName.Text = parameters["Name"]
            TogleName.TextColor3 = Color3.fromRGB(255, 255, 255)
            TogleName.TextSize = 14.000
            TogleName.TextXAlignment = Enum.TextXAlignment.Left
            TogleName.TextYAlignment = Enum.TextYAlignment.Top
            Description.Name = "Description"
            Description.Parent = Keybind
            Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Description.BackgroundTransparency = 1.000
            Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Description.BorderSizePixel = 0
            Description.Position = UDim2.new(0.0379146934, 0, 0.488372087, 0)
            Description.Size = UDim2.new(0, 159, 0, 16)
            Description.Visible = false
            Description.Font = Enum.Font.SourceSansSemibold
            Description.Text = ""
            Description.TextColor3 = Color3.fromRGB(138, 138, 138)
            Description.TextSize = 11.000
            Description.TextXAlignment = Enum.TextXAlignment.Left
            Description.TextYAlignment = Enum.TextYAlignment.Top
            ToggleBtn.Name = "ToggleBtn"
            ToggleBtn.Parent = Keybind
            ToggleBtn.Active = false
            ToggleBtn.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
            ToggleBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ToggleBtn.BorderSizePixel = 0
            ToggleBtn.Position = UDim2.new(0.587677717, 0, 0.184678912, 0)
            ToggleBtn.Selectable = false
            ToggleBtn.Size = UDim2.new(0, 77, 0, 21)
            ToggleBtn.Text = "E"
            ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleBtn.TextWrapped = true
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = ToggleBtn
            local userInputService = game:GetService("UserInputService")
            local function getmyebasdasda()
                ToggleBtn.Text = "..."
                local inputEvent
                inputEvent = userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
                    if not gameProcessedEvent then
                        wait(0.05)
                        if tostring(input.KeyCode.Name) ~= "Unknown" then
                            ToggleBtn.Text = "" .. tostring(input.KeyCode.Name)
                            parameters["Function"](input.KeyCode)
                        else
                            ToggleBtn.Text = "" .. tostring(input.UserInputType.Name)
                            parameters["Function"](input.UserInputType)
                        end
                        inputEvent:Disconnect()
                    end
                end)
            end
            ToggleBtn.MouseButton1Click:Connect(getmyebasdasda)

            if parameters["Description"] then
                Description.Visible = true
                Description.Text = parameters["Description"]
                TogleName.Position = UDim2.new(0.038, 0,0.116, 0)
                Keybind.Size = UDim2.new(0, 211,0, 43)
                Description.Position = UDim2.new(0.038, 0,0.512, 0)
                ToggleBtn.Position = UDim2.new(0.587677717, 0, 0.2579, 0)
            end

            if parameters["Initial"] then
                ToggleBtn.Text = parameters["Initial"].Name
            end
        end


        return PageFuncs
    end


    return GuiSubFuncs



    
end



return library
