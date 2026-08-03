Visible = false; Instance.new("UICorner", btn); drag(btn)
btn.MouseButton1Click:Connect(function() mf.Visible = not mf.Visible end)
kL.MouseButton1Click:Connect(function()
    if kI.Text == "KHMER" then kF.Visible = false; mf.Visible = true; btn.Visible = true else kI.Text = ""; kI.PlaceholderText = "WRONG KEY!" end
end)
game:GetService("RunService").Heartbeat:Connect(function()
    if settings.spd_on and lp.Character and lp.Character:FindFirstChild("Humanoid") then lp.Character.Humanoid.WalkSpeed = settings.speed end
    if settings.fly and lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then lp.Character.HumanoidRootPart.Velocity = workspace.CurrentCamera.CFrame.LookVector  settings.speed end
    if settings.ncl and lp.Character then for _, v in pairs(lp.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end
    if settings.esp then
        for _, p in pairs(game.Players:GetPlayers()) do
            if p ~= lp and p.Character and p.Character:FindFirstChild("HumanoidRootPart") and p.Character:FindFirstChild("Humanoid") then
                local hrp = p.Character.HumanoidRootPart
                local b = hrp:FindFirstChild("K_ESP")
                if p.Character.Humanoid.Health > 0 then
                    if not b then
                        b = Instance.new("BillboardGui", hrp); b.Name = "K_ESP"; b.Size = UDim2.new(4,0,5,0); b.AlwaysOnTop = true
                        local f = Instance.new("Frame", b); f.Size = UDim2.new(1,0,1,0); f.BackgroundTransparency = 0.8; Instance.new("UIStroke", f)
                    end
                    b.Enabled = true; b.Frame.BackgroundColor3 = (p.Team == lp.Team) and Color3.new(0,1,0) or Color3.new(1,0,0)
                elseif b then b.Enabled = false end
            end
        end
    end
    if settings.aim then
        local t, d = nil, 300
        for _, p in pairs(game.Players:GetPlayers()) do
            if p ~= lp and p.Character and p.Character:FindFirstChild("Head") and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 and p.Team ~= lp.Team then
                local v, o = workspace.CurrentCamera:WorldToViewportPoint(p.Character.Head.Position)
                if o then
                    local m = (Vector2.new(v.X, v.Y) - game:GetService("UserInputService"):GetMouseLocation()).Magnitude
                    if m < d then t = p; d = m end
                end
            end
        end
        if t then workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(workspace.CurrentCamera.CFrame.Position, t.Character.Head.Position), 0.2) end
    end
end)
