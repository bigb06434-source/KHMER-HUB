-- [[ 🇰🇭 KHMER HUB V58 - ULTIMATE MASTER EDITION 🇰🇭 ]] --
-- [[ TITLE: ខ្មែរខ្លាំង | PASSWORD: KHMER ]] --
local lp = game:GetService("Players").LocalPlayer
local cam = workspace.CurrentCamera
local rs = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local pUI = (gethui and gethui()) or (game:GetService("CoreGui"):FindFirstChild("RobloxGui") and game:GetService("CoreGui")) or lp:WaitForChild("PlayerGui")
local settings = {
    speed = 100,
    speed_toggle = false,
    aimbot = false,
    esp = false,
    noclip = false,
    fly = false,
    infjump = false,
    teamcheck = true,
    key_verified = false
}
if pUI:FindFirstChild("KHMER_V58_MASTER") then pUI.KHMER_V58_MASTER:Destroy() end
local sg = Instance.new("ScreenGui", pUI)
sg.Name = "KHMER_V58_MASTER"
sg.ResetOnSpawn = false
-- [ UTILS ] --
local function makeDraggable(topbar, object)
    local dragging, dragInput, dragStart, startPos
    topbar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true; dragStart = input.Position; startPos = object.Position
            input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
        end
    end)
    uis.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            object.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end
-- [ KEY SYSTEM ] --
local keyFrame = Instance.new("Frame", sg)
keyFrame.Size = UDim2.new(0, 260, 0, 200); keyFrame.Position = UDim2.new(0.5, -130, 0.4, -100); keyFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
Instance.new("UICorner", keyFrame); local ks = Instance.new("UIStroke", keyFrame); ks.Color = Color3.fromRGB(255, 215, 0); ks.Thickness = 2
makeDraggable(keyFrame, keyFrame)
local kTitle = Instance.new("TextLabel", keyFrame)
kTitle.Text = "🇰🇭 KHMER HUB V58 - LOGIN 🇰🇭"; kTitle.Size = UDim2.new(1, 0, 0, 45); kTitle.TextColor3 = Color3.fromRGB(255, 215, 0); kTitle.BackgroundTransparency = 1; kTitle.Font = "SourceSansBold"; kTitle.TextSize = 18
local kInput = Instance.new("TextBox", keyFrame)
kInput.PlaceholderText = "Enter Password..."; kInput.Size = UDim2.new(0.85, 0, 0, 40); kInput.Position = UDim2.new(0.075, 0, 0.35, 0); kInput.BackgroundColor3 = Color3.fromRGB(30, 30, 40); kInput.TextColor3 = Color3.new(1, 1, 1); Instance.new("UICorner", kInput)
local kLogin = Instance.new("TextButton", keyFrame)
kLogin.Text = "UNLOCK MASTER"; kLogin.Size = UDim2.new(0.85, 0, 0, 40); kLogin.Position = UDim2.new(0.075, 0, 0.65, 0); kLogin.BackgroundColor3 = Color3.fromRGB(0, 80, 200); kLogin.TextColor3 = Color3.new(1, 1, 1); kLogin.Font = "SourceSansBold"; Instance.new("UICorner", kLogin)
-- [ MAIN HUB ] --
local main = Instance.new("Frame", sg)
main.Size = UDim2.new(0, 350, 0, 280); main.Position = UDim2.new(0.5, -175, 0.5, -140); main.BackgroundColor3 = Color3.fromRGB(10, 10, 15); main.Visible = false
Instance.new("UICorner", main); local ms = Instance.new("UIStroke", main); ms.Color = Color3.fromRGB(200, 0, 0); ms.Thickness = 2
makeDraggable(main, main)
-- Flag Background
local flag = Instance.new("ImageLabel", main)
flag.Size = UDim2.new(1, 0, 1, 0); flag.Image = "rbxassetid://132420803"; flag.ImageTransparency = 0.85; flag.BackgroundTransparency = 1; flag.ZIndex = 0
local title = Instance.new("TextLabel", main)
title.Text = "🇰🇭 ខ្មែរខ្លាំង V58 ULTIMATE 🇰🇭"; title.Size = UDim2.new(1, 0, 0, 40); title.TextColor3 = Color3.new(1,1,1); title.BackgroundTransparency = 1; title.Font = "SourceSansBold"; title.TextSize = 20; title.ZIndex = 2
local sidebar = Instance.new("Frame", main)
sidebar.Size = UDim2.new(0, 100, 0.8, 0); sidebar.Position = UDim2.new(0, 5, 0.15, 0); sidebar.BackgroundTransparency = 1; sidebar.ZIndex = 2
local container = Instance.new("Frame", main)
container.Size = UDim2.new(0, 230, 0.8, 0); container.Position = UDim2.new(0, 110, 0.15, 0); container.BackgroundTransparency = 1; container.ZIndex = 2
local pages = {}
local function addPage(name)
    local p = Instance.new("ScrollingFrame", container)
    p.Size = UDim2.new(1, 0, 1, 0); p.BackgroundTransparency = 1; p.Visible = false; p.ScrollBarThickness = 0
    Instance.new("UIListLayout", p).Padding = UDim.new(0, 5)
    pages[name] = p
    return p
