-- Sv1nn Hub

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Sv1nn Hub", IntroText = "Sv1nn Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Sv1nnActivate",
	Content = "Hacking...",
	Image = "rbxassetid://4483345998",
	Time = 5
})

-- player tab

local PlayerTab = Window:MakeTab({
  Name = "Player",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

local Section = PlayerTab:AddSection({
  Name = "Movement"
})

PlayerTab:AddButton({
    Name = "Speedhack",
    Callback = function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    OrionLib:MakeNotification({
    Name = "SvinnHub",
    Content = "SpeedhackOn",
    Image = "rbxassetid://4483345998",
    Time = 5
    })
    end
    
    })

    PlayerTab:AddButton({
        Name = "Spinbot",
        Callback = function()
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            
            local hRootPart = character:WaitForChild("HumanoidRootPart")
            local humanoid = character:WaitForChild("Humanoid")
            
            humanoid.AutoRotate = false
            
            local speed = 30
            
            local function keepLookingForward()
                hRootPart.CFrame = CFrame.new(hRootPart.Position, hRootPart.Position + character.HumanoidRootPart.CFrame.LookVector)
                character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(speed), 0)
            end
            
            game:GetService("RunService").Heartbeat:Connect(keepLookingForward)
            
            OrionLib:MakeNotification({
                Name = "SviinHub",
                Content = "SpinbotOn",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
          end    
    })

    PlayerTab:AddButton({
        Name = "NoClip",
        Callback = function()
            local runservice = game:GetService("RunService")
    
            local player = game:GetService("Players").LocalPlayer
            runservice.Stepped:Connect(function()
            for i,v in pairs(player.Character:GetDescendants()) do
            if v:IsA("BasePart") then
            v.CanCollide = false
            end
            end
            end)
            
            OrionLib:MakeNotification({
            Name = "SviinHub",
            Content = "NoclipOn",
            Image = "rbxassetid://4483345998",
            Time = 5
            })
          end    
    })

    PlayerTab:AddButton({
        Name = "FlyV1",
        Callback = function()
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
 
 
main.Name = "main"
main.Parent = game.CoreGui
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)
 
up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000
 
down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000
 
onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "fly"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000
 
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "gui by Sv1nn"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
 
plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true
 
speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true
 
mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true
 
speeds = 1
 
local speaker = game:GetService("Players").LocalPlayer
 
local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
 
nowe = false
 
Frame.Active = true
Frame.Draggable = true
 
onof.MouseButton1Down:connect(function()
 
	if nowe == true then
		nowe = false
 
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true
 
 
 
		for i = 1, speeds do
			spawn(function()
 
				local hb = game:GetService("RunService").Heartbeat	
 
 
				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end
 
			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
 
		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end
 
 
 
 
 
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.LowerTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0
 
 
		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()
 
			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
 
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false
 
 
 
 
 
 
 
 
 
end)
 
 
up.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
 
end)
 
 
down.MouseButton1Down:connect(function()
 
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
 
end)
 
 
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false
 
end)
 
 
plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then
 
 
	tpwalking = false
	for i = 1, speeds do
		spawn(function()
 
			local hb = game:GetService("RunService").Heartbeat	
 
 
			tpwalking = true
			local chr = game.Players.LocalPlayer.Character
			local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
			while tpwalking and hb:Wait() and chr and hum and hum.Parent do
				if hum.MoveDirection.Magnitude > 0 then
					chr:TranslateBy(hum.MoveDirection)
				end
			end
 
		end)
		end
		end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'can not be less than 1'
		wait(1)
		speed.Text = speeds
	else
	speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
	tpwalking = false
	for i = 1, speeds do
		spawn(function()
 
			local hb = game:GetService("RunService").Heartbeat	
 
 
			tpwalking = true
			local chr = game.Players.LocalPlayer.Character
			local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
			while tpwalking and hb:Wait() and chr and hum and hum.Parent do
				if hum.MoveDirection.Magnitude > 0 then
					chr:TranslateBy(hum.MoveDirection)
				end
			end
 
		end)
		end
		end
		end
end)

    end    
})

