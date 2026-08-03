-- [[ 🇰🇭 KHMER HUB V58 - FULL MASTER EDITION 🇰🇭 ]] --
-- [[ TITLE: ខ្មែរខ្លាំង | PASSWORD: KHMER ]] --
repeat task.wait() until game:IsLoaded()
local lp, cam, rs, uis = game.Players.LocalPlayer, workspace.CurrentCamera, game:GetService("RunService"), game:GetService("UserInputService")
local pUI = (gethui and gethui()) or game:GetService("CoreGui") or lp:WaitForChild("PlayerGui")
if pUI:FindFirstChild("KHMER_V58") then pUI.KHMER_V58:Destroy() end
local sg = Instance.new("ScreenGui", pUI); sg.Name = "KHMER_V58"; sg.ResetOnSpawn = false
local settings = {speed = 100, spd_on = false, aim = false, esp = false, tra = false, ncl = false, fly = false, inf = false, afk = false}
-- [ មុខងារអូស UI ] --
local function drag(obj)
    local d, ds, sp; obj.InputBegan:Connect(function(i)
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
-- [ KEY SYSTEM ] --
local kF = Instance.new("Frame", sg); kF.Size = UDim2.new(0, 220, 0, 160); kF.Position = UDim2.new(0.5, -110, 0.5, -80); kF.BackgroundColor3 = Color3.fromRGB(15,15,15); drag(kF)
Instance.new("UICorner", kF); Instance.new("UIStroke", kF).Color = Color3.fromRGB(218,165,32)
local kT = Instance.new("TextLabel", kF); kT.Text = "🇰🇭 KHMER HUB - KEY"; kT.Size = UDim2.new(1,0,0,40); kT.TextColor3 = Color3.fromRGB(218,165,32); kT.BackgroundTransparency = 1; kT.Font = "SourceSansBold"; kT.TextSize = 18
local kI = Instance.new("TextBox", kF); kI.PlaceholderText = "Password..."; kI.Size = UDim2.new(0.8,0,0,35); kI.Position = UDim2.new(0.1,0,0.35,0); kI.BackgroundColor3 = Color3.fromRGB(30,30,30); kI.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", kI)
local kC = Instance.new("TextButton", kF); kC.Text = "LOGIN"; kC.Size = UDim2.new(0.8,0,0,35); kC.Position = UDim2.new(0.1,0,0.65,0); kC.BackgroundColor3 = Color3.fromRGB(0,62,126); kC.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", kC)
-- [ MAIN HUB ] --
local mf = Instance.new("Frame", sg); mf.Size = UDim2.new(0, 280, 0, 270); mf.Position = UDim2.new(0.5, -140, 0.5, -135); mf.BackgroundColor3 = Color3.fromRGB(20,20,20); mf.Visible = false; drag(mf)
Instance.new("UICorner", mf); local st = Instance.new("UIStroke", mf); st.Color = Color3.fromRGB(255,215,0); st.Thickness = 2
local bg = Instance.new("ImageLabel", mf); bg.Size = UDim2.new(1,0,1,0); bg.Image = "rbxassetid://132420803"; bg.ImageTransparency = 0.7; bg.BackgroundTransparency = 1; bg.ZIndex = 0
local tl = Instance.new("TextLabel", mf); tl.Text = "🇰🇭 ខ្មែរខ្លាំង 🇰🇭"; tl.Size = UDim2.new(1,0,0,45); tl.TextColor3 = Color3.new(1,1,1); tl.BackgroundTransparency = 1; tl.Font = "SourceSansBold"; tl.TextSize = 25; tl.ZIndex = 2
local tc = Instance.new("Frame", mf); tc.Size = UDim2.new(0, 85, 0, 200); tc.Position = UDim2.new(0,5,0.2,0); tc.BackgroundTransparency = 1; tc.ZIndex = 2
local cc = Instance.new("Frame", mf); cc.Size = UDim2.new(0, 180, 0, 200); cc.Position = UDim2.new(0, 95, 0.2, 0); cc.BackgroundTransparency = 1; cc.ZIndex = 2
local pages = {}
local function cP(n)
    local p = Instance.new("ScrollingFrame", cc); p.Size = UDim2.new(1,1,1,1); p.BackgroundTransparency = 1; p.Visible = false; p.ScrollBarThickness = 0
    pages[n] = p; Instance.new("UIListLayout", p).Padding = UDim.new(0,5); return p
end
local p1, p2, p3, p4 = cP("C"), cP("M"), cP("V"), cP("S"); p1.Visible = true
local function cT(n, t, po)
    local b = Instance.new("TextButton", tc); b.Text = t; b.Size = UDim2.new(1,0,0,35); b.Position = po; b.BackgroundColor3 = Color3.fromRGB(35,35,35); b.TextColor3 = Color3.new(1,1,1); b.Font = "SourceSansBold"; b.TextSize = 11; Instance.new("UICorner", b)
    b.MouseButton1Click:Connect(function() for _, v in pairs(pages) do v.Visible = false end pages[n].Visible = true end)
end
cT("C", "⚔️ Combat", UDim2.new(0,0,0,0)); cT("M", "🏃 Move", UDim2.new(0,0,0,40)); cT("V", "👁️ Visual", UDim2.new(0,0,0,80)); cT("S", "⚙️ Misc", UDim2.new(0,0,0,120))
local function cB(t, pr, f)
    local b = Instance.new("TextButton", pr); b.Text = t; b.Size = UDim2.new(0.95,0,0,32); b.BackgroundColor3 = Color3.fromRGB(25,25,25); b.TextColor3 = Color3.new(1,1,1); b.Font = "SourceSansBold"; b.TextSize = 12
    Instance.new("UICorner", b); Instance.new("UIStroke", b).Color = Color3.fromRGB(218,165,32)
    b.MouseButton1Click:Connect(function() f(b) end)
end
-- [ មុខងារនីមួយៗ ] --
cB("🎯 AIMBOT: OFF", p1, function(b) settings.aim = not settings.aim; b.Text = settings.aim and "🎯 AIMBOT: ON" or "🎯 AIMBOT: OFF" end)
local sI = Instance.new("TextBox", p2); sI.Text = "100"; sI.Size = UDim2.new(0.95,0,0,30); sI.BackgroundColor3 = Color3.fromRGB(10,10,10); sI.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", sI); sI.FocusLost:Connect(function() settings.speed = tonumber(sI.Text) or 16 end)
cB("🏃 SPEED: OFF", p2, function(b) settings.spd_on = not settings.spd_on; b.Text = settings.spd_on and "🏃 SPEED: ON" or "🏃 SPEED: OFF" end)
cB("✈️ FLY: OFF", p2, function(b) settings.fly = not settings.fly; b.Text = settings.fly and "✈️ FLY: ON" or "✈️ FLY: OFF" end)
cB("👻 NOCLIP: OFF", p2, function(b) settings.ncl = not settings.ncl; b.Text = settings.ncl and "👻 NOCLIP: ON" or "👻 NOCLIP: OFF" end)
cB("🦘 INF JUMP: OFF", p2, function(b) settings.inf = not settings.inf; b.Text = settings.inf and "🦘 INF JUMP: ON" or "🦘 INF JUMP: OFF" end)
cB("👁️ BOX ESP: OFF", p3, function(b) settings.esp = not settings.esp; b.Text = settings.esp and "👁️ BOX ESP: ON" or "👁️ BOX ESP: OFF" end)
cB("📏 TRACERS: OFF", p3, function(b) settings.tra = not settings.tra; b.Text = settings.tra and "📏 TRACERS: ON" or "📏 TRACERS: OFF" end)
cB("🛡️ ANTI-AFK: OFF", p4, function(b) settings.afk = not settings.afk; b.Text = settings.afk and "🛡️ ANTI-AFK: ON" or "🛡️ ANTI-AFK: OFF" end)
cB("🔄 REJOIN", p4, function() game:GetService("TeleportService"):Teleport(game.PlaceId, lp) end)
cB("💀 RESET", p4, function() if lp.Character then lp.Character:BreakJoints() end end)
local btn = Instance.new("TextButton", sg); btn.Size = UDim2.new(0,60,0,60); btn.Position = UDim2.new(0,15,0.4,0); btn.Text = "🇰🇭"; btn.BackgroundColor3 = Color3.fromRGB(200,16,46); btn.TextSize = 35; btn.Visible = false; Instance.new("UICorner", btn).CornerRadius = UDim.new(0,15); drag(btn)
btn.MouseButton1Click:Connect(function() mf.Visible = not mf.Visible end)
kC.MouseButton1Click:Connect(function()
    if kI.Text == "KHMER" then kF:Destroy(); mf.Visible = true; btn.Visible = true
    else kI.Text = ""; kI.PlaceholderText = "Wrong Password!" end
end)
-- [ ដំណើរការកូដ ] --
uis.JumpRequest:Connect(function() if settings.inf and lp.Character:FindFirstChildOfClass("Humanoid") then lp.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping") end end)
lp.Idled:Connect(function() if settings.afk then game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0), cam.CFrame); task.wait(1); game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0), cam.CFrame) end end)
rs.Heartbeat:Connect(function()
    if settings.spd_on and lp.Character:FindFirstChild("Humanoid") then lp.Character.Humanoid.WalkSpeed = settings.speed end
    if settings.ncl and lp.Character then for _, v in pairs(lp.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end
    if settings.fly and lp.Character:FindFirstChild("HumanoidRootPart") then lp.Character.HumanoidRootPart.Velocity = cam.CFrame.LookVector  100 end
    
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= lp and p.Character and p.Character:FindFirstChild("HumanoidRootPart") and p.Character:FindFirstChild("Humanoid") then
            local hrp, hum = p.Character.HumanoidRootPart, p.Character.Humanoid
            local b = hrp:FindFirstChild("K_ESP")
            if settings.esp and hum.Health > 0 then
                if not b then
                    b = Instance.new("BillboardGui", hrp); b.Name = "K_ESP"; b.Size = UDim2.new(4,0,5.5,0); b.AlwaysOnTop = true
                    local f = Instance.new("Frame", b); f.Size = UDim2.new(1,0,1,0); f.BackgroundTransparency = 0.7; Instance.new("UIStroke", f)
                    local h = Instance.new("Frame", f); h.Name = "H"; h.Size = UDim2.new(0.1,0,1,0); h.Position = UDim2.new(-0.15,0,0,0)
                end
                b.Enabled = true; b.Frame.BackgroundColor3 = (p.Team == lp.Team) and Color3.new(0,1,0) or Color3.new(1,0,0)
                b.Frame.H.Size = UDim2.new(0.1,0,hum.Health/hum.MaxHealth,0); b.Frame.H.BackgroundColor3 = Color3.fromHSV((hum.Health/hum.MaxHealth)0.3,1,1)
            elseif b then b.Enabled = false end
            local t = hrp:FindFirstChild("K_T")
            if settings.tra and hum.Health > 0 then
                if not t then
                    t = Instance.new("Attachment", hrp); t.Name = "K_T"
                    local be = Instance.new("Beam", hrp); be.Name = "B"; be.Attachment0 = t; be.Attachment1 = lp.Character.HumanoidRootPart:FindFirstChild("RootAttachment") or Instance.new("Attachment", lp.Character.HumanoidRootPart); be.Width0 = 0.5; be.Width1 = 0.5; be.FaceCamera = true
                end
                hrp.B.Enabled = true; hrp.B.Color = ColorSequence.new((p.Team == lp.Team) and Color3.new(0,1,0) or Color3.new(1,0,0))
            elseif hrp:FindFirstChild("B") then hrp.B.Enabled = false end
        end
    end
    if settings.aim then
        local t, d = nil, 250
        for _, p in pairs(game.Players:GetPlayers()) do
            if p ~= lp and p.Character and p.Character:FindFirstChild("Head") and p.Character.Humanoid.Health > 0 and p.Team ~= lp.Team then
                local v, o = cam:WorldToViewportPoint(p.Character.Head.Position)
                if o then
                    local m = (Vector2.new(v.X, v.Y) - uis:GetMouseLocation()).Magnitude
                    if m < d then t = p; d = m end
                end
            end
        end
        if t then cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, t.Character.Head.Position), 0.4) end
    end
end)
