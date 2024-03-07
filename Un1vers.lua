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