PlayerTab:AddButton({
    Name = "FlyV2",
    Callback = function()
local STARTERGUI = game:GetService("StarterGui")

if game:GetService("ReplicatedStorage"):FindFirstChild("BZn2q91BzN") then
STARTERGUI:SetCore("SendNotification",{
        Title = "FED's Mobile Fly",
        Text = "Script is already running",
         Icon = "rbxassetid://278315432",
         Duration = 4
    })
return
end

local ScreenGui = Instance.new("ScreenGui")
local FlyButton = Instance.new("TextButton")
local SpeedBox = Instance.new("TextBox")

local NSound = Instance.new("Sound", FlyButton)
NSound.SoundId = "rbxassetid://9086208751"
NSound.Volume = 1

function Notify(Txt, Dur)
STARTERGUI:SetCore("SendNotification",{
        Title = "FED's Mobile Fly",
        Text = Txt,
         Icon = "rbxassetid://278315432",
         Duration = Dur
    })
NSound:Play()
end

local VdbwjS = Instance.new("StringValue",game:GetService("ReplicatedStorage"))
VdbwjS.Name = "BZn2q91BzN"

Notify("Script made by fedoratum", 5)

local plr = game:GetService"Players"
local Lp = plr.LocalPlayer
local rs = game:GetService"RunService"
local UserInputService = game:GetService"UserInputService"

local buttonIsOn = false

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ResetOnSpawn = false

FlyButton.Name = "FlyButton"
FlyButton.Parent = ScreenGui
FlyButton.BackgroundColor3 = Color3.new(0.168627, 0.513726, 0.25098)
FlyButton.BorderColor3 = Color3.new(0,0,0)
FlyButton.Position = UDim2.new(0.912970064, 0, 0.194202876, 0)
FlyButton.Size = UDim2.new(0, 50, 0, 50)
FlyButton.Font = Enum.Font.Code
FlyButton.Text = "Fly"
FlyButton.TextColor3 = Color3.new(0,0,0)
FlyButton.TextSize = 14
FlyButton.TextStrokeColor3 = Color3.new(1, 1, 1)
FlyButton.TextWrapped = true
FlyButton.Transparency = 0.2
FlyButton.Active = true
FlyButton.Draggable = true

SpeedBox.Name = "SpeedBox"
SpeedBox.Parent = FlyButton
SpeedBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpeedBox.Position = UDim2.new(-1.716970064, 0, 0.004202876, 0)
SpeedBox.Size = UDim2.new(0, 80, 0, 50)
SpeedBox.Font = Enum.Font.Code
SpeedBox.PlaceholderText = "Speed"
SpeedBox.Text = ""
SpeedBox.TextColor3 = Color3.fromRGB(0, 0, 0)
SpeedBox.TextScaled = true
SpeedBox.TextSize = 14.000
SpeedBox.TextWrapped = true

local controlModule = require(Lp.PlayerScripts:WaitForChild('PlayerModule'):WaitForChild("ControlModule"))

local bv = Instance.new("BodyVelocity")
bv.Name = "VelocityHandler"
bv.Parent = Lp.Character.HumanoidRootPart
bv.MaxForce = Vector3.new(0,0,0)
bv.Velocity = Vector3.new(0,0,0)

local bg = Instance.new("BodyGyro")
bg.Name = "GyroHandler"
bg.Parent = Lp.Character.HumanoidRootPart
bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
bg.P = 1000
bg.D = 50

local Signal1
Signal1 = Lp.CharacterAdded:Connect(function(NewChar)
local bv = Instance.new("BodyVelocity")
bv.Name = "VelocityHandler"
bv.Parent = NewChar:WaitForChild("Humanoid").RootPart
bv.MaxForce = Vector3.new(0,0,0)
bv.Velocity = Vector3.new(0,0,0)

local bg = Instance.new("BodyGyro")
bg.Name = "GyroHandler"
bg.Parent = NewChar:WaitForChild("Humanoid").RootPart
bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
bg.P = 1000
bg.D = 50
end)

local camera = Workspace.CurrentCamera
local speed = 50

local Signal2
Signal2 = rs.RenderStepped:Connect(function()
if Lp.Character and Lp.Character:FindFirstChildOfClass("Humanoid") and Lp.Character.Humanoid.RootPart and Lp.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and Lp.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then

if buttonIsOn then
FlyButton.Text = "Fly: On"
FlyButton.BackgroundColor3 = Color3.new(0,255,0)
Lp.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
Lp.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
Lp.Character.Humanoid.PlatformStand = true
elseif buttonIsOn == false then
FlyButton.Text = "Fly: Off"
FlyButton.BackgroundColor3 = Color3.new(255,0,0)
Lp.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(0,0,0)
Lp.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(0,0,0)
Lp.Character.Humanoid.PlatformStand = false
return
end

Lp.Character.HumanoidRootPart.GyroHandler.CFrame = camera.CoordinateFrame
local direction = controlModule:GetMoveVector()
Lp.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
if direction.X > 0 then
Lp.Character.HumanoidRootPart.VelocityHandler.Velocity = Lp.Character.HumanoidRootPart.VelocityHandler.Velocity + camera.CFrame.RightVector*(direction.X*speed)
end
if direction.X < 0 then
Lp.Character.HumanoidRootPart.VelocityHandler.Velocity = Lp.Character.HumanoidRootPart.VelocityHandler.Velocity + camera.CFrame.RightVector*(direction.X*speed)
end
if direction.Z > 0 then
Lp.Character.HumanoidRootPart.VelocityHandler.Velocity = Lp.Character.HumanoidRootPart.VelocityHandler.Velocity - camera.CFrame.LookVector*(direction.Z*speed)
end
if direction.Z < 0 then
Lp.Character.HumanoidRootPart.VelocityHandler.Velocity = Lp.Character.HumanoidRootPart.VelocityHandler.Velocity - camera.CFrame.LookVector*(direction.Z*speed)
end
end
end)

FlyButton.TouchTap:Connect(function()
buttonIsOn = not buttonIsOn
end)

local Signal3
Signal3 = SpeedBox:GetPropertyChangedSignal("Text"):Connect(function()
if tonumber(SpeedBox.Text) then
speed = tonumber(SpeedBox.Text)
end
end)

Lp.Chatted:Connect(function(msg)
if msg:sub(1,5) == "!stop" then
Signal1:Disconnect()
Signal2:Disconnect()
Signal3:Disconnect()
game:GetService("ReplicatedStorage"):FindFirstChild("BZn2q91BzN"):Destroy()
ScreenGui:Destroy()
Lp.Character.Humanoid.Health = 0
end
end)
    OrionLib:MakeNotification({
    Name = "SvinnHub",
    Content = "FlyV2On",
    Image = "rbxassetid://4483345998",
    Time = 5
    })
    end
    
    })

    PlayerTab:AddButton({
        Name = "InVisible",
        Callback = function()
                  -- Ranxware | FE Invisibility Module | Version: Beta V1 --

local InvisibilitySettings = {
	TransparentClone = true, -- Makes the clone's body transparent
	QuickMode = true, -- Forces module to be quicker
	ChatNotifier = true, -- Makes notifications in chat (new chat version only)
	Fly = false, -- Makes you fly when invisible
	FlySpeed = 50, -- Optimizes fly speed
	NoClip = false, -- Makes you noclip when invisible
}


--[ PLEASE DO NOT TOUCH ANYTHING BELOW IF YOU DON'T KNOW WHAT YOU'RE DOING!! ]--

local noclipCon = nil
local flyCon = nil

if game.TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
	InvisibilitySettings.ChatNotifier = false
end


local lplr = game.Players.LocalPlayer
local char = lplr.Character
char.Archivable = true

print("Starting cloning module...")
if InvisibilitySettings.ChatNotifier then
	game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Starting cloning phase...")
end

workspace.CurrentCamera.CameraSubject = nil
local oldChar = char or lplr.Character
local oldCFrame = char:GetPivot()

task.wait(InvisibilitySettings.QuickMode and .1 or 1.5)

-- old char protection --
oldChar:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(1e5,1e6,1e5)

task.wait(.1)

oldChar:FindFirstChild("HumanoidRootPart").Anchored = true

task.wait(.5)

local clone = char:Clone()
clone.Parent = workspace
lplr.Character = clone
workspace.CurrentCamera.CameraSubject = clone:FindFirstChildOfClass("Humanoid")
clone:FindFirstChild("HumanoidRootPart").CFrame = oldCFrame
clone:FindFirstChild("HumanoidRootPart").Anchored = false

task.wait()

if InvisibilitySettings.TransparentClone then
	for _,i in next,clone:GetDescendants() do
		if i:IsA("BasePart") and i.Name ~= "HumanoidRootPart" then
			i.Transparency = 0.5
		end
	end
end

if clone:FindFirstChild("Animate") then
	clone.Animate.Disabled = true
	task.wait()
	clone.Animate.Disabled = false
end

if InvisibilitySettings.Fly then
	if InvisibilitySettings.ChatNotifier then
		game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Stored fly is enabled!")
		game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Use Space and LeftCtrl to go up and down...")
	end
	local vel = Instance.new("BodyVelocity",clone:FindFirstChild("HumanoidRootPart"))
	vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	flyCon = game:GetService("RunService").RenderStepped:Connect(function()
		vel.Velocity =  clone:FindFirstChild("Humanoid").MoveDirection * InvisibilitySettings.FlySpeed
		if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
			vel.Velocity = Vector3.new(vel.Velocity.X,-InvisibilitySettings.FlySpeed,vel.Velocity.Z)
		elseif game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
			vel.Velocity = Vector3.new(vel.Velocity.X,InvisibilitySettings.FlySpeed,vel.Velocity.Z)
		end
	end)
end

if InvisibilitySettings.NoClip then
	if InvisibilitySettings.ChatNotifier then
		game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Stored noclip is enabled!")
	end
	noclipCon = game:GetService("RunService").Stepped:Connect(function()
		for _, child in next,clone:GetDescendants() do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end
	end)
end

clone:FindFirstChildOfClass("Humanoid").DisplayName = clone.Name.." [INVISIBLE]"

print("Cloning module success!")
if InvisibilitySettings.ChatNotifier then
	game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | You are now invisible!")
	game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Reset to return normal")
end

task.wait()

local function revert()
	task.wait()
	if InvisibilitySettings.ChatNotifier then
		game.TextChatService.ChatInputBarConfiguration.TargetTextChannel:DisplaySystemMessage("Invisibility | Reverting to normal character...")
	end
	local clonePos = clone:GetPivot()
	task.wait(InvisibilitySettings.QuickMode and .2 or .5)
	if flyCon then
		flyCon:Disconnect()
	end
	if noclipCon then
		noclipCon:Disconnect()
	end
	task.wait(.1)
	clone:Destroy()
	workspace.CurrentCamera.CameraSubject = oldChar:FindFirstChildOfClass("Humanoid")
	task.wait()
	oldChar:FindFirstChild("HumanoidRootPart").Anchored = false
	lplr.Character = oldChar
	lplr.Character:PivotTo(clonePos)
	task.wait(1)
	return
end

char = clone
char:FindFirstChildOfClass("Humanoid").Died:Connect(function()
	revert()
end)
          end    
    })


