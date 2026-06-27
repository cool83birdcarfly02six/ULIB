local Main = {}
Main.Functions = {}
Main.Objects = {}
Main.__index = Main.Functions

function Main:CreateCharacterObject(Character)
	
	if Main.Objects[Character.Name] ~= nil then
		return Main.Objects[Character.Name]
	end
	
	local CharacterObject = setmetatable({}, Main)
	CharacterObject.Character = Character
	
	local Motors = {}
	local DefaultC0 = {}
	local RuntimePrep = {}
	
	for _, Motor:Motor6D in pairs( Character:GetDescendants() ) do
		if Motor:IsA("Motor6D") and Motor.Part1 then
			Motors[Motor.Part1.Name] = Motor
			DefaultC0[Motor.Part1.Name] = Motor.C0
			RuntimePrep[Motor.Part1.Name] = {}
		end
	end
	
	CharacterObject.Motors = Motors
	CharacterObject.DefaultC0 = DefaultC0
	CharacterObject.Runtime = RuntimePrep
	
	Main.Objects[Character.Name] = CharacterObject
	
	Character:FindFirstChildOfClass("Humanoid").Died:Once(function()
		Main.Objects[Character.Name] = nil
	end)
	
	return CharacterObject
end


getgenv().CharacterHandler = Main



local Main = {}
Main.Functions = {}
Main.__index = Main.Functions

local CharacterHandler = getgenv().CharacterHandler
local RuntimeHandler = RuntimeHandler

Main.CharacterHandler = CharacterHandler
Main.CreateCharacterObject = CharacterHandler.CreateCharacterObject
Main.Functions.AddToRuntime = RuntimeHandler.AddToRuntime

