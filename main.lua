-- [[ 🇰🇭 KHMER HUB V55 - FLAG BACKGROUND EDITION 🇰🇭 ]] --
-- [[ TITLE: ខ្មែរខ្លាំង | PASSWORD: KHMER ]] --
repeat task.wait() until game:IsLoaded()
local lp = game:GetService("Players").LocalPlayer
local cam = workspace.CurrentCamera
local rs = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local pUI = (gethui and gethui()) or (game:GetService("CoreGui"):FindFirstChild("RobloxGui") and game:GetService("CoreGui")) or lp:WaitForChild("PlayerGui")
local correctKey = "1234"
local settings = {speed = 100, speed_toggle = false, aimbot = false, esp = false, tracers = false, noclip = false, infjump = false, antiafk = false}
if pUI:FindFirstChild("KHMER_STRONG_V55") then pUI.KHMER_STRONG_V55:Destroy() end
local sg = Instance.new("ScreenGui", pUI)
sg.Name = "KHMER_STRONG_V55"
sg.ResetOnSpawn = false
-- [ FUNCTIONS ] --
local function makeDraggable(topbar, object)
    local dragging, dragInput, dragStart, startPos
    topbar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true; dragStart = input.Position; startPos = object.Position
            input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
        end
    end)
    topbar.InputChanged:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then dragInput = input end end)
    uis.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            object.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end
-- [ KEY SYSTEM ] --
local keyFrame = Instance.new("Frame", sg)
keyFrame.Size = UDim2.new(0, 240, 0, 180); keyFrame.Position = UDim2.new(0.5, -120, 0.5, -90); keyFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Instance.new("UICorner", keyFrame); Instance.new("UIStroke", keyFrame).Color = Color3.fromRGB(218, 165, 32)
makeDraggable(keyFrame, keyFrame)
local kTitle = Instance.new("TextLabel", keyFrame)
kTitle.Text = "🇰🇭 KHMER HUB - KEY 🇰🇭"; kTitle.Size = UDim2.new(1, 0, 0, 40); kTitle.TextColor3 = Color3.fromRGB(218, 165, 32); kTitle.BackgroundTransparency = 1; kTitle.Font = Enum.Font.SourceSansBold; kTitle.TextSize = 18
local kInput = Instance.new("TextBox", keyFrame)
kInput.PlaceholderText = "Input Password..."; kInput.Size = UDim2.new(0.85, 0, 0, 35); kInput.Position = UDim2.new(0.075, 0, 0.35, 0); kInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30); kInput.TextColor3 = Color3.new(1, 1, 1); Instance.new("UICorner", kInput)
local kCheck = Instance.new("TextButton", keyFrame)
kCheck.Text = "LOGIN"; kCheck.Size = UDim2.new(0.85, 0, 0, 35); kCheck.Position = UDim2.new(0.075, 0, 0.65, 0); kCheck.BackgroundColor3 = Color3.fromRGB(0, 62, 126); kCheck.TextColor3 = Color3.new(1, 1, 1); kCheck.Font = Enum.Font.SourceSansBold; Instance.new("UICorner", kCheck)
-- [ MAIN HUB ] --
local mainFrame = Instance.new("Frame", sg)
mainFrame.Size = UDim2.new(0, 260, 0, 240); mainFrame.Position = UDim2.new(0.5, -130, 0.5, -120); mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20); mainFrame.Visible = false; mainFrame.ClipsDescendants = true
Instance.new("UICorner", mainFrame); local mStroke = Instance.new("UIStroke", mainFrame); mStroke.Color = Color3.fromRGB(255, 215, 0); mStroke.Thickness = 3
makeDraggable(mainFrame, mainFrame)
-- 🇰🇭 BACKGROUND FLAG 🇰🇭 --
local flagBG = Instance.new("ImageLabel", mainFrame)
flagBG.Name = "FlagBackground"
flagBG.Size = UDim2.new(1, 0, 1, 0)
flagBG.Image = "rbxassetid://132420803" -- រូបទង់ជាតិខ្មែរ
flagBG.ImageTransparency = 0.6 -- បន្ថយភាពច្បាស់ដើម្បីងាយមើលអក្សរ
flagBG.BackgroundTransparency = 1
flagBG.ScaleType = Enum.ScaleType.Stretch
flagBG.ZIndex = 0
local mTitle = Instance.new("TextLabel", mainFrame)
mTitle.Text = "🇰🇭 ខ្មែរខ្លាំង 🇰🇭"; mTitle.Size = UDim2.new(1, 0, 0, 45);mTitle.TextColor3 = Color3.new(1, 1, 1); mTitle.BackgroundTransparency = 1; mTitle.Font = Enum.Font.SourceSansBold; mTitle.TextSize = 25; mTitle.ZIndex = 2
local tabContainer = Instance.new("Frame", mainFrame)
tabContainer.Size = UDim2.new(0.3, 0, 0.75, 0); tabContainer.Position = UDim2.new(0, 5, 0.2, 0); tabContainer.BackgroundTransparency = 1; tabContainer.ZIndex = 2
local contentContainer = Instance.new("Frame", mainFrame)
contentContainer.Size = UDim2.new(0.65, 0, 0.75, 0); contentContainer.Position = UDim2.new(0.32, 0, 0.2, 0); contentContainer.BackgroundTransparency = 1; contentContainer.ZIndex = 2
local pages = {}
local function createPage(name)
    local p = Instance.new("ScrollingFrame", contentContainer)
    p.Size = UDim2.new(1, 0, 1, 0); p.BackgroundTransparency = 1; p.Visible = false; p.ScrollBarThickness = 0
    pages[name] = p; Instance.new("UIListLayout", p).Padding = UDim.new(0, 6)
    return p
