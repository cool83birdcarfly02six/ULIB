

local TS = game:GetService("TweenService")

local Parented = get_hidden_gui and get_hidden_gui() or (gethui and gethui()) or game.CoreGui


local CreateScreenGui = function()
    local Gui = Instance.new("ScreenGui")
    Gui.Name = "NotificationsLightux"
    Gui.ResetOnSpawn = false
    Gui.Parent = Parented

    local Holder = Instance.new("Frame")
    Holder.AnchorPoint = Vector2.new(1,1)
    Holder.Position = UDim2.new(1,-20,1,-20)
    Holder.Size = UDim2.fromOffset(400,500)
    Holder.BackgroundTransparency = 1
    Holder.Parent = Gui

    local Layout = Instance.new("UIListLayout")
    Layout.Padding = UDim.new(0,8)
    Layout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    Layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    Layout.Parent = Holder
    getgenv().NotificationsLightux = Gui
    return Gui
end

local ScreenGui = getgenv().NotificationsLightux or CreateScreenGui()


local Notification = {}

function Notification.Notify(mode, text, duration)
	task.spawn(function()
		duration = duration or 5
        mode = mode:lower()
		local Frame = Instance.new("Frame")
		Frame.Size = UDim2.fromOffset(0,70)
		Frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
		Frame.BackgroundTransparency = 1
		Frame.BorderSizePixel = 0
		Frame.Parent = ScreenGui.Frame

		local Corner = Instance.new("UICorner", Frame)
        local color = mode == "info" and Color3.fromRGB(255, 222, 123)  or mode == "success" and Color3.fromRGB(78, 255, 99) or mode == "error" and Color3.fromRGB(240, 15, 18) or Color3.new(1,1,1)
		local Close = Instance.new("TextButton")
		Close.Size = UDim2.fromOffset(20,20)
		Close.Position = UDim2.new(1,-24,0,4)
		Close.BackgroundTransparency = 1
		Close.Text = "X"
		Close.Font = Enum.Font.GothamBold
		Close.TextSize = 14
		Close.TextColor3 = Color3.new(1,1,1)
		Close.TextTransparency = 1
		Close.Parent = Frame

		local Icon = Instance.new("TextLabel")
		Icon.BackgroundTransparency = 1
		Icon.Size = UDim2.fromOffset(50,50)
		Icon.Position = UDim2.fromOffset(10,10)
		Icon.Text = (mode == "info" and "ⓘ") or mode == "success" and "✓" or mode == "error" and "ⓧ" or "🔔"
		Icon.Font = Enum.Font.GothamBold
		Icon.TextSize = 28
		Icon.TextColor3 = color
		Icon.TextTransparency = 1
		Icon.Parent = Frame

		local Label = Instance.new("TextLabel")
		Label.BackgroundTransparency = 1
		Label.Position = UDim2.fromOffset(60,0)
		Label.Size = UDim2.new(1,-90,1,0)
		Label.Font = Enum.Font.GothamBold
		Label.TextSize = 16
		Label.TextXAlignment = Enum.TextXAlignment.Left
		Label.TextColor3 = color
		Label.TextTransparency = 1
		Label.Text = text
		Label.Parent = Frame

		local Bar = Instance.new("Frame")
		Bar.Size = UDim2.new(1,0,0,3)
		Bar.Position = UDim2.new(0,0,1,-3)
		Bar.BorderSizePixel = 0
		Bar.BackgroundColor3 = color
		Bar.BackgroundTransparency = 1
		Bar.Parent = Frame

		local dead = false
        
            local Newsound = Instance.new("Sound", Frame)
            Newsound.SoundId = (mode == "info" and "rbxassetid://8968249849") or mode == "success" and "rbxassetid://107442475858573" or mode == "error" and "rbxassetid://105434021912796" or "rbxassetid://115916891254154"
            Newsound.Volume = 4
            Newsound:Play()

		local function Destroy()
			if dead then return end
			dead = true

			TS:Create(Frame,TweenInfo.new(.2),{
				Size = UDim2.fromOffset(0,70),
				BackgroundTransparency = 1
			}):Play()

			for _,v in Frame:GetDescendants() do
				if v:IsA("TextLabel") or v:IsA("TextButton") then
					TS:Create(v,TweenInfo.new(.15),{
						TextTransparency = 1
					}):Play()
				elseif v:IsA("Frame") and v ~= Frame then
					TS:Create(v,TweenInfo.new(.15),{
						BackgroundTransparency = 1
					}):Play()
				end
			end

			task.wait(.25)
			Frame:Destroy()
		end

		Close.MouseButton1Click:Connect(Destroy)

		TS:Create(Frame,TweenInfo.new(.25,Enum.EasingStyle.Quad),{
			Size = UDim2.fromOffset(350,70),
			BackgroundTransparency = .15
		}):Play()

		TS:Create(Icon,TweenInfo.new(.2),{TextTransparency = 0}):Play()
		TS:Create(Label,TweenInfo.new(.2),{TextTransparency = 0}):Play()
		TS:Create(Close,TweenInfo.new(.2),{TextTransparency = 0}):Play()
		TS:Create(Bar,TweenInfo.new(.2),{BackgroundTransparency = 0}):Play()

		TS:Create(Bar,TweenInfo.new(duration, Enum.EasingStyle.Linear),{
			Size = UDim2.new(0,0,0,3)
		}):Play()

		task.wait(duration)

		Destroy()
	end)
end

return Notification