function Main:LoadAnimation(CharacterObject:"Return of Main:CreateCharacterObject()", KeyframeSequence:KeyframeSequence)
	local Animation = setmetatable({}, Main)
	
	Animation.CharacterObject = CharacterObject
	Animation.KeyframeSequence = KeyframeSequence
	
	Animation.Priority = KeyframeSequence.Priority
	Animation.Loop = KeyframeSequence.Loop
	
	Animation.PlaybackSpeed = 1
	
	Animation.Playing = false
	
	Animation.RuntimePrivate = {}
	
	local KeyframeSequenceInOrder = KeyframeSequence:GetChildren()
	for i,v in pairs(KeyframeSequenceInOrder) do
		if not v:IsA("Keyframe") then
			KeyframeSequenceInOrder[i] = nil
		end
	end
	table.sort(KeyframeSequenceInOrder, function(a, b)
		return a.Time < b.Time
	end)
	
	Animation.Keyframes = KeyframeSequenceInOrder
	Animation.Time = KeyframeSequenceInOrder[#KeyframeSequenceInOrder].Time
	
	local KeyframeFormat = {}
	for _, Keyframe in ipairs(KeyframeSequenceInOrder) do
		
		for _, LimbFrame in ipairs(Keyframe:GetDescendants()) do
			
			if LimbFrame.Name ~= "Null" and LimbFrame.Name ~= "HumanoidRootPart" and LimbFrame:FindFirstChild("Null") == nil then
				KeyframeFormat[LimbFrame.Name] = KeyframeFormat[LimbFrame.Name] or {}
				
				table.insert(KeyframeFormat[LimbFrame.Name], {Time = Keyframe.Time, Keyframe = LimbFrame})
			end
			
		end
		
	end
	Animation.KeyframeTable = KeyframeFormat
	
	return Animation
end

function Main.Functions:Play(Playin, Playout)
	--local Keys = self.KeyframeSequence
	
	self.Playing = true
	--print(self.KeyframeTable)
	for LimbName, Limb in pairs(self.KeyframeTable) do
		local Previous = Limb[1]
		local Slot = 1
		
		local LimbMotor = self.CharacterObject.Motors[LimbName]
		local default = self.CharacterObject.DefaultC0[LimbName]
		local truedefault = self.CharacterObject.DefaultC0[LimbName]
		
		local KeyframeAmount = #Limb
		local Repeats = 0
		
		local Max = Limb[#Limb]
		
		self:AddToRuntime(LimbName, function(Runtime, RepeatsDetect)
			if Runtime > Max.Time then
				LimbMotor.C0 = default * Max.Keyframe.CFrame
				return
			end
			
			if Repeats ~= RepeatsDetect then
				Repeats = RepeatsDetect
				default = truedefault
				Slot = 1
				Previous = Limb[1]
			end
			
			while true do
				
				
				if Runtime > Previous.Time and Slot ~= KeyframeAmount then
					Slot += 1
					Previous = Limb[Slot]
				else
					break
				end
				
			end

			
			local CalculatedTime
			
			if Slot == 1 then
				CalculatedTime = {Time = 0, Keyframe = {CFrame = CFrame.new(0, 0, 0)} }
			else
				CalculatedTime = Limb[Slot-1]
			end
			
			local Calculation = 1
			if Slot ~= 1 then
				Calculation = (Runtime - CalculatedTime.Time) / (Previous.Time - CalculatedTime.Time)
			end
			

			local CalculatedCFrame = CalculatedTime.Keyframe.CFrame:Lerp(Previous.Keyframe.CFrame,  math.clamp(Calculation, 0, 1))
			LimbMotor.C0 = default * CalculatedCFrame
			
		end)
		
	end
	
end

function Main.Functions:Stop()
	local Priority = (self.Priority.Name == "Core" and -1) or self.Priority.Value
	self.Playing = false
	for LimbName, Thread in pairs(self.RuntimePrivate) do
		table.remove(self.CharacterObject.Runtime[LimbName][Priority], table.find(self.CharacterObject.Runtime[LimbName][Priority], Thread) )
		
		local Times = 0
		for _, Items in pairs(self.CharacterObject.Runtime[LimbName]) do
			
			Times += #Items
			
		end
		print(Times)
		if Times == 0 then
			self.CharacterObject.Motors[LimbName].C0 = self.CharacterObject.DefaultC0[LimbName]
		end
		
	end
	self.RuntimePrivate = {}
end



getgenv().AnimationHandler = Main

local Main = {}
local RunService = game:GetService("RunService")

Main.Functions = {}
Main.__index = {}


local function CalculatePriorities(self, Priority, LimbName)
	self = self --just to make 100% sure
	local GoForIt = true
	local Repeat = 5
	
	while Repeat > Priority do
		if self.CharacterObject.Runtime[LimbName][Repeat] ~= nil and #self.CharacterObject.Runtime[LimbName][Repeat] ~= 0 then
			GoForIt = false
			break
		end
		
		Repeat -= 1
	end
	
	return GoForIt
end

---This part of the script is helping animation runtime!
function Main:AddToRuntime(LimbName, Function)
	local Priority = (self.Priority.Name == "Core" and -1) or self.Priority.Value
	
	local RunningTime = setmetatable({}, Main)
	
	self.CharacterObject.Runtime[LimbName][Priority] = self.CharacterObject.Runtime[LimbName][Priority] or {}
	
	local RuntimeConnect 
	local RunDelta = 0
	local Repeats = 0
	
	RuntimeConnect = RunService.Heartbeat:Connect(function(Deltatime)
		if CalculatePriorities(self, Priority, LimbName) and table.find(self.CharacterObject.Runtime[LimbName][Priority], RuntimeConnect) == 1 then
			
			Function(RunDelta, Repeats, Deltatime, RuntimeConnect)
			
		end
		RunDelta += Deltatime * self.PlaybackSpeed
		if self.Playing == false then
			RuntimeConnect:Disconnect()
		end
		
		if RunDelta >= self.Time then
			RunDelta = 0
			
			if not self.Loop then
				table.remove(self.CharacterObject.Runtime[LimbName][Priority], table.find(self.CharacterObject.Runtime[LimbName][Priority], RuntimeConnect))
				RuntimeConnect:Disconnect()
			end
			
			Repeats += 1
		end
		
	end)
	table.insert(self.CharacterObject.Runtime[LimbName][Priority], RuntimeConnect)
	self.RuntimePrivate[LimbName] = RuntimeConnect
	
end



getgenv().RuntimeHandler = Main