end
local combatP = addPage("Combat"); combatP.Visible = true
local moveP = addPage("Move")
local visualP = addPage("Visual")
local miscP = addPage("Misc")
local function addTab(name, icon, pos)
    local b = Instance.new("TextButton", sidebar)
    b.Text = icon.." "..name; b.Size = UDim2.new(1, 0, 0, 35); b.Position = pos; b.BackgroundColor3 = Color3.fromRGB(25, 25, 35); b.TextColor3 = Color3.new(1,1,1); b.Font = "SourceSansBold"; b.TextSize = 12; Instance.new("UICorner", b)
    b.MouseButton1Click:Connect(function()
        for _, v in pairs(pages) do v.Visible = false end
        pages[name].Visible = true
    end)
end
addTab("Combat", "🎯", UDim2.new(0,0,0,0))
addTab("Move", "⚡", UDim2.new(0,0,0,40))
addTab("Visual", "👁️", UDim2.new(0,0,0,80))
addTab("Misc", "⚙️", UDim2.new(0,0,0,120))
local function createToggle(text, parent, callback)
    local b = Instance.new("TextButton", parent)
    b.Text = text.." [OFF]"; b.Size = UDim2.new(1, 0, 0, 35); b.BackgroundColor3 = Color3.fromRGB(20, 20, 30); b.TextColor3 = Color3.new(1,1,1); b.Font = "SourceSansBold"; Instance.new("UICorner", b)
    local state = false
    b.MouseButton1Click:Connect(function()
        state = not state
        b.Text = text.." ["..(state and "ON" or "OFF").."]"
        b.BackgroundColor3 = state and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(20, 20, 30)
        callback(state)
    end)