-- visual tab

local VisualTab = Window:MakeTab({
  Name = "Visual",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

local Section = VisualTab:AddSection({
  Name = "Visual"
})

VisualTab:AddButton({
	Name = "ECP",
	Callback = function()
      		local dwEntities = game:GetService("Players")
local dwLocalPlayer = dwEntities.LocalPlayer 
local dwRunService = game:GetService("RunService")

local settings_tbl = {
    ESP_Enabled = true,
    ESP_TeamCheck = false,
    Chams = true,
    Chams_Color = Color3.fromRGB(0,0,255),
    Chams_Transparency = 0.1,
    Chams_Glow_Color = Color3.fromRGB(255,0,0)
}

function destroy_chams(char)

    for k,v in next, char:GetChildren() do 

        if v:IsA("BasePart") and v.Transparency ~= 1 then

            if v:FindFirstChild("Glow") and 
            v:FindFirstChild("Chams") then

                v.Glow:Destroy()
                v.Chams:Destroy() 

            end 

        end 

    end 

end

dwRunService.Heartbeat:Connect(function()

    if settings_tbl.ESP_Enabled then

        for k,v in next, dwEntities:GetPlayers() do 

            if v ~= dwLocalPlayer then

                if v.Character and
                v.Character:FindFirstChild("HumanoidRootPart") and 
                v.Character:FindFirstChild("Humanoid") and 
                v.Character:FindFirstChild("Humanoid").Health ~= 0 then

                    if settings_tbl.ESP_TeamCheck == false then

                        local char = v.Character 

                        for k,b in next, char:GetChildren() do 

                            if b:IsA("BasePart") and 
                            b.Transparency ~= 1 then
                                
                                if settings_tbl.Chams then

                                    if not b:FindFirstChild("Glow") and
                                    not b:FindFirstChild("Chams") then

                                        local chams_box = Instance.new("BoxHandleAdornment", b)
                                        chams_box.Name = "Chams"
                                        chams_box.AlwaysOnTop = true 
                                        chams_box.ZIndex = 4 
                                        chams_box.Adornee = b 
                                        chams_box.Color3 = settings_tbl.Chams_Color
                                        chams_box.Transparency = settings_tbl.Chams_Transparency
                                        chams_box.Size = b.Size + Vector3.new(0.02, 0.02, 0.02)

                                        local glow_box = Instance.new("BoxHandleAdornment", b)
                                        glow_box.Name = "Glow"
                                        glow_box.AlwaysOnTop = false 
                                        glow_box.ZIndex = 3 
                                        glow_box.Adornee = b 
                                        glow_box.Color3 = settings_tbl.Chams_Glow_Color
                                        glow_box.Size = chams_box.Size + Vector3.new(0.13, 0.13, 0.13)

                                    end

                                else

                                    destroy_chams(char)

                                end
                            
                            end

                        end

                    else

                        if v.Team == dwLocalPlayer.Team then
                            destroy_chams(v.Character)
                        end

                    end

                else

                    destroy_chams(v.Character)

                end

            end

        end

    else 

        for k,v in next, dwEntities:GetPlayers() do 

            if v ~= dwLocalPlayer and 
            v.Character and 
            v.Character:FindFirstChild("HumanoidRootPart") and 
            v.Character:FindFirstChild("Humanoid") and 
            v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                
                destroy_chams(v.Character)

            end

        end

    end

end)
  	end    
})

  VisualTab:AddButton({
	Name = "ShiftLock",
	Callback = function()

local ShiftLockScreenGui = Instance.new("ScreenGui")
local ShiftLockButton = Instance.new("ImageButton")
local ShiftlockCursor = Instance.new("ImageLabel")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ContextActionService = game:GetService("ContextActionService")
local Player = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local States = {
    Off = "rbxasset://textures/ui/mouseLock_off@2x.png",
    On = "rbxasset://textures/ui/mouseLock_on@2x.png",
    Lock = "rbxasset://textures/MouseLockedCursor.png",
    Lock2 = "rbxasset://SystemCursors/Cross"
}
local MaxLength = 900000
local EnabledOffset = CFrame.new(1.7, 0, 0)
local DisabledOffset = CFrame.new(-1.7, 0, 0)
local Active

ShiftLockScreenGui.Name = "Shiftlock (CoreGui)"
ShiftLockScreenGui.Parent = CoreGui
ShiftLockScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ShiftLockScreenGui.ResetOnSpawn = false

ShiftLockButton.Parent = ShiftLockScreenGui
ShiftLockButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShiftLockButton.BackgroundTransparency = 1.000
ShiftLockButton.Position = UDim2.new(0.7, 0, 0.75, 0)
ShiftLockButton.Size = UDim2.new(0.0636147112, 0, 0.0661305636, 0)
ShiftLockButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
ShiftLockButton.Image = States.Off

ShiftlockCursor.Name = "Shiftlock Cursor"
ShiftlockCursor.Parent = ShiftLockScreenGui
ShiftlockCursor.Image = States.Lock
ShiftlockCursor.Size = UDim2.new(0.03, 0, 0.03, 0)
ShiftlockCursor.Position = UDim2.new(0.5, 0, 0.5, 0)
ShiftlockCursor.AnchorPoint = Vector2.new(0.5, 0.5)
ShiftlockCursor.SizeConstraint = Enum.SizeConstraint.RelativeXX
ShiftlockCursor.BackgroundTransparency = 1
ShiftlockCursor.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ShiftlockCursor.Visible = false

ShiftLockButton.MouseButton1Click:Connect(
    function()
        if not Active then
            Active =
                RunService.RenderStepped:Connect(
                function()
                    Player.Character.Humanoid.AutoRotate = false
                    ShiftLockButton.Image = States.On
                    ShiftlockCursor.Visible = true
                    Player.Character.HumanoidRootPart.CFrame =
                        CFrame.new(
                        Player.Character.HumanoidRootPart.Position,
                        Vector3.new(
                            workspace.CurrentCamera.CFrame.LookVector.X * MaxLength,
                            Player.Character.HumanoidRootPart.Position.Y,
                            workspace.CurrentCamera.CFrame.LookVector.Z * MaxLength
                        )
                    )
                    workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * EnabledOffset
                    workspace.CurrentCamera.Focus =
                        CFrame.fromMatrix(
                        workspace.CurrentCamera.Focus.Position,
                        workspace.CurrentCamera.CFrame.RightVector,
                        workspace.CurrentCamera.CFrame.UpVector
                    ) * EnabledOffset
                end
            )
        else
            Player.Character.Humanoid.AutoRotate = true
            ShiftLockButton.Image = States.Off
            workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * DisabledOffset
            ShiftlockCursor.Visible = false
            pcall(
                function()
                    Active:Disconnect()
                    Active = nil
                end
            )
        end
    end
)

local ShiftLockAction = ContextActionService:BindAction("Shift Lock", ShiftLock, false, "On")
ContextActionService:SetPosition("Shift Lock", UDim2.new(0.8, 0, 0.8, 0))

return {} and ShiftLockAction
	  end    
  })

    VisualTab:AddButton({
        Name = "Invisible",
        Callback = function()
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            
            local function PTransparency(transparency)
                for _, part in ipairs(character:GetDescendants()) do
                    if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                        part.Transparency = transparency
                    end
                end
            end
            
            
            PTransparency(1)
            
        OrionLib:MakeNotification({
        Name = "SvinnHub",
        Content = "InvisiblekOn",
        Image = "rbxassetid://4483345998",
        Time = 5
        })
        end
        
        })

        
-- BPTab

local BreakTab = Window:MakeTab({
	Name = "Break Point",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = BreakTab:AddSection({
	Name = "BreakPoint"
})

BreakTab:AddButton({
	Name = "AntiDieV1",
	Callback = function()
        local RunService = game:GetService("RunService")

local function moveCharacter()
    local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
    
    char.HumanoidRootPart.CFrame = CFrame.new(-10.6385431, -0.36107114, -176.790649, 0.776075244, 0.0452038422, 0.629018188, 3.38150286e-09, 0.997427762, -0.0716792792, -0.630640328, 0.0556285158, 0.774078965)
    
    RunService.Heartbeat:wait()
    
    char.HumanoidRootPart.CFrame = CFrame.new(-10.6385431, -0.36107114, -176.790649, 0.776075244, 0.0452038422, 0.629018188, 3.38150286e-09, 0.997427762, -0.0716792792, -0.630640328, 0.0556285158, 0.774078965)
    
    RunService.Heartbeat:wait()
    
    char.HumanoidRootPart.CFrame = CFrame.new(-10.6385431, -0.36107114, -176.790649, 0.776075244, 0.0452038422, 0.629018188, 3.38150286e-09, 0.997427762, -0.0716792792, -0.630640328, 0.0556285158, 0.774078965)
    RunService.Heartbeat:wait()
    
    char.HumanoidRootPart.CFrame = CFrame.new(-10.6385431, -0.36107114, -176.790649, 0.776075244, 0.0452038422, 0.629018188, 3.38150286e-09, 0.997427762, -0.0716792792, -0.630640328, 0.0556285158, 0.774078965)
end

RunService.Heartbeat:Connect(function()
    moveCharacter()
end)
  	end    
})

BreakTab:AddButton({
    Name = "Auto Murder",
    Callback = function()
    while true do
    local args = {
    [1] = 60,
    [2] = {
    ["confirm"] = true,
    ["image"] = 0,
    ["name"] = "\nBe the murderer \n [Who did it]",
    ["price"] = 500,
    ["data"] = "requestmurderer"
    }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    wait(1)
end
end 
})

BreakTab:AddButton({
    Name = "Disiguin me",
    Callback = function()
        local args = {
            [1] = 42,
            [2] = true
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    end
})


-- Westbound hub

local WestTab = Window:MakeTab({
    Name = "Westbound",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
  })

local Section = WestTab:AddSection({
    Name = "Westbound"
  })

  WestTab:AddButton({
    Name = "AutofarmV1",
    Callback = function()
        while true do
            local args = {
                [1] = "Safe",
                [2] = workspace:WaitForChild("Safe")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Rob"):FireServer(unpack(args))
            wait(3)
        end
    end
})

WestTab:AddButton({
    Name = "Autofarm Mod",
    Callback = function()
        while true do
            local args = {
                [1] = "Complete"
            }
            workspace:WaitForChild("Safe"):WaitForChild("OpenSafe"):FireServer(unpack(args))
            wait(20)
        end
    end
})

WestTab:AddButton({
	Name = "Tp user",
	Callback = function()
        local RunService = game:GetService("RunService")

        local function moveCharacter()
            local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait(5)
            
            char.HumanoidRootPart.CFrame = CFrame.new(1627.92297, 128.849976, 1579.78149, -0.0333881564, -3.30991874e-08, -0.999442458, 2.13044915e-09, 1, -3.31888224e-08, 0.999442458, -3.23737481e-09, -0.0333881564)
            
            RunService.Heartbeat:wait(5)
        end
        
        RunService.Heartbeat:Connect(function()
            moveCharacter()
        end)
  	end    
})

WestTab:AddButton({
	Name = "AspawnMod",
	Callback = function()
        while true do
            local args = {
                [1] = "Grayridge",
                [2] = false,
                [3] = false
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack(args))
            wait(15)
        end
  	end    
})

