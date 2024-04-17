-- GLO Hub

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "GLO Client", IntroText = "FP: GloTea", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "GLOActivate",
	Content = "Hacking...",
	Image = "rbxassetid://4483345998",
	Time = 5
})

-- Movement tab

local MovementTab = Window:MakeTab({
    Name = "Break Point",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
  })
  
  local Section = MovementTab:AddSection({
    Name = "Movement"
  })

  MovementTab:AddButton({
    Name = "AntiDieV2",
    Callback = function()
        game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
            while true do
                wait(1)
                char.HumanoidRootPart.CFrame = CFrame.new(-12, 3, -242, -0.7, 2.5e-11, 0.5, 1.e-10, 1, 5.5e-11, -0.5, 1.e-10, -0)
                wait(1)
                char.HumanoidRootPart.CFrame = CFrame.new(-48, 3, -177, 0.7, 2.5e-11, -0.5, -10.e-11, 1, -8.5e-11, 0.5, 1.e-10, 0)
                wait(1)
                char.HumanoidRootPart.CFrame = CFrame.new(-12, 3, -177, 0.7, 2.5e-11, 0.5, 7.e-11, 1, -1.e-10, -0.5, 1.e-10, 0)
                wait(1)
                char.HumanoidRootPart.CFrame = CFrame.new(-48, 3, -242, -0.7, 2.5e-11, -0.5, -4.5e-11, 1, 1.e-10, 0.5, 1.e-10, -0)
            end
        end)
    end
})

MovementTab:AddButton({
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

MovementTab:AddButton({
    Name = "Disiguin me",
    Callback = function()
        local args = {
            [1] = 42,
            [2] = true
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    end
})