end
-- [ FEATURES ] --
createToggle("AIMBOT (100%)", combatP, function(v) settings.aimbot = v end)
createToggle("NO RECOIL", combatP, function(v) end) -- Visual logic only
createToggle("SPEED HACK", moveP, function(v) settings.speed_toggle = v end)
local sBox = Instance.new("TextBox", moveP); sBox.Text = "100"; sBox.Size = UDim2.new(1,0,0,30); sBox.BackgroundColor3 = Color3.fromRGB(10,10,10); sBox.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", sBox)
sBox.FocusLost:Connect(function() settings.speed = tonumber(sBox.Text) or 16 end)
createToggle("FLY MODE", moveP, function(v) settings.fly = v end)
createToggle("NOCLIP", moveP, function(v) settings.noclip = v end)
createToggle("INF JUMP", moveP, function(v) settings.infjump = v end)
createToggle("ESP MASTER", visualP, function(v) settings.esp = v end)
createToggle("TEAM CHECK", visualP, function(v) settings.teamcheck = v end)
createToggle("ANTI-AFK", miscP, function(v) end)
Instance.new("TextButton", miscP).Text = "FORCE RESET"; miscP.ChildAdded:Connect(function(c) if c:IsA("TextButton") then c.Size = UDim2.new(1,0,0,35); c.BackgroundColor3 = Color3.fromRGB(150,0,0); c.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", c); c.MouseButton1Click:Connect(function() lp.Character:BreakJoints() end) end end)
local toggleBtn = Instance.new("TextButton", sg)
toggleBtn.Size = UDim2.new(0, 60, 0, 60); toggleBtn.Position = UDim2.new(0, 10, 0.5, 0); toggleBtn.Text = "🇰🇭"; toggleBtn.TextSize = 35; toggleBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0); toggleBtn.Visible = false; Instance.new("UICorner", toggleBtn); makeDraggable(toggleBtn, toggleBtn)
toggleBtn.MouseButton1Click:Connect(function() main.Visible = not main.Visible end)
kLogin.MouseButton1Click:Connect(function()
    if kInput.Text == "KHMER" then
        keyFrame:Destroy(); main.Visible = true; toggleBtn.Visible = true
    else
        kInput.Text = ""; kInput.PlaceholderText = "WRONG PASSWORD!"
    end
end)
-- [ CORE LOOP ] --
uis.JumpRequest:Connect(function() if settings.infjump and lp.Character:FindFirstChild("Humanoid") then lp.Character.Humanoid:ChangeState("Jumping") end end)
rs.Heartbeat:Connect(function()
    if settings.speed_toggle and lp.Character:FindFirstChild("Humanoid") then lp.Character.Humanoid.WalkSpeed = settings.speed end
    if settings.fly and lp.Character:FindFirstChild("HumanoidRootPart") then lp.Character.HumanoidRootPart.Velocity = cam.CFrame.LookVector  (settings.speed  1.5) end
    if settings.noclip and lp.Character then for _, v in pairs(lp.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end
    if settings.esp then
        for _, p in pairs(game.Players:GetPlayers()) do
            if p ~= lp and p.Character and p.Character:FindFirstChild("HumanoidRootPart") and p.Character:FindFirstChild("Humanoid") then
                local hrp = p.Character.HumanoidRootPart
                local hum = p.Character.Humanoid
                local esp = hrp:FindFirstChild("K_V58_ESP")
                
                if hum.Health > 0 then
                    if not esp then
                        esp = Instance.new("BillboardGui", hrp); esp.Name = "K_V58_ESP"; esp.Size = UDim2.new(4, 0, 5, 0); esp.AlwaysOnTop = true
                        local f = Instance.new("Frame", esp); f.Size = UDim2.new(1, 0, 1, 0); f.BackgroundTransparency = 0.8; Instance.new("UIStroke", f)
                        local h = Instance.new("Frame", f); h.Name = "Health"; h.Size = UDim2.new(0.1, 0, 1, 0); h.Position = UDim2.new(-0.15, 0, 0, 0)
                    end
                    esp.Enabled = true
                    local isEnemy = (p.Team ~= lp.Team)
                    esp.Frame.BackgroundColor3 = isEnemy and Color3.new(1, 0, 0) or Color3.new(0, 1, 0)
                    esp.Frame.Health.Size = UDim2.new(0.1, 0, hum.Health/hum.MaxHealth, 0)
                    esp.Frame.Health.BackgroundColor3 = Color3.fromHSV((hum.Health/hum.MaxHealth)  0.3, 1, 1)
                    if settings.teamcheck and not isEnemy then esp.Enabled = false end
                elseif esp then esp.Enabled = false end
            end
        end
    end
    if settings.aimbot then
        local target, dist = nil, 300
        for _, p in pairs(game.Players:GetPlayers()) do
            if p ~= lp and p.Character and p.Character:FindFirstChild("Head") and p.Character.Humanoid.Health > 0 then
                if not settings.teamcheck or p.Team ~= lp.Team then
                    local pos, onScreen = cam:WorldToViewportPoint(p.Character.Head.Position)
                    if onScreen then
                        local mag = (Vector2.new(pos.X, pos.Y) - uis:GetMouseLocation()).Magnitude
                        if mag < dist then target = p; dist = mag end
                    end
                end
            end
        end
        if target then cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, target.Character.Head.Position), 0.25) end
    end
end)
