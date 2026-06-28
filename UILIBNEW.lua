local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local library = {}

local library_data = {
    UI_Parent = (get_hidden_gui and get_hidden_gui()) or (gethui and gethui()) or game.CoreGui,
    Time_Loaded = os.time()
}

local function hash8(str)
    local hash = 0

    for i = 1, #str do
        hash = (hash * 31 + string.byte(str, i)) % 1e9
    end

    local letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local result = ""

    for i = 1, 8 do
        local index = (hash % 26) + 1
        result = string.sub(letters, index, index) .. result
        hash = math.floor(hash / 26)
    end

    return result
end

function library:CreateGui(parameters : table)

    -- Main References

    local UI_Functions = {}

    local UIData = {
        Elements = {},
        Pages = {},
        PageIndex = 0,
        Theme_Color = Color3.fromRGB(0, 65, 135),
        Mode = "Dark",
    }

    ----

    

    local lib2026 = Instance.new("ScreenGui")

    getgenv().poop = lib2026
    UIData.GUI = lib2026
    
    
    local MainBackground = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local DropShadowHolder = Instance.new("Frame")
    local DropShadow = Instance.new("ImageLabel")
    local PageNavigations = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local RightSideCover = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local CornerCover = Instance.new("Frame")
    local TopBar = Instance.new("Frame")
    local ImageLabel = Instance.new("ImageLabel")
    local Lightmode = Instance.new("Frame")
    local ImageButton = Instance.new("ImageButton")
    local UICorner_3 = Instance.new("UICorner")
    local DarkMode = Instance.new("Frame")
    local ImageButton_2 = Instance.new("ImageButton")
    local UICorner_4 = Instance.new("UICorner")
    local Circle1 = Instance.new("ImageLabel")
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
    lib2026.Name = "lib2026"
    lib2026.Parent = library_data.UI_Parent
    lib2026.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    MainBackground.Name = "MainBackground"
    MainBackground.Parent = lib2026
    MainBackground.AnchorPoint = Vector2.new(0.5, 0.5)
    MainBackground.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    MainBackground.BackgroundTransparency = 0.500
    MainBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MainBackground.BorderSizePixel = 0
    MainBackground.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainBackground.Size = UDim2.new(0, 612, 0, 413)
    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = MainBackground
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
    PageNavigations.Name = "PageNavigations"
    PageNavigations.CanvasSize = UDim2.new(0,0,0,0)
    PageNavigations.ScrollBarThickness = 1
    PageNavigations.Parent = MainBackground
    PageNavigations.BackgroundColor3 = Color3.fromRGB(255, 226, 152)
    PageNavigations.BackgroundTransparency = 1.000
    PageNavigations.BorderColor3 = Color3.fromRGB(0, 0, 0)
    PageNavigations.BorderSizePixel = 0
    PageNavigations.Position = UDim2.new(0, 0, 0.0702179149, 0)
    PageNavigations.Size = UDim2.new(0, 168, 0, 371)
    PageNavigations.AutomaticCanvasSize = "Y"
    UIListLayout.Parent = PageNavigations
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    RightSideCover.Name = "RightSideCover"
    RightSideCover.Parent = MainBackground
    RightSideCover.BackgroundColor3 = Color3.fromRGB(22, 25, 29)
    RightSideCover.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RightSideCover.BorderSizePixel = 0
    RightSideCover.Position = UDim2.new(0.276088238, 0, 0, 0)
    RightSideCover.Size = UDim2.new(0, 443, 0, 413)
    UICorner_2.CornerRadius = UDim.new(0, 5)
    UICorner_2.Parent = RightSideCover
    CornerCover.Name = "CornerCover"
    CornerCover.Parent = RightSideCover
    CornerCover.BackgroundColor3 = Color3.fromRGB(22, 25, 29)
    CornerCover.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CornerCover.BorderSizePixel = 0
    CornerCover.Position = UDim2.new(-0.000758775161, 0, 0, 0)
    CornerCover.Size = UDim2.new(0, 8, 0, 413)
    TopBar.Name = "TopBar"
    TopBar.Parent = RightSideCover
    TopBar.BackgroundColor3 = Color3.fromRGB(179, 128, 255)
    TopBar.BackgroundTransparency = 1.000
    TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TopBar.BorderSizePixel = 0
    TopBar.Size = UDim2.new(0, 443, 0, 40)
    ImageLabel.Parent = TopBar
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.0167014617, 0, 0.134999841, 0)
    ImageLabel.Size = UDim2.new(0, 34, 0, 34)
    ImageLabel.Image = "rbxassetid://135369583700951"
    Lightmode.Name = "LightMode"
    Lightmode.Parent = TopBar
    Lightmode.BackgroundColor3 = Color3.fromRGB(22, 25, 29)
    Lightmode.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Lightmode.BorderSizePixel = 0
    Lightmode.Position = UDim2.new(0.920833349, 0, 0.200000003, 0)
    Lightmode.Size = UDim2.new(0, 27, 0, 27)
    ImageButton.Parent = Lightmode
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.BackgroundTransparency = 1.000
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.148880571, 0, 0.148148149, 0)
    ImageButton.Size = UDim2.new(0, 18, 0, 18)
    ImageButton.Image = "rbxassetid://125563376575218"
    ImageButton.ImageColor3 = Color3.fromRGB(40, 40, 40)
    UICorner_3.CornerRadius = UDim.new(0, 3)
    UICorner_3.Parent = Lightmode
    DarkMode.Name = "DarkMode"
    DarkMode.Parent = TopBar
    DarkMode.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
    DarkMode.BorderColor3 = Color3.fromRGB(0, 0, 0)
    DarkMode.BorderSizePixel = 0
    DarkMode.Position = UDim2.new(0.857920647, 0, 0.200000003, 0)
    DarkMode.Size = UDim2.new(0, 27, 0, 27)
    ImageButton_2.Parent = DarkMode
    ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton_2.BackgroundTransparency = 1.000
    ImageButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton_2.BorderSizePixel = 0
    ImageButton_2.Position = UDim2.new(0.148880571, 0, 0.148148149, 0)
    ImageButton_2.Size = UDim2.new(0, 18, 0, 18)
    ImageButton_2.Image = "rbxassetid://118904080154096"
    ImageButton_2.ImageColor3 = Color3.fromRGB(0, 65, 135)
    UICorner_4.CornerRadius = UDim.new(0, 3)
    UICorner_4.Parent = DarkMode


    --Object Scripts
    MainBackground.Position = UDim2.new(0.5, 0, 0.5, 0) -- Centered based on Scale
    MainBackground.AnchorPoint = Vector2.new(0.5, 0.5) -- Adjusts anchor to the center
    pcall(function() local a=UserInputService local b=game:GetService("RunService")local c=MainBackground;local d;local e;local f;local g;function Lerp(h,i,j)return h+(i-h)*j end;local k;local l;local m=8;function Update(n)if not g then return end;if not d and l then c.Position=UDim2.new(g.X.Scale,Lerp(c.Position.X.Offset,l.X.Offset,n*m),g.Y.Scale,Lerp(c.Position.Y.Offset,l.Y.Offset,n*m))return end;local o=k-a:GetMouseLocation()local p=g.X.Offset-o.X;local q=g.Y.Offset-o.Y;l=UDim2.new(g.X.Scale,p,g.Y.Scale,q)c.Position=UDim2.new(g.X.Scale,Lerp(c.Position.X.Offset,p,n*m),g.Y.Scale,Lerp(c.Position.Y.Offset,q,n*m))end;c.InputBegan:Connect(function(r)if r.UserInputType==Enum.UserInputType.MouseButton1 or r.UserInputType==Enum.UserInputType.Touch then d=true;f=r.Position;g=c.Position;k=a:GetMouseLocation()r.Changed:Connect(function()if r.UserInputState==Enum.UserInputState.End then d=false end end)end end)c.InputChanged:Connect(function(r)if r.UserInputType==Enum.UserInputType.MouseMovement or r.UserInputType==Enum.UserInputType.Touch then e=r end end)b.Heartbeat:Connect(Update) end)
    
    if parameters["Tween"] then
        DropShadowHolder.Visible = false
        Lightmode.Visible = false
        DarkMode.Visible = false
        MainBackground.Size = UDim2.new(0,0,0,0)
        local tween = TweenService:Create(MainBackground, TweenInfo.new(0.3), {Size = UDim2.new(0, 612, 0, 413)})
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

        task.wait(0.2)

        for i,v in pairs(objs) do
            if v:IsA("Frame") then
                if v.Transparency == 1 then
                    TweenService:Create(v, TweenInfo.new(0.2), {Transparency = 0}):Play()
                end
            end
            if v:IsA("TextLabel") then
                if v.TextTransparency == 1 then
                    TweenService:Create(v, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
                end
            end
            if v:IsA("ImageLabel") then
                if v.ImageTransparency == 1 then
                    if v == ImageLabel then
                        TweenService:Create(v, TweenInfo.new(0.2), {ImageTransparency = 0}):Play()
                    else
                        TweenService:Create(v, TweenInfo.new(0.2), {ImageTransparency = 0.5}):Play()
                    end
                end
            end 
        end
        DropShadowHolder.Visible = true
        Lightmode.Visible = true
        DarkMode.Visible = true
       -- ImageLabel.ImageTransparency = 0
    end
    
    
    ----

    function UI_Functions:AddPage(parameters : table)

        -- Main References
        local Page_Data = {
            Opened = false,
            Name = parameters.Name or "Page "..tostring(#UIData.Pages + 1),
            Categories = {
                Left = {},
                Right = {},
            }
        }

        table.insert(UIData.Pages, Page_Data)
        
        local FirstPage = #UIData.Pages <= 1

        local NavigiationButton = Instance.new("Frame")
        Page_Data.Object = NavigiationButton
        local UICorner = Instance.new("UICorner")
        local TextButton = Instance.new("TextButton")
        local OpenedPageCircle = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local OpenedPageLine = Instance.new("Frame")
        local UIStroke = Instance.new("UIStroke")
        UIStroke.Parent = NavigiationButton
        UIStroke.Color = Color3.fromRGB(33,33,33)
        UIStroke.Thickness = 0
        NavigiationButton.Name = "NavigiationButton"
        NavigiationButton.Parent = PageNavigations
        NavigiationButton.BackgroundColor3 = Color3.fromRGB(22, 25, 29)
        NavigiationButton.BackgroundTransparency = 1.000
        NavigiationButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        NavigiationButton.BorderSizePixel = 0
        NavigiationButton.Position = UDim2.new(0.0933734924, 0, 0, 0)
        NavigiationButton.Size = UDim2.new(0, 151, 0, 32)
        UICorner.CornerRadius = UDim.new(0, 3)
        UICorner.Parent = NavigiationButton
        TextButton.Parent = NavigiationButton
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.0592592768, 0, 0, 0)
        TextButton.Size = UDim2.new(0, 142, 0, 32)
        TextButton.Font = Enum.Font.SourceSansSemibold
        TextButton.Text = Page_Data.Name
        TextButton.TextColor3 = Color3.fromRGB(74, 74, 74)
        TextButton.TextSize = 14.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        OpenedPageCircle.Name = "OpenedPageCircle"
        OpenedPageCircle.Parent = NavigiationButton
        OpenedPageCircle.BackgroundColor3 = UIData.Theme_Color
        OpenedPageCircle.BorderColor3 = Color3.fromRGB(0, 0, 0)
        OpenedPageCircle.BorderSizePixel = 0
        OpenedPageCircle.Position = UDim2.new(0.880794704, 0, 0.34375, 0)
        OpenedPageCircle.Size = UDim2.new(0, 10, 0, 10)
        OpenedPageCircle.Visible = false
        UICorner_2.CornerRadius = UDim.new(0, 1000)
        UICorner_2.Parent = OpenedPageCircle
        OpenedPageLine.Name = "OpenedPageLine"
        OpenedPageLine.Parent = NavigiationButton
        OpenedPageLine.BackgroundColor3 = UIData.Theme_Color
        OpenedPageLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
        OpenedPageLine.BorderSizePixel = 0
        OpenedPageLine.AnchorPoint = Vector2.new(0.5, 0.5)
        OpenedPageLine.Position = UDim2.new(0.99, 0, 0.5, 0)
        OpenedPageLine.Size = UDim2.new(0, 2, 0, 0)
        OpenedPageLine.Visible = false

        local Page = Instance.new("ScrollingFrame")
        local Right = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local UIListLayout = Instance.new("UIListLayout")
        local Left = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local UIListLayout_2 = Instance.new("UIListLayout")
        Page.Name = "Page"
        Page.ScrollBarThickness = 1
        Page.CanvasSize = UDim2.new(0,0,0,0)
        Page.AutomaticCanvasSize = "Y"
        Page.Visible = false
        Page.Parent = RightSideCover
        Page.BackgroundColor3 = Color3.fromRGB(160, 255, 139)
        Page.BackgroundTransparency = 1.000
        Page.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Page.BorderSizePixel = 0
        Page.Position = UDim2.new(-0.00208773301, 0, 0.0968523026, 0)
        Page.Size = UDim2.new(0, 441, 0, 373)
        Right.Name = "Right"
        Right.Parent = Page
        Right.BackgroundColor3 = Color3.fromRGB(22, 25, 29)
        Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Right.BorderSizePixel = 0
        Right.Position = UDim2.new(0.510674357, 0, 0.0107238609, 0)
        Right.Size = UDim2.new(0, 210, 0, 365)
        UICorner.CornerRadius = UDim.new(0, 5)
        UICorner.Parent = Right
        UIListLayout.Parent = Right
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        Left.Name = "Left"
        Left.Parent = Page
        Left.BackgroundColor3 = Color3.fromRGB(22, 25, 29)
        Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Left.BorderSizePixel = 0
        Left.Position = UDim2.new(0.0186108779, 0, 0.0107238609, 0)
        Left.Size = UDim2.new(0, 210, 0, 365)
        UICorner_2.CornerRadius = UDim.new(0, 5)
        UICorner_2.Parent = Left
        UIListLayout_2.Parent = Left
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder


        --Object scripts--

        UICorner:Clone().Parent = OpenedPageLine

        local BackgroundTweenHover = TweenService:Create(NavigiationButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {BackgroundTransparency = 0.8})
        local BackgroundTweenOff = TweenService:Create(NavigiationButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {BackgroundTransparency = 1})
        local BackgroundTweenOn = TweenService:Create(NavigiationButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {BackgroundTransparency = 0.5})

        local StrokeHover = TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Thickness = 2})
        local StrokeOn = TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Thickness = 1})
        local StrokeOff = TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Thickness = 0})

        local LineTextHover = TweenService:Create(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(120, 120, 120)})
        local LineTextOn = TweenService:Create(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(255, 255, 255)})
        local LineTextOff = TweenService:Create(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {TextColor3 = Color3.fromRGB(74, 74, 74)})

        local LineOpen = TweenService:Create(OpenedPageLine, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Size = UDim2.new(0, 2,0, 32)})
        local LineClose = TweenService:Create(OpenedPageLine, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Size = UDim2.new(0, 2,0, 0)})

        local function Set_Page(bool)
            if bool then
                Page.Visible = true
                for _,v in pairs(UIData.Pages) do
                    if v == Page_Data then continue end
                    v.Set_Page(false)
                end
                Page_Data.Opened = true
                OpenedPageLine.Visible = true
                BackgroundTweenOn:Play()
                LineOpen:Play()
                StrokeOn:Play()
                LineTextOn:Play()
            else
                Page.Visible = false
                Page_Data.Opened = false
                BackgroundTweenOff:Play()
                LineClose:Play()
                StrokeOff:Play()
                LineTextOff:Play()
            end

        end


        local function Get_Category(category, side)
            local category_frame = Page_Data.Categories[side][category]
            if not category_frame then
                local Category = Instance.new("Frame")
                local CategoryTitle = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextLabel = Instance.new("TextLabel")
                local UIListLayout = Instance.new("UIListLayout")

                Category.Name = "Category"
                Category.Parent = (side == "Left" and Left) or Right
                Category.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Category.BackgroundTransparency = 1.000
                Category.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Category.BorderSizePixel = 0
                Category.Position = UDim2.new(0, 0, 0.347945213, 0)
                Category.Size = UDim2.new(0, 209, 0, 0)
                Category.AutomaticSize = Enum.AutomaticSize.Y

                CategoryTitle.Name = "CategoryTitle"
                CategoryTitle.Parent = Category
                CategoryTitle.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
                CategoryTitle.BackgroundTransparency = 1.000
                CategoryTitle.BorderColor3 = Color3.fromRGB(26, 26, 26)
                CategoryTitle.Size = UDim2.new(0, 210, 0, 33)
                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = CategoryTitle
                TextLabel.Parent = CategoryTitle
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(0.00181652256, 0, 0.114393756, 0)
                TextLabel.Size = UDim2.new(0, 115, 0, 23)
                TextLabel.Font = Enum.Font.SourceSansSemibold
                TextLabel.Text = category
                TextLabel.TextColor3 = Color3.fromRGB(116, 116, 116)
                TextLabel.TextSize = 13.000
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left
                UIListLayout.Parent = Category
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                Page_Data.Categories[side][category] = Category
                category_frame = Category
            end

            return category_frame
        end

        TextButton.MouseEnter:connect(function()
            if not Page_Data.Opened then
                LineTextHover:Play()
                BackgroundTweenHover:Play()
            end
        end)

        TextButton.MouseLeave:connect(function()
            if not Page_Data.Opened then
                BackgroundTweenOff:Play()
                LineTextOff:Play()
            end
        end)

        TextButton.MouseButton1Click:connect(function()
            if not Page_Data.Opened then
                Set_Page(true)
            end
        end)

        if FirstPage then
            Set_Page(true)
        end

        Page_Data.Set_Page = Set_Page

        ----

        function Page_Data:AddButton(parameters)

            local Element_Data = {
                Type = "Button",
                Name = parameters.Name or "Button",
                Category = parameters.Category or "Main",
                Side = parameters.Side or "Left",
                Trigger = parameters.Function or function() end
            }

            table.insert(UIData.Elements, Element_Data)

            local Category_Frame = Get_Category(Element_Data.Category, Element_Data.Side)

            local Button = Instance.new("TextButton")
            Element_Data.Object = Button
            local TextLabel = Instance.new("TextLabel")
            local ImageLabel = Instance.new("ImageLabel")       
            local UIStroke = Instance.new("UIStroke")
            UIStroke.Parent = Button
            UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke.Color = Color3.fromRGB(33,33,33)
            UIStroke.Thickness = 1
            Button.Name = "Button"
            Button.Parent = Category_Frame
            Button.Active = false
            Button.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            Button.BorderColor3 = Color3.fromRGB(26, 26, 26)
            Button.Position = UDim2.new(0.0113378689, 0, 0.383141756, 0)
            Button.Selectable = false
            Button.Size = UDim2.new(0, 210, 0, 33)
            Button.AutoButtonColor = false
            Button.Text = ""
            TextLabel.Parent = Button
            TextLabel.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0319632404, 0, 0.174999818, 0)
            TextLabel.Size = UDim2.new(0, 161, 0, 23)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = Element_Data.Name
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 14.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            ImageLabel.Parent = Button
            ImageLabel.BackgroundColor3 = UIData.Theme_Color
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Position = UDim2.new(0.86771065, 0, 0.200000182, 0)
            ImageLabel.Size = UDim2.new(0, 23, 0, 23)
            ImageLabel.Image = "http://www.roblox.com/asset/?id=16630151971"
            ImageLabel.ImageColor3 = UIData.Theme_Color
            

            local StrokeHover = TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Thickness = 2.3})
            local StrokeNormal = TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Thickness = 1})
            Button.MouseEnter:connect(function()
                Button.ZIndex = 2
                StrokeHover:Play()
            end)
            Button.MouseLeave:connect(function()
                Button.ZIndex = 1
                StrokeNormal:Play()
            end)

            Button.MouseButton1Click:connect(Element_Data.Trigger)
            Button.MouseButton1Click:connect(function()
                local X = Mouse.X
                local Y = Mouse.Y
                local Button = Button
                Button.ClipsDescendants = true
                local Circle = Circle1:Clone()
                Circle.Visible = true
                Circle.Parent = Button
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
                local Time = 0.6
                Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
                for i=1,16 do
                    Circle.ImageTransparency = Circle.ImageTransparency + 0.05
                    task.wait(Time/15)
                end
                Circle:Destroy()
            end)

            return Element_Data

        end



        function Page_Data:AddKeybind(parameters : table)

            local Element_Data = {
                Type = "Keybind",
                Name = parameters.Name or "Keybind",
                Category = parameters.Category or "Main",
                Side = parameters.Side or "Left",
                Attributes = {
                    Value = false,
                }
            }

            table.insert(UIData.Elements, Element_Data)
            local Category_Frame = Get_Category(Element_Data.Category, Element_Data.Side)

            local Keybinds = Instance.new("TextButton")
            local TextLabel = Instance.new("TextLabel")
            local TextButton = Instance.new("TextButton")
            local UIStroke = Instance.new("UIStroke")
            UIStroke.Parent = Keybinds
            UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke.Color = Color3.fromRGB(33,33,33)
            UIStroke.Thickness = 1
            Keybinds.Name = "Keybinds"
            Keybinds.Parent = Category_Frame
            Keybinds.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            Keybinds.BorderColor3 = Color3.fromRGB(26, 26, 26)
            Keybinds.Position = UDim2.new(0.0113378689, 0, 0.383141756, 0)
            Keybinds.Size = UDim2.new(0, 210, 0, 33)
            Keybinds.Text = ""
            TextLabel.Parent = Keybinds
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0319634713, 0, 0.174999997, 0)
            TextLabel.Size = UDim2.new(0, 185, 0, 23)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = Element_Data.Name
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextButton.Parent = Keybinds
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.Interactable = false
            TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.BorderSizePixel = 0
            TextButton.Position = UDim2.new(0.641356826, 0, 0.175000742, 0)
            TextButton.Size = UDim2.new(0, 69, 0, 23)
            TextButton.Font = Enum.Font.SourceSansSemibold
            TextButton.Text = "[ NONE ]"
            TextButton.TextColor3 = Color3.fromRGB(122, 122, 122)
            TextButton.TextSize = 14.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Right

            local StrokeHover = TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Thickness = 2.3})
            local StrokeNormal = TweenService:Create(UIStroke, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Thickness = 1})

            local Parameter_Function = parameters.Function or function() end

            local function Set(keybind)
                TextButton.Text = "[ " .. tostring(keybind.Name).." ]"
                Element_Data.Attributes.Value = keybind
                Parameter_Function(keybind)
            end

            Keybinds.MouseEnter:connect(function()
                Keybinds.ZIndex = 2
                StrokeHover:Play()
            end)
            Keybinds.MouseLeave:connect(function()
                Keybinds.ZIndex = 1
                StrokeNormal:Play()
            end)
            
            if parameters.Default then
                Set(parameters.Default)
            end

            Element_Data.Trigger = Set
            Keybinds.MouseButton1Click:connect(function()
                TextButton.Text = "[ ... ]"
                local inputEvent
                inputEvent = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
                    if not gameProcessedEvent then
                        task.wait(0.05)
                        if tostring(input.KeyCode.Name) ~= "Unknown" then
                            Set(input.KeyCode)
                        else
                            Set(input.UserInputType)
                        end
                        inputEvent:Disconnect()
                    end
                end)
            end)

            return Element_Data
        end


        function Page_Data:AddToggle(parameters : table)

            local Element_Data = {
                Type = "Toggle",
                Name = parameters.Name or "Toggle",
                Category = parameters.Category or "Main",
                Side = parameters.Side or "Left",
                Attributes = {
                    Toggled = false,
                }
            }
            table.insert(UIData.Elements, Element_Data)
            local Category_Frame = Get_Category(Element_Data.Category, Element_Data.Side)

            local Toggle = Instance.new("Frame")
            Element_Data.Object = Toggle
            local TextLabel = Instance.new("TextLabel")
            local Toggle_2 = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local ImageLabel = Instance.new("ImageLabel")
            local UIStroke = Instance.new("UIStroke")
            UIStroke.Parent = Toggle
            UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke.Color = Color3.fromRGB(33,33,33)
            UIStroke.Thickness = 1
            Toggle.Name = "Toggle"
            Toggle.Parent = Category_Frame
            Toggle.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            Toggle.BorderColor3 = Color3.fromRGB(26, 26, 26)
            Toggle.Position = UDim2.new(0, 0, 0.180821911, 0)
            Toggle.Size = UDim2.new(0, 210, 0, 33)
            TextLabel.Parent = Toggle
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0319635309, 0, 0.174999818, 0)
            TextLabel.Size = UDim2.new(0, 117, 0, 23)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = parameters.Name
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            Toggle_2.Name = "Toggle"
            Toggle_2.Parent = Toggle
            Toggle_2.Active = false
            Toggle_2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
            Toggle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Toggle_2.BorderSizePixel = 0
            Toggle_2.Position = UDim2.new(0.880952358, 0, 0.212121218, 0)
            Toggle_2.Selectable = false
            Toggle_2.Size = UDim2.new(0, 19, 0, 19)
            Toggle_2.Text = ""
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = Toggle_2
            ImageLabel.Parent = Toggle_2
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Position = UDim2.new(0.148148388, 0, 0.185187086, 0)
            ImageLabel.Size = UDim2.new(0, 13, 0, 13)
            ImageLabel.Image = "rbxassetid://71979948375995"
            ImageLabel.ImageTransparency = 1.000


            
            local BackgroundTransparencyTweenOff = TweenService:Create(Toggle_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {BackgroundColor3 = Color3.fromRGB(26, 26, 26)})
            local CheckmarkOn = TweenService:Create(ImageLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {ImageTransparency = 0})
            local CheckmarkOff = TweenService:Create(ImageLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {ImageTransparency = 1})

            local Toggle_Function = parameters.Function or function() end

            local function Set(bool)
                if bool then
                    -- Toggle_2.AutoButtonColor = false
                    Element_Data.Attributes.Toggled = true
                    TweenService:Create(Toggle_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {BackgroundColor3 = UIData.Theme_Color}):Play()
                    CheckmarkOn:Play()
                    Toggle_Function(true)
                else
                    --Toggle_2.AutoButtonColor = true
                    Element_Data.Attributes.Toggled = false
                    BackgroundTransparencyTweenOff:Play()
                    CheckmarkOff:Play()
                    Toggle_Function(false)
                end
            end
            Element_Data.Trigger = Set
            Toggle_2.MouseButton1Click:connect(function()
                Set(not Element_Data.Attributes.Toggled)
            end)

            return Element_Data
        end


        function Page_Data:AddSlider(parameters : table)
            
            local Element_Data = {
                Type = "Slider",
                Name = parameters.Name or "Slider",
                Category = parameters.Category or "Main",
                Side = parameters.Side or "Left",
                Attributes = {
                    Value = nil,
                }
            }
            table.insert(UIData.Elements, Element_Data)
            local Category_Frame = Get_Category(Element_Data.Category, Element_Data.Side)
            local Slider = Instance.new("Frame")
            Element_Data.Object = Slider
            local SlideValue = Instance.new("TextLabel")
            local Slider_2 = Instance.new("Frame")
            local Slider_3 = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local UIListLayout = Instance.new("UIListLayout")
            local Bar = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local circ = Instance.new("TextButton")
            local UICorner_3 = Instance.new("UICorner")
            local UICorner_4 = Instance.new("UICorner")
            local TextLabel = Instance.new("TextLabel")
            local UIStroke = Instance.new("UIStroke")
            UIStroke.Parent = Slider
            UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke.Color = Color3.fromRGB(33,33,33)
            UIStroke.Thickness = 1
            Slider.Name = "Slider"
            Slider.Parent = Category_Frame
            Slider.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            Slider.BorderColor3 = Color3.fromRGB(31, 31, 31)
            Slider.Position = UDim2.new(0.522000015, 0, 0.709999979, 0)
            Slider.Size = UDim2.new(0, 210, 0, 46)
            Slider.SizeConstraint = Enum.SizeConstraint.RelativeYY

            SlideValue.Name = "SlideValue"
            SlideValue.Parent = Slider
            SlideValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SlideValue.BackgroundTransparency = 1.000
            SlideValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SlideValue.BorderSizePixel = 0
            SlideValue.Position = UDim2.new(0.791468918, 0, 0.0686523467, 0)
            SlideValue.Size = UDim2.new(0, 36, 0, 16)
            SlideValue.Font = Enum.Font.SourceSansSemibold
            SlideValue.Text = "100"
            SlideValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            SlideValue.TextSize = 14.000
            SlideValue.TextXAlignment = Enum.TextXAlignment.Right
            SlideValue.TextYAlignment = Enum.TextYAlignment.Top

            Slider_2.Name = "Slider"
            Slider_2.Parent = Slider
            Slider_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Slider_2.BackgroundTransparency = 1.000
            Slider_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Slider_2.BorderSizePixel = 0
            Slider_2.Position = UDim2.new(0.0399999991, 0, 0.600000024, 0)
            Slider_2.Size = UDim2.new(0.936437249, 0, 0.253253311, 0)

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
            Bar.BackgroundColor3 = Color3.fromRGB(0, 65, 135)
            Bar.BackgroundTransparency = 0.200
            Bar.BorderColor3 = Color3.fromRGB(27, 42, 53)
            Bar.BorderSizePixel = 0
            Bar.Position = UDim2.new(0, 0, -0.124996848, 0)
            Bar.Size = UDim2.new(0.971000016, 0, 1.12500322, 0)

            UICorner_2.Parent = Bar

            circ.Name = "circ"
            circ.Parent = Slider_3
            circ.BackgroundColor3 = Color3.fromRGB(0, 65, 135)
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

            TextLabel.Parent = Slider
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0319635309, 0, -0.00499957521, 0)
            TextLabel.Size = UDim2.new(0, 167, 0, 29)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = Element_Data.Name
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left

            local Passed_Function = parameters.Function or function() end

            local Slider_Function = function(v)
                if v ~= Element_Data.Attributes.Value then
                    Element_Data.Attributes.Value = v
                    SlideValue.Text = tostring(v)
                    Passed_Function(tonumber(v))
                end
            end

            local minimum = parameters.Min or parameters.Minimum or 0
            local maximum = parameters.Max or parameters.Maximum or 100
            local initial = parameters.Default or parameters.Initial or parameters.Init or 0
            
            local slider = Slider_3
            local bar = Bar
            local mouse = Mouse
            local hov = circ
            local held = false


            local function SetValue(value, dontusefunc)
                value = tonumber(value)
                if not value then return end
                bar.Size = UDim2.new((value - minimum)/(maximum - minimum), 0, 1.369, 0)
                SlideValue.Text = tostring(value)
                if not dontusefunc then
                    Slider_Function(tonumber(value))
                end
            end
            
            SetValue(initial, true)

            slider.MouseButton1Down:Connect(function()
                held = true
                local mouseX = Mouse.X
                bar.Size = UDim2.new(math.clamp((mouseX - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1), 0, 1.369, 0)
                local value = tostring(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum))
                Slider_Function(value)
            end)
            hov.MouseButton1Down:Connect(function()
                held = true
                local mouseX = Mouse.X
                bar.Size = UDim2.new(math.clamp((mouseX - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1), 0, 1.369, 0)
                local value = tostring(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum))
                Slider_Function(value)

            end)
            UserInputService.InputEnded:Connect(function(input, gp)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    held = false
                end
            end)
            mouse.Move:Connect(function()
                if held then
                    local mouseX = Mouse.X
                    bar.Size = UDim2.new(math.clamp((mouseX - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1), 0, 1.369, 0)
                    local value = tostring(math.floor((bar.Size.X.Scale * (maximum - minimum)) + minimum))
                    Slider_Function(value)
                end
            end)

            Element_Data.Trigger = SetValue
                
            

            return Element_Data
        end



        function Page_Data:AddTextBox(parameters : table)
            
            local Element_Data = {
                Type = "TextBox",
                Name = parameters.Name or "TextBox",
                Category = parameters.Category or "Main",
                Side = parameters.Side or "Left",
                Attributes = {
                    Value = nil,
                }
            }

            local Category_Frame = Get_Category(Element_Data.Category, Element_Data.Side)

            local Textbox = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local TextBox = Instance.new("TextBox")
            local UICorner = Instance.new("UICorner")
            Textbox.Name = "Textbox"
            Textbox.Parent = Category_Frame
            Textbox.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            Textbox.BorderColor3 = Color3.fromRGB(26, 26, 26)
            Textbox.Position = UDim2.new(0, 0, 0.0904109553, 0)
            Textbox.Size = UDim2.new(0, 210, 0, 61)
            TextLabel.Parent = Textbox
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.03199986, 0, 0.114000164, 0)
            TextLabel.Size = UDim2.new(0, 185, 0, 19)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = Element_Data.Name
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            TextBox.Parent = Textbox
            TextBox.BackgroundColor3 = Color3.fromRGB(22, 25, 29)
            TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextBox.BorderSizePixel = 0
            TextBox.Position = UDim2.new(0.0289632156, 0, 0.535655558, 0)
            TextBox.Size = UDim2.new(0, 197, 0, 23)
            TextBox.Font = Enum.Font.SourceSansSemibold
            TextBox.PlaceholderColor3 = Color3.fromRGB(122, 122, 122)
            TextBox.PlaceholderText = parameters.PlaceHolderText or "Input"
            TextBox.Text = parameters.Text or ""
            TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.TextSize = 14.000
            TextBox.ClearTextOnFocus = false
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = TextBox
            
            local IsFocused = false
            local Parameter_Function = parameters.Function or function() end
            TextBox.Focused:connect(function()
                if parameters.ClearOnFocus or parameters.ClearTextOnFocus then
                    TextBox.Text = ""
                end
                IsFocused = true
            end)
            TextBox.FocusLost:connect(function()
                IsFocused = false
                Parameter_Function(not IsFocused, TextBox.Text)
            end)

            Element_Data.Trigger = function(text)
                TextBox.Text = text
            end

            TextBox:GetPropertyChangedSignal("Text"):connect(function()
                Parameter_Function(not IsFocused, TextBox.Text)
            end)

            return Element_Data
        end


        function Page_Data:AddDropdown(parameters : table)
            
            local Element_Data = {
                Type = "Dropdown",
                Name = parameters.Name or "Dropdown",
                Category = parameters.Category or "Main",
                Side = parameters.Side or "Left",
                Attributes = {
                    Value = nil,
                }
            }

            local Category_Frame = Get_Category(Element_Data.Category, Element_Data.Side)

            local Dropdown = Instance.new("Frame")
            local Dropdown_2 = Instance.new("TextButton")
            local TextLabel = Instance.new("TextLabel")
            local ImageLabel = Instance.new("ImageLabel")
            local UICorner = Instance.new("UICorner")
            local TextLabel_2 = Instance.new("TextLabel")
            local UIStroke = Instance.new("UIStroke")
            UIStroke.Parent = Dropdown
            UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke.Color = Color3.fromRGB(33,33,33)
            UIStroke.Thickness = 1

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Category_Frame
            Dropdown.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            Dropdown.BorderColor3 = Color3.fromRGB(26, 26, 26)
            Dropdown.Size = UDim2.new(0, 210, 0, 33)

            Dropdown_2.Name = "Dropdown"
            Dropdown_2.Parent = Dropdown
            Dropdown_2.BackgroundColor3 = Color3.fromRGB(22, 25, 29)
            Dropdown_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Dropdown_2.BorderSizePixel = 0
            Dropdown_2.Position = UDim2.new(0.636594951, 0, 0.139394119, 0)
            Dropdown_2.Size = UDim2.new(0, 70, 0, 23)
            Dropdown_2.Font = Enum.Font.SourceSans
            Dropdown_2.Text = ""
            Dropdown_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown_2.TextSize = 13.000

            TextLabel.Parent = Dropdown_2
            TextLabel.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0857142881, 0, 0.173913047, 0)
            TextLabel.Size = UDim2.new(0, 44, 0, 15)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = parameters.Text or "Select"
            TextLabel.TextColor3 = Color3.fromRGB(122, 122, 122)
            TextLabel.TextScaled = true
            TextLabel.TextSize = 14.000
            TextLabel.TextWrapped = true

            ImageLabel.Parent = Dropdown_2
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Position = UDim2.new(0.714285731, 0, 0.217391297, 0)
            ImageLabel.Size = UDim2.new(0, 15, 0, 15)
            ImageLabel.Image = "http://www.roblox.com/asset/?id=95919185175425"
            ImageLabel.ImageColor3 = Color3.fromRGB(122, 122, 122)

            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = Dropdown_2

            TextLabel_2.Parent = Dropdown
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.BackgroundTransparency = 1.000
            TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel_2.BorderSizePixel = 0
            TextLabel_2.Position = UDim2.new(0.0319635309, 0, 0.114393756, 0)
            TextLabel_2.Size = UDim2.new(0, 109, 0, 23)
            TextLabel_2.Font = Enum.Font.SourceSansSemibold
            TextLabel_2.Text = Element_Data.Name
            TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.TextSize = 13.000
            TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
            


            local DropdownSelect = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local TextButton = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local TextBox = Instance.new("TextBox")
            local UICorner_3 = Instance.new("UICorner")
            local Items = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            local Frame = Instance.new("Frame")
            local UICorner_4 = Instance.new("UICorner")
            DropdownSelect.Name = "DropdownSelect"
            DropdownSelect.Parent = RightSideCover
            DropdownSelect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            DropdownSelect.BackgroundTransparency = 0.550
            DropdownSelect.BorderColor3 = Color3.fromRGB(0, 0, 0)
            DropdownSelect.BorderSizePixel = 0
            DropdownSelect.Position = UDim2.new(1.3777688e-07, 0, 0.106537528, 0)
            DropdownSelect.Size = UDim2.new(0.559819281, 195, 0.883777261, 0)
            DropdownSelect.Visible = false
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = DropdownSelect
            TextButton.Parent = DropdownSelect
            TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.BorderSizePixel = 0
            TextButton.Position = UDim2.new(0.5, 0, 0.85, 0)
            TextButton.Size = UDim2.new(0, 209, 0, 32)
            TextButton.Font = Enum.Font.SourceSansSemibold
            TextButton.Text = "Close"
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 14.000
            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = TextButton
            TextBox.Parent = DropdownSelect
            TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
            TextBox.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextBox.BorderSizePixel = 0
            TextBox.Position = UDim2.new(0.5, 0, 0.75, 0)
            TextBox.Size = UDim2.new(0, 209, 0, 32)
            TextBox.Font = Enum.Font.SourceSansSemibold
            TextBox.PlaceholderColor3 = Color3.fromRGB(122, 122, 122)
            TextBox.PlaceholderText = "Search"
            TextBox.Text = ""
            TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.TextSize = 14.000
            UICorner_3.CornerRadius = UDim.new(0, 5)
            UICorner_3.Parent = TextBox
            Items.Name = "Items"
            Items.Parent = DropdownSelect
            Items.AutomaticCanvasSize = "Y"
            Items.AnchorPoint = Vector2.new(0.5, 0.5)
            Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Items.BackgroundTransparency = 1.000
            Items.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Items.BorderSizePixel = 0
            Items.Position = UDim2.new(0.50000006, 0, 0.352, 0)
            Items.Selectable = false
            Items.Size = UDim2.new(0, 218, 0, 244)
            Items.CanvasSize = UDim2.new(0, 0, 0, 0)
            Items.ScrollBarThickness = 1
            Items.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
            UIListLayout.Parent = Items
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 5)
            Frame.Parent = Items
            Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Frame.BackgroundTransparency = 1.000
            Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Frame.BorderSizePixel = 0
            Frame.Position = UDim2.new(0.301587313, 0, 0, 0)
            Frame.Size = UDim2.new(0, 100, 0, 9)
            UICorner_4.Parent = Items

            local ImageLabelRotation = TweenService:Create(ImageLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Rotation = 180})
            local ImageLabelRotationOff = TweenService:Create(ImageLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {Rotation = 0})

            local objects = parameters.Objects or function() return {} end
            local Parameter_Function = parameters.Function or function() end
            local DropBtns = {}

            local function filterbtns(text)
                for _,v in pairs(DropBtns) do
                    local txtbtn = v:FindFirstChildWhichIsA("TextButton")
                    if txtbtn then
                        if not string.find(txtbtn.Text:lower(), text:lower()) then
                            v.Visible = false
                        else
                            v.Visible = true
                        end
                    end
                end
            end

            local function close()
                DropdownSelect.Visible = false
                for _,v in pairs(DropBtns) do
                    v:Destroy()
                end
                table.clear(DropBtns)
                ImageLabelRotationOff:Play()
            end


            Element_Data.Object = {DropdownSelect, Dropdown}

            TextButton.MouseButton1Click:connect(close)

            TextBox:GetPropertyChangedSignal("Text"):connect(function()
                filterbtns(TextBox.Text)
            end)

            Dropdown_2.MouseButton1Click:connect(function()
                ImageLabelRotation:Play()
                if not DropdownSelect.Visible then

                    for _,v in pairs(objects()) do
                        local Frame = Instance.new("Frame")
                        local TextButton = Instance.new("TextButton")
                        local UICorner = Instance.new("UICorner")
                        Frame.Parent = Items
                        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Frame.BackgroundTransparency = 1.000
                        Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        Frame.BorderSizePixel = 0
                        Frame.Position = UDim2.new(0.104166664, 0, 0, 0)
                        Frame.Size = UDim2.new(0, 203, 0, 30)
                        TextButton.Parent = Frame
                        TextButton.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
                        TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        TextButton.BorderSizePixel = 0
                        TextButton.Position = UDim2.new(-0.0104809143, 0, 0.0500000007, 0)
                        TextButton.Size = UDim2.new(1, 0, 1, 0)
                        TextButton.Font = Enum.Font.SourceSans
                        TextButton.Text = v or ""
                        TextButton.TextColor3 = Color3.fromRGB(172, 172, 172)
                        TextButton.TextSize = 14.000
                        UICorner.CornerRadius = UDim.new(0, 5)
                        UICorner.Parent = TextButton
                        TextButton.MouseButton1Click:connect(function()
                            TextLabel.Text = v
                            Element_Data.Attributes.Value = v
                            Parameter_Function(v)
                            close()

                        end)
                        table.insert(DropBtns, Frame)
                    end

                    local Frame = Instance.new("Frame")
                    Frame.Parent = Items
                    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Frame.BackgroundTransparency = 1.000
                    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    Frame.BorderSizePixel = 0
                    Frame.Position = UDim2.new(0.301587313, 0, 0, 0)
                    Frame.Size = UDim2.new(0, 100, 0, 9)
                    table.insert(DropBtns, Frame)
                    filterbtns(TextBox.Text)
                    DropdownSelect.Visible = true

                end
            end)
            return Element_Data
        end



        function Page_Data:AddColorPicker(parameters : table)
              local Element_Data = {
                Type = "ColorPicker",
                Name = parameters.Name or "ColorPicker",
                Category = parameters.Category or "Main",
                Side = parameters.Side or "Left",
                Attributes = {
                    Value = {
                        R = 1,
                        G = 1,
                        B = 1
                    },
                }
            }

            table.insert(UIData.Elements, Element_Data)
            local Category_Frame = Get_Category(Element_Data.Category, Element_Data.Side)
            local ColorPicker = Instance.new("Frame")
            Element_Data.Object = ColorPicker
            local TextLabel = Instance.new("TextLabel")
            local Toggle = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local UIStroke = Instance.new("UIStroke")
            UIStroke.Parent = ColorPicker
            UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke.Color = Color3.fromRGB(33,33,33)
            UIStroke.Thickness = 1
            ColorPicker.Name = "ColorPicker"
            ColorPicker.Parent = Category_Frame
            ColorPicker.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            ColorPicker.BorderColor3 = Color3.fromRGB(26, 26, 26)
            ColorPicker.Position = UDim2.new(0, 0, 0.180821911, 0)
            ColorPicker.Size = UDim2.new(0, 210, 0, 33)
            TextLabel.Parent = ColorPicker
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.0319635309, 0, 0.174999818, 0)
            TextLabel.Size = UDim2.new(0, 117, 0, 23)
            TextLabel.Font = Enum.Font.SourceSansSemibold
            TextLabel.Text = Element_Data.Name
            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.TextSize = 13.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left
            Toggle.Name = "Toggle"
            Toggle.Parent = ColorPicker
            Toggle.Active = false
            Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Toggle.BorderSizePixel = 0
            Toggle.Position = UDim2.new(0.79862988, 0, 0.212121218, 0)
            Toggle.Selectable = false
            Toggle.Size = UDim2.new(0, 36, 0, 21)
            Toggle.Text = ""
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = Toggle

            local ColorSelector = Instance.new("Frame")
            local ColorBox = Instance.new("Frame")
            local ImageLabel = Instance.new("ImageLabel")
            local Picker = Instance.new("Frame")
            local Darkness = Instance.new("Frame")
            local UIGradient = Instance.new("UIGradient")
            local Line = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local Button = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local RainbowEffect = Instance.new("ImageButton")
            local UICorner_3 = Instance.new("UICorner")
            local DropShadowHolder = Instance.new("Frame")
            local DropShadow = Instance.new("ImageLabel")
            local UIStroke = Instance.new("UIStroke")
            local UIStroke2 = Instance.new("UIStroke")
            UIStroke2.Parent = Picker
            UIStroke2.Thickness = 2.299999952316284
            UIStroke.Parent = Line
            UIStroke.Thickness = 2.0999999046325684
            ColorSelector.Name = "ColorSelector"
            ColorSelector.Parent = RightSideCover
            ColorSelector.Visible = false
            ColorSelector.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            ColorSelector.BackgroundTransparency = 0.500
            ColorSelector.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ColorSelector.BorderSizePixel = 0
            ColorSelector.Position = UDim2.new(1.01307189, 0, 0, 0)
            ColorSelector.Size = UDim2.new(0, 253, 0, 258)
            ColorBox.Name = "ColorBox"
            ColorBox.Parent = ColorSelector
            ColorBox.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            ColorBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ColorBox.BorderSizePixel = 0
            ColorBox.Position = UDim2.new(0.0355731212, 0, 0.0310077518, 0)
            ColorBox.Size = UDim2.new(0, 203, 0, 203)
            ImageLabel.Parent = ColorBox
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Size = UDim2.new(1, 0, 1, 0)
            ImageLabel.Image = "rbxassetid://17073799681"
            Picker.Name = "Picker"
            Picker.Parent = ColorBox
            Picker.AnchorPoint = Vector2.new(0.5, 0.5)
            Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Picker.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Picker.BorderSizePixel = 0
            Picker.Position = UDim2.new(0.5, 0, 0.5, 0)
            Picker.Size = UDim2.new(0.0199999996, 0, 0.0199999996, 0)
            Darkness.Name = "Darkness"
            Darkness.Parent = ColorSelector
            Darkness.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Darkness.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Darkness.BorderSizePixel = 0
            Darkness.Position = UDim2.new(0.873517811, 0, 0.0310077518, 0)
            Darkness.Size = UDim2.new(0, 23, 0, 203)
            UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(75, 75, 75)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
            UIGradient.Rotation = 270
            UIGradient.Parent = Darkness
            Line.Name = "Line"
            Line.Parent = Darkness
            Line.AnchorPoint = Vector2.new(0.5, 0.5)
            Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Line.BorderSizePixel = 0
            Line.Position = UDim2.new(0.5, 0, 0, 0)
            Line.Size = UDim2.new(0, 29, 0, 7)
            UICorner.Parent = Line
            Button.Name = "Button"
            Button.Parent = ColorSelector
            Button.Active = false
            Button.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            Button.BorderColor3 = Color3.fromRGB(26, 26, 26)
            Button.Position = UDim2.new(0.0350529961, 0, 0.840506136, 0)
            Button.Selectable = false
            Button.Size = UDim2.new(0, 196, 0, 33)
            Button.AutoButtonColor = false
            Button.Text = "Close"
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = Button
            RainbowEffect.Name = "RainbowEffect"
            RainbowEffect.Parent = ColorSelector
            RainbowEffect.Active = false
            RainbowEffect.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            RainbowEffect.BorderColor3 = Color3.fromRGB(26, 26, 26)
            RainbowEffect.Position = UDim2.new(0.837942719, 0, 0.840506136, 0)
            RainbowEffect.Selectable = false
            RainbowEffect.Size = UDim2.new(0, 33, 0, 33)
            RainbowEffect.AutoButtonColor = false
            RainbowEffect.Image = "rbxassetid://82767706093915"
            UICorner_3.CornerRadius = UDim.new(0, 5)
            UICorner_3.Parent = RainbowEffect
            DropShadowHolder.Name = "DropShadowHolder"
            DropShadowHolder.Parent = ColorSelector
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



            Button.AutoButtonColor = true
            Button.MouseButton1Click:connect(function()
                ColorSelector.Visible = false
            end)
            local ColorBox = ColorBox
            local Darkness = Darkness
            local Rainbowbtn = RainbowEffect
            
            local DarknessLine = Darkness.Line
            local Picker = ColorBox.Picker
            
            
            local lastHue, lastSaturation, lastValue = 0, 0, 1
            
            local touchTap = Enum.UserInputType.Touch
            local mouse1 = Enum.UserInputType.MouseButton1
            local mouseMovement = Enum.UserInputType.MouseMovement
            
            local inpService = game:GetService("UserInputService")
            local runService = game:GetService("RunService")
            
            local rainbow = false
            local colorChanging = false
            local inputTypeNeeded = mouse1
            local plrInputHeldDown = false
            local inputPosition = Vector2.zero
            
            local colors = {
                RawColor = Color3.fromRGB(255, 255, 255),
                RealColor = Color3.fromRGB(255, 255, 255)
            }
            
            --Element_Data.Attributes.Colors = colors
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
            
            local Parameter_Function = parameters.Function or function() end
            
            local lastsent = nil
            local function NewColor(realcolor)
                if lastsent == realcolor then return end
                lastsent = realcolor
                Toggle.BackgroundColor3 = realcolor
                Element_Data.Attributes.Value.R = realcolor.R
                Element_Data.Attributes.Value.G = realcolor.G
                Element_Data.Attributes.Value.B = realcolor.B
                Parameter_Function(realcolor)

            end
            
            ColorBox.InputBegan:Connect(function(inp)
                if inp.UserInputType == inputTypeNeeded and not Element_Data.Attributes.Rainbow and ColorSelector.Visible then
                    colorChanging = true
                    plrInputHeldDown = true
                    local lastcolor = nil
                    while plrInputHeldDown do
                        local xPos, yPos = getNormalizedCursorPosition(inputPosition, ColorBox)
                        xPos, yPos = math.clamp(xPos, 0, 1), math.clamp(yPos, 0, 1)
            
                        Picker.Position = UDim2.new(xPos, 0, yPos, 0)
            
                        lastHue = 1 - xPos
                        lastSaturation = 1 - yPos
            
                        colors.RawColor = Color3.fromHSV(lastHue, lastSaturation, 1)
                        colors.RealColor = Color3.fromHSV(lastHue, lastSaturation, lastValue)
            
                        ColorBox.BackgroundColor3 = colors.RealColor
                        Darkness.BackgroundColor3 = colors.RawColor
                        
                        NewColor(colors.RealColor)
                        
                        runService.Heartbeat:Wait()
                        
                                    
                    end
                    colorChanging = false
                end
            end)
            
            Darkness.InputBegan:Connect(function(inp)
                if inp.UserInputType == inputTypeNeeded and not Element_Data.Attributes.Rainbow and ColorSelector.Visible then
                    colorChanging = true
                    plrInputHeldDown = true
                    local lastcolor = nil
                    while plrInputHeldDown do
                        local _, yPos = getNormalizedCursorPosition(inputPosition, Darkness)
                        yPos = math.clamp(yPos, 0, 1)
            
                        lastValue = 1 - yPos
                        DarknessLine.Position = UDim2.new(0.5, 0, yPos, 0)
            
                        colors.RealColor = Color3.fromHSV(lastHue, lastSaturation, lastValue)
                        ColorBox.BackgroundColor3 = colors.RealColor
                        NewColor(colors.RealColor)
                        runService.Heartbeat:Wait()
                        
                        
            
                    end
                    colorChanging = false
                end
            end)
            
            
            Rainbowbtn.MouseButton1Click:Connect(function()
                Element_Data.Trigger(not Element_Data.Attributes.Rainbow)
            end)
            
            Element_Data.Trigger = function(color)
                if color == colors.RealColor then return end

                if color == true then
                    Element_Data.Attributes.Rainbow = true
                    task.spawn(function()
                        while Element_Data.Attributes.Rainbow and task.wait() do
                            for i = 0, 1, 0.005 do
                                if not Element_Data.Attributes.Rainbow then break end

                                NewColor(Color3.fromHSV(i, 1, 1))
                                Darkness.BackgroundColor3 = Color3.fromHSV(i, 1, 1)
                                Line.Visible = false
                                Picker.Visible = false

                                task.wait(0.01) -- slower update speed
                            end
                        end
                    end)
                    return
                elseif color == false then
                    Element_Data.Attributes.Rainbow = false
                    NewColor(colors.RealColor)
                    Element_Data.Trigger(colors.RealColor)
                    Line.Visible = true
                    Picker.Visible = true
                    return
                end

                local h, s, v = color:ToHSV()
            
                lastHue, lastSaturation = h, s
                colors.RawColor = Color3.fromHSV(h, s, 1)
                colors.RealColor = color
            
                
                Picker.Position = UDim2.new(1 - h, 0, 1 - s, 0)
                DarknessLine.Position = UDim2.new(0.5, 0, 1 - v, 0)
            
                Darkness.BackgroundColor3 = colors.RawColor
                ColorBox.BackgroundColor3 = colors.RealColor
            
                
                NewColor(color)

            end
            
            local defaultcolor = parameters.Default or Color3.fromRGB(255,255,255)

            Element_Data.Trigger(defaultcolor)


            Toggle.MouseButton1Click:connect(function()
                ColorSelector.Visible = not ColorSelector.Visible
            end)


        end

        function Page_Data:AddGap(parameters)
            local Category_Frame = Get_Category(parameters.Category, parameters.Side or "Left")
            local Gap = Instance.new("Frame")
            Gap.Name = "Gap"
            Gap.Parent = Category_Frame
            Gap.BackgroundColor3 = Color3.fromRGB(27, 31, 36)
            Gap.BackgroundTransparency = 1.000
            Gap.BorderColor3 = Color3.fromRGB(26, 26, 26)
            Gap.Position = UDim2.new(0.0113378689, 0, 0.383141756, 0)
            Gap.Size = UDim2.new(0, 210, 0, parameters.Size)
        end

        return Page_Data

    end
    

    function UI_Functions:SaveConfig(name : string)
        local config_table = {}
        for i,v in pairs(UIData.Elements) do
            if not v.Attributes or v.DontSave then continue end
            if v.Attributes and (not v.Attributes.Value and not v.Attributes.Toggled) then continue end
            local uuid = hash8(v.Type..v.Name..v.Side..v.Category)

            if v.Type == "Keybind" then
                config_table[uuid] = {
                    Value = {
                        InputType = tostring(v.Attributes.Value.EnumType),
                        Code = v.Attributes.Value.Name
                    }
                }
                continue
            end

            config_table[uuid] = v.Attributes
        end
        
        writefile("Lightux/Settings/"..name..".json", HttpService:JSONEncode(config_table))
    end

    function UI_Functions:LoadConfig(name : string)
        local path = "Lightux/Settings/"..name..".json"
        local checkfile = isfile(path)
        if checkfile then
            local contents = HttpService:JSONDecode(readfile(path))
            
            for i,v in pairs(UIData.Elements) do
                local uuid = hash8(v.Type..v.Name..v.Side..v.Category)
                local matched = contents[uuid]
                if matched then
                    if v.Type == "ColorPicker" then
                        v.Trigger(Color3.new(matched.Value.R, matched.Value.G, matched.Value.B))
                    elseif v.Type == "Keybind" then
                        v.Trigger(Enum[matched.Value.InputType][matched.Value.Code])
                    else
                        v.Trigger(matched.Value or matched.Toggled)
                    end
                end
            end

        end
    end
    

    function UI_Functions:ChangeTheme(color : Color3)
        UIData.Theme_Color = color

        for i,v in pairs(UIData.Pages) do
            v.Object.OpenedPageLine.BackgroundColor3 = color
        end
        TopBar[UIData.Mode.."Mode"].ImageButton.ImageColor3 = color
        for i,v in pairs(UIData.Elements) do
            local element_object = v.Object
            if v.Type == "Button" then
                element_object.ImageLabel.ImageColor3 = color
            elseif v.Type == "Toggle" then
                if v.Attributes.Toggled then
                    element_object.Toggle.BackgroundColor3 = color
                end
            elseif v.Type == "Slider" then
                element_object.Slider.Slider.Bar.BackgroundColor3 = color
                element_object.Slider.Slider.circ.BackgroundColor3 = color
            end
        end
    end

    return UI_Functions, UIData
end



return library