end
local combatP = createPage("Combat"); combatP.Visible = true
local moveP = createPage("Move"); local visualP = createPage("Visual"); local miscP = createPage("Misc")
local function createTab(name, text, pos)
    local b = Instance.new("TextButton", tabContainer)
    b.Text = text; b.Size = UDim2.new(0.95, 0, 0, 35); b.Position = pos; b.BackgroundColor3 = Color3.fromRGB(30, 30, 30); b.TextColor3 = Color3.new(1, 1, 1); b.Font = Enum.Font.SourceSansBold; b.TextSize = 11; Instance.new("UICorner", b); b.ZIndex = 3
    b.MouseButton1Click:Connect(function() for _, p in pairs(pages) do p.Visible = false end pages[name].Visible = true end)
end
createTab("Combat", "⚔️ COMBAT", UDim2.new(0, 0, 0, 0))
createTab("Move", "🏃 MOVE", UDim2.new(0, 0, 0, 40))
createTab("Visual", "👁️ VISUAL", UDim2.new(0, 0, 0, 80))
createTab("Misc", "⚙️ MISC", UDim2.new(0, 0, 0, 120))
local function createButton(text, parent, callback)
    local b = Instance.new("TextButton", parent)
    b.Text = text; b.Size = UDim2.new(0.95, 0, 0, 35); b.BackgroundColor3 = Color3.fromRGB(20, 20, 20); b.TextColor3 = Color3.new(1, 1, 1); b.Font = Enum.Font.SourceSansBold; b.TextSize = 13; b.ZIndex = 4
    Instance.new("UICorner", b); local s = Instance.new("UIStroke", b); s.Color = Color3.fromRGB(218, 165, 32)
    b.MouseButton1Click:Connect(function() callback(b) end)
