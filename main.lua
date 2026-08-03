-- [[ KHMER HUB V58 - OFFICIAL ]] --
repeat task.wait() until game:IsLoaded()
local lp, cam, rs, uis = game.Players.LocalPlayer, workspace.CurrentCamera, game:GetService("RunService"), game:GetService("UserInputService")
local pUI = (gethui and gethui()) or game:GetService("CoreGui")
if pUI:FindFirstChild("KHMER_V58") then pUI.KHMER_V58:Destroy() end
local sg = Instance.new("ScreenGui", pUI); sg.Name = "KHMER_V58"; sg.ResetOnSpawn = false
local settings = {speed = 100, spd_on = false, aim = false, esp = false, ncl = false, fly = false}
local function drag(obj)
    local d, ds, sp
    obj.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            d = true; ds = i.Position; sp = obj.Position
            i.Changed:Connect(function() if i.UserInputState == Enum.UserInputState.End then d = false end end)
        end
    end)
    uis.InputChanged:Connect(function(i)
        if d and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
            local dt = i.Position - ds; obj.Position = UDim2.new(sp.X.Scale, sp.X.Offset + dt.X, sp.Y.Scale, sp.Y.Offset + dt.Y)
        end
    end)
end
-- Key Window
local kF = Instance.new("Frame", sg); kF.Size = UDim2.new(0, 220, 0, 150); kF.Position = UDim2.new(0.5, -110, 0.4, -75); kF.BackgroundColor3 = Color3.fromRGB(20,20,20); drag(kF)
Instance.new("UICorner", kF); Instance.new("UIStroke", kF).Color = Color3.fromRGB(255,215,0)
local kT = Instance.new("TextLabel", kF); kT.Text = "KHMER HUB V58"; kT.Size = UDim2.new(1,0,0,40); kT.TextColor3 = Color3.new(1,1,1); kT.BackgroundTransparency = 1; kT.Font = "SourceSansBold"; kT.TextSize = 18
local kI = Instance.new("TextBox", kF); kI.PlaceholderText = "Key: KHMER"; kI.Size = UDim2.new(0.8,0,0,35); kI.Position = UDim2.new(0.1,0,0.3,0); kI.BackgroundColor3 = Color3.fromRGB(40,40,40); kI.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", kI)
local kL = Instance.new("TextButton", kF); kL.Text = "LOGIN"; kL.Size = UDim2.new(0.8,0,0,35); kL.Position = UDim2.new(0.1,0,0.65,0); kL.BackgroundColor3 = Color3.fromRGB(0,80,200); kL.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", kL)
-- Main Window
local mf = Instance.new("Frame", sg); mf.Size = UDim2.new(0, 250, 0, 280); mf.Position = UDim2.new(0.5, -125, 0.5, -140); mf.BackgroundColor3 = Color3.fromRGB(15,15,15); mf.Visible = false; drag(mf)
Instance.new("UICorner", mf); local st = Instance.new("UIStroke", mf); st.Color = Color3.fromRGB(255,0,0); st.Thickness = 2
local tl = Instance.new("TextLabel", mf); tl.Text = "KHMER HUB V58"; tl.Size = UDim2.new(1,0,0,40); tl.TextColor3 = Color3.new(1,1,1); tl.BackgroundTransparency = 1; tl.Font = "SourceSansBold"; tl.TextSize = 20
local cl = Instance.new("ScrollingFrame", mf); cl.Size = UDim2.new(0.9,0,0.8,0); cl.Position = UDim2.new(0.05,0,0.15,0); cl.BackgroundTransparency = 1; cl.ScrollBarThickness = 0
local ll = Instance.new("UIListLayout", cl); ll.Padding = UDim.new(0,8)
local function cB(t, f)
    local b = Instance.new("TextButton", cl); b.Text = t; b.Size = UDim2.new(1,0,0,35); b.BackgroundColor3 = Color3.fromRGB(30,30,30); b.TextColor3 = Color3.new(1,1,1); b.Font = "SourceSansBold"; Instance.new("UICorner", b)
    b.MouseButton1Click:Connect(function() f(b) end)
end
cB("🎯 AIMBOT: OFF", function(b) settings.aim = not settings.aim; b.Text = settings.aim and "🎯 AIMBOT: ON" or "🎯 AIMBOT: OFF" end)
cB("👁️ ESP: OFF", function(b) settings.esp = not settings.esp; b.Text = settings.esp and "👁️ ESP: ON" or "👁️ ESP: OFF" end)
cB("🏃 SPEED: OFF", function(b) settings.spd_on = not settings.spd_on; b.Text = settings.spd_on and "🏃 SPEED: ON" or "🏃 SPEED: OFF" end)
cB("✈️ FLY: OFF", function(b) settings.fly = not settings.fly; b.Text = settings.fly and "✈️ FLY: ON" or "✈️ FLY: OFF" end)
cB("👻 NOCLIP: OFF", function(b) settings.ncl = not settings.ncl; b.Text = settings.ncl and "👻 NOCLIP: ON" or "👻 NOCLIP: OFF" end)
local btn = Instance.new("TextButton", sg); btn.Size = UDim2.new(0,55,0,55); btn.Position = UDim2.new(0,10,0.5,0); btn.Text = "🇰🇭"; btn.TextSize = 30; btn.BackgroundColor3 = Color3.fromRGB(200,0,0); btn.Visible = false; Instance.new("UICorner", btn); drag(btn)
btn.MouseButton1Click:Connect(function() mf.Visible = not mf.Visible end)
kL.MouseButton1Click:Connect(function()
    if kI.Text == "KHMER" then kF.Visible = false; mf.Visible = true; btn.Visible = true else kI.Text = ""; kI.PlaceholderText = "WRONG KEY!" end
end)
rs.Heartbeat:Connect(function()
    if settings.spd_on and lp.Character:FindFirstChild("Humanoid") then lp.Character.Humanoid.WalkSpeed = settings.speed end
    if settings.fly and lp.Character:FindFirstChild("HumanoidRootPart") then lp.Character.HumanoidRootPart.Velocity = cam.CFrame.LookVector  settings.speed end
    if settings.ncl and lp.Character then for _, v in pairs(lp.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end
    
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= lp and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = p.Character.HumanoidRootPart
            local b = hrp:FindFirstChild("K_ESP")
            if settings.esp and p.Character.Humanoid.Health > 0 then
                if not b then
                    b = Instance.new("BillboardGui", hrp); b.Name = "K_ESP"; b.Size = UDim2.new(4,0,5,0); b.AlwaysOnTop = true
                    local f = Instance.new("Frame", b); f.Size = UDim2.new(1,0,1,0); f.BackgroundTransparency = 0.8; Instance.new("UIStroke", f)
                end
                b.Enabled = true; b.Frame.BackgroundColor3 = (p.Team == lp.Team) and Color3.new(0,1,0) or Color3.new(1,0,0)
            elseif b then b.Enabled = false end
        end
    end
    if settings.aim then
        local t, d = nil, 300
        for _, p in pairs(game.Players:GetPlayers()) do
            if p ~= lp and p.Character and p.Character:FindFirstChild("Head") and p.Character.Humanoid.Health > 0 and p.Team ~= lp.Team then
                local v, o = cam:WorldToViewportPoint(p.Character.Head.Position)
                if o then
                    local m = (Vector2.new(v.X, v.Y) - uis:GetMouseLocation()).Magnitude
                    if m < d then t = p; d = m end
                end
            end
        end
        if t then cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, t.Character.Head.Position), 0.2) end
    end
end)