end
-- Feature Setup
createButton("🎯 AIMBOT: OFF", combatP, function(b) settings.aimbot = not settings.aimbot; b.Text = settings.aimbot and "🎯 AIMBOT: ON" or "🎯 AIMBOT: OFF" end)
local speedBox = Instance.new("TextBox", moveP); speedBox.Text = "100"; speedBox.Size = UDim2.new(0.95, 0, 0, 30); speedBox.BackgroundColor3 = Color3.fromRGB(10, 10, 10); speedBox.TextColor3 = Color3.new(1, 1, 1); Instance.new("UICorner", speedBox); speedBox.FocusLost:Connect(function() settings.speed = tonumber(speedBox.Text) or 16 end)
createButton("🏃 SPEED: OFF", moveP, function(b) settings.speed_toggle = not settings.speed_toggle; b.Text = settings.speed_toggle and "🏃 SPEED: ON" or "🏃 SPEED: OFF" end)
createButton("👻 NOCLIP: OFF", moveP, function(b) settings.noclip = not settings.noclip; b.Text = settings.noclip and "👻 NOCLIP: ON" or "👻 NOCLIP: OFF" end)
createButton("👁️ BOX ESP: OFF", visualP, function(b) settings.esp = not settings.esp; b.Text = settings.esp and "👁️ ESP: ON" or "👁️ ESP: OFF" end)
createButton("📏 TRACERS: OFF", visualP, function(b) settings.tracers = not settings.tracers; b.Text = settings.tracers and "📏 TRACERS: ON" or "📏 TRACERS: OFF" end)
createButton("💀 RESET", miscP, function() if lp.Character then lp.Character:BreakJoints() end end)
local tButton = Instance.new("TextButton", sg)
tButton.Size = UDim2.new(0, 60, 0, 60); tButton.Position = UDim2.new(0, 15, 0.4, 0); tButton.Text = "🇰🇭"; tButton.BackgroundColor3 = Color3.fromRGB(200, 16, 46); tButton.TextSize = 35; tButton.Visible = false; Instance.new("UICorner", tButton).CornerRadius = UDim.new(0, 15); makeDraggable(tButton, tButton)
tButton.MouseButton1Click:Connect(function() mainFrame.Visible = not mainFrame.Visible end)
-- [ LOGIC ] --
kCheck.MouseButton1Click:Connect(function()
    if kInput.Text == "KHMER" then keyFrame:Destroy(); mainFrame.Visible = true; tButton.Visible = true
    else kInput.Text = ""; kInput.PlaceholderText = "Wrong Password!" end
end)
rs.Heartbeat:Connect(function()
    if settings.speed_toggle and lp.Character and lp.Character:FindFirstChild("Humanoid") then lp.Character.Humanoid.WalkSpeed = settings.speed end
    if settings.noclip and lp.Character then for _, v in pairs(lp.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end
    
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= lp and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local box = p.Character.HumanoidRootPart:FindFirstChild("K_ESP")
            if settings.esp and p.Character.Humanoid.Health > 0 then
                if not box then
                    box = Instance.new("BillboardGui", p.Character.HumanoidRootPart); box.Name = "K_ESP"; box.Size = UDim2.new(4, 0, 5.5, 0); box.AlwaysOnTop = true
                    local f = Instance.new("Frame", box); f.Size = UDim2.new(1, 0, 1, 0); f.BackgroundTransparency = 0.7; Instance.new("UIStroke", f)
                    local hf = Instance.new("Frame", f); hf.Name = "HBar"; hf.Size = UDim2.new(0.1, 0, 1, 0); hf.Position = UDim2.new(-0.15, 0, 0, 0)
                end
                box.Enabled = true; box.Frame.BackgroundColor3 = (p.Team == lp.Team) and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
                local h = p.Character.Humanoid; box.Frame.HBar.Size = UDim2.new(0.1, 0, h.Health/h.MaxHealth, 0); box.Frame.HBar.BackgroundColor3 = Color3.fromHSV((h.Health/h.MaxHealth)  0.3, 1, 1)
            elseif box then box.Enabled = false end
        end
    end
    if settings.aimbot then
        local t, d = nil, 250
        for _, p in pairs(game.Players:GetPlayers()) do
            if p ~= lp and p.Character and p.Character:FindFirstChild("Head") and p.Character.Humanoid.Health > 0 and p.Team ~= lp.Team then
                local v, o = cam:WorldToViewportPoint(p.Character.Head.Position)
                if o and (Vector2.new(v.X, v.Y) - uis:GetMouseLocation()).Magnitude < d then t = p; d = (Vector2.new(v.X, v.Y) - uis:GetMouseLocation()).Magnitude end
            end
        end
        if t then cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, t.Character.Head.Position), 0.4) end
    end
end)
