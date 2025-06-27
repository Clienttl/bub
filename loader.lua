local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Synergy V2",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Synergy",
   LoadingSubtitle = "by whodiana (aka synergy)",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "qaUmTDuYPM", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local Main = Window:CreateTab("Main", "align-justify")
local Anti = Window:CreateTab("Anti", "badge-alert")
local Troll = Window:CreateTab("Troll", "annoyed")
local Autobuy = Window:CreateTab("Autobuy", "badge-cent")
local Section = Main:CreateSection("Synergy")
local Section = Anti:CreateSection("Synergy")
local Section = Troll:CreateSection("Synergy")
local Section = Autobuy:CreateSection("Synergy")
Rayfield:Notify({
   Title = "Synergy V2",
   Content = "Loaded",
   Duration = 6.5,
   Image = 4483362458,
})
local Button = Anti:CreateButton({
   Name = "Anti-Trap",
   Callback = function()
   local P = game:GetService("Players")
local R = game:GetService("RunService")
local p = P.LocalPlayer

local D = 8
local F = 25

local function a()
    local t = {}
    for _, c in pairs(workspace:GetChildren()) do
        if c:IsA("Model") or c:IsA("Folder") then
            if c.Name == "Trap" then
                for _, x in pairs(c:GetDescendants()) do
                    if x:IsA("BasePart") then
                        table.insert(t, x)
                    end
                end
            end
        end
    end
    return t
end

local function b(C)
    local h = C:WaitForChild("HumanoidRootPart")
    R.RenderStepped:Connect(function()
        local u = a()
        for _, v in pairs(u) do
            local d = (v.Position - h.Position).Magnitude
            if d < D then
                h.Velocity = Vector3.new(0, F, 0)
                break
            end
        end
    end)
end

local function c(C)
    b(C)
end

if p.Character then
    c(p.Character)
end

p.CharacterAdded:Connect(c)
   end,
})
local Button = Anti:CreateButton({
   Name = "Anti-Hit",
   Callback = function()
   local a,b,c,d=game:GetService("Players"),game:GetService("RunService"),game:GetService("UserInputService"),game:GetService("CoreGui")
local e=a.LocalPlayer
local f=e.Character or e.CharacterAdded:Wait()
local g=f:WaitForChild("Humanoid")
local h=f:WaitForChild("HumanoidRootPart")
local i=false
local j=15
local k=Vector3.new(0,15,0)
local l
local m=Instance.new("Folder",workspace)
m.Name="SBR"

local n=Instance.new("ScreenGui")
n.Name="XUI"
n.Parent=(gethui and gethui()) or d

local o=Instance.new("Frame",n)
o.Size=UDim2.new(0,260,0,100)
o.Position=UDim2.new(0.5,-130,0.5,-50)
o.BackgroundColor3=Color3.fromRGB(20,20,20)
o.BorderSizePixel=0
o.Active=true
o.Draggable=true
Instance.new("UICorner",o)

local p=Instance.new("TextLabel",o)
p.Text="Steal A Brainrot"
p.Size=UDim2.new(1,0,0,30)
p.Position=UDim2.new(0,0,0,5)
p.BackgroundTransparency=1
p.TextColor3=Color3.new(1,1,1)
p.Font=Enum.Font.GothamBold
p.TextSize=20

local q=Instance.new("TextLabel",o)
q.Text="Made by SYNERGYYYY"
q.Size=UDim2.new(1,0,0,18)
q.Position=UDim2.new(0,0,0,30)
q.BackgroundTransparency=1
q.TextColor3=Color3.new(0.7,0.7,0.7)
q.Font=Enum.Font.Gotham
q.TextSize=14

local r=Instance.new("TextButton",o)
r.Size=UDim2.new(0,240,0,40)
r.Position=UDim2.new(0,10,0,50)
r.Text="Anti-Hit | OFF"
r.BackgroundColor3=Color3.fromRGB(80,80,80)
r.TextColor3=Color3.new(1,1,1)
r.Font=Enum.Font.GothamBold
r.TextSize=16
Instance.new("UICorner",r)

local function s(t)
    if not l then
        l=Instance.new("Part")
        l.Anchored=true
        l.Size=Vector3.new(10,1,10)
        l.Color=Color3.fromRGB(0,200,255)
        l.Material=Enum.Material.ForceField
        l.Transparency=0.1
        l.CanCollide=true
        l.Parent=workspace
    end
    l.Position=t+k
end

local function u()
    if l then
        l:Destroy()
        l=nil
    end
end

local function v(w)
    local x=w+Vector3.new(0,3,0)
    if (h.Position-x).Magnitude>4 then
        h.CFrame=CFrame.new(x)
    end
end

local function y()
    for _,z in ipairs(m:GetChildren()) do
        z:Destroy()
    end
    for _,A in ipairs(a:GetPlayers()) do
        if A~=e and A.Character and A.Character:FindFirstChild("HumanoidRootPart") then
            local B=A.Character.HumanoidRootPart
            local C=Instance.new("BillboardGui")
            C.Size=UDim2.new(0,100,0,40)
            C.AlwaysOnTop=true
            C.Adornee=B
            C.Parent=m
            local D=Instance.new("TextLabel",C)
            D.Size=UDim2.new(1,0,1,0)
            D.BackgroundTransparency=1
            D.Text=A.Name
            D.TextColor3=Color3.new(1,0,0)
            D.Font=Enum.Font.GothamBold
            D.TextScaled=true
        end
    end
end

local function E()
    g.WalkSpeed=i and 25 or 16
end

r.MouseButton1Click:Connect(function()
    i=not i
    r.Text=i and "Anti-Hit | ON" or "Anti-Hit | OFF"
    r.BackgroundColor3=i and Color3.fromRGB(0,170,0) or Color3.fromRGB(80,80,80)
    E()
end)

c.InputBegan:Connect(function(F,G)
    if G then return end
    if F.KeyCode==Enum.KeyCode.F then
        r:MouseButton1Click()
    end
end)

b.RenderStepped:Connect(function()
    if i and h then
        local H=false
        for _,I in ipairs(a:GetPlayers()) do
            if I~=e and I.Character and I.Character:FindFirstChild("HumanoidRootPart") then
                local J=I.Character.HumanoidRootPart
                if (h.Position-J.Position).Magnitude<=j then
                    H=true
                    break
                end
            end
        end
        if H then
            s(h.Position)
            v(h.Position+k)
        else
            u()
        end
    else
        u()
    end
    y()
end)
   end,
})
local Button = Main:CreateButton({
   Name = "Fly",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.fi/r/qjLPAGd", true))()
   end,
})
local Button = Main:CreateButton({
   Name = "TpClick [V]",
   Callback = function()
   local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local mouse = player:GetMouse()

local teleportKey = Enum.KeyCode.V
local travelSpeed = 25 -- studs per second

-- Helper: Hide character visuals
local function setCharacterVisible(character, visible)
	for _, obj in ipairs(character:GetDescendants()) do
		if obj:IsA("BasePart") or obj:IsA("Decal") then
			obj.Transparency = visible and 0 or 1
		elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") then
			obj.Enabled = visible
		end
	end
end

-- Create a marker part at target position
local function createTeleportMarker(position)
	local part = Instance.new("Part")
	part.Anchored = true
	part.CanCollide = false
	part.Size = Vector3.new(2, 0.2, 2)
	part.Position = position + Vector3.new(0, 0.1, 0) -- Just above ground
	part.BrickColor = BrickColor.new("Really red")
	part.Material = Enum.Material.Neon
	part.Name = "TeleportMarker"
	part.Parent = workspace
	return part
end

local function teleportToCursor()
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

	-- Raycast to find target position
	local unitRay = mouse.UnitRay
	local raycastParams = RaycastParams.new()
	raycastParams.FilterDescendantsInstances = {character}
	raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
	raycastParams.IgnoreWater = true

	local raycastResult = workspace:Raycast(unitRay.Origin, unitRay.Direction * 1000, raycastParams)

	if raycastResult then
		local targetPosition = raycastResult.Position
		local distance = (targetPosition - humanoidRootPart.Position).Magnitude
		local travelTime = distance / travelSpeed

		-- Create teleport marker
		local marker = createTeleportMarker(targetPosition)

		-- Hide the character
		setCharacterVisible(character, false)

		-- Tween to the target
		local tweenInfo = TweenInfo.new(
			travelTime,
			Enum.EasingStyle.Quad,
			Enum.EasingDirection.InOut
		)

		local tween = TweenService:Create(humanoidRootPart, tweenInfo, {
			CFrame = CFrame.new(targetPosition)
		})

		tween:Play()

		-- Wait for the tween to finish
		tween.Completed:Wait()

		-- Show the character again and clean up
		setCharacterVisible(character, true)
		marker:Destroy()
	end
end

-- Listen for key press
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == teleportKey then
		teleportToCursor()
	end
end)

   end,
})
local Button = Troll:CreateButton({
   Name = "TouchFling",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/LgZwZ7ZB", true))()
   end,
})
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local following = false
local followLoop

local function getNearestPlayer()
	local localPlayer = game.Players.LocalPlayer
	local myChar = localPlayer.Character
	if not myChar or not myChar:FindFirstChild("HumanoidRootPart") then return nil end

	local closestPlayer = nil
	local shortestDistance = math.huge

	for _, player in ipairs(game.Players:GetPlayers()) do
		if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			local distance = (player.Character.HumanoidRootPart.Position - myChar.HumanoidRootPart.Position).Magnitude
			if distance < shortestDistance then
				shortestDistance = distance
				closestPlayer = player
			end
		end
	end

	return closestPlayer
end

local function startFollowing()
	followLoop = RunService.Heartbeat:Connect(function()
		local player = game.Players.LocalPlayer
		local char = player.Character
		if not char or not char:FindFirstChild("HumanoidRootPart") then return end

		local hrp = char.HumanoidRootPart
		local target = getNearestPlayer()

		if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
			local targetHRP = target.Character.HumanoidRootPart
			local distance = (targetHRP.Position - hrp.Position).Magnitude
			local speed = 40
			local time = distance / speed

			local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear)
			local tween = TweenService:Create(hrp, tweenInfo, {CFrame = CFrame.new(targetHRP.Position)})
			tween:Play()
		end
	end)
end

local function stopFollowing()
	if followLoop then
		followLoop:Disconnect()
		followLoop = nil
	end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	if following then
		stopFollowing()
		startFollowing()
	end
end)

local Toggle2 = Troll:CreateToggle({
	Name = "FollowPlayer",
	CurrentValue = false,
	Flag = "Toggle2",
	Callback = function(Value)
		following = Value
		if following then
			startFollowing()
		else
			stopFollowing()
		end
	end,
})
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local orbiting = false
local orbitLoop

local function getNearestPlayer()
	local localPlayer = game.Players.LocalPlayer
	local myChar = localPlayer.Character
	if not myChar or not myChar:FindFirstChild("HumanoidRootPart") then return nil end

	local closestPlayer = nil
	local shortestDistance = math.huge

	for _, player in ipairs(game.Players:GetPlayers()) do
		if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			local distance = (player.Character.HumanoidRootPart.Position - myChar.HumanoidRootPart.Position).Magnitude
			if distance < shortestDistance then
				shortestDistance = distance
				closestPlayer = player
			end
		end
	end

	return closestPlayer
end

local function startOrbiting()
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local hrp = char:WaitForChild("HumanoidRootPart")

	local target = getNearestPlayer()
	if not target or not target.Character or not target.Character:FindFirstChild("HumanoidRootPart") then return end
	local targetHRP = target.Character.HumanoidRootPart

	local distance = (targetHRP.Position - hrp.Position).Magnitude
	local speed = 10
	local time = distance / speed

	local moveTween = TweenService:Create(hrp, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = CFrame.new(targetHRP.Position + Vector3.new(5, 0, 0))})
	moveTween:Play()
	moveTween.Completed:Wait()

	local angle = 0
	local radius = 3
	local heightOffset = 2
	local orbitSpeed = 1

	orbitLoop = RunService.Heartbeat:Connect(function(dt)
		if not target.Character or not target.Character:FindFirstChild("HumanoidRootPart") then return end
		targetHRP = target.Character.HumanoidRootPart

		angle += orbitSpeed * dt
		local orbitX = math.cos(angle) * radius
		local orbitZ = math.sin(angle) * radius
		local orbitPos = targetHRP.Position + Vector3.new(orbitX, heightOffset, orbitZ)
		local orbitCFrame = CFrame.new(orbitPos, targetHRP.Position)

		hrp.CFrame = orbitCFrame
	end)
end

local function stopOrbiting()
	if orbitLoop then
		orbitLoop:Disconnect()
		orbitLoop = nil
	end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	if orbiting then
		stopOrbiting()
		startOrbiting()
	end
end)

local Toggle3 = Troll:CreateToggle({
	Name = "OrbitPlayer",
	CurrentValue = false,
	Flag = "Toggle3",
	Callback = function(Value)
		orbiting = Value
		if orbiting then
			startOrbiting()
		else
			stopOrbiting()
		end
	end,
})

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local boosting = false

local function boost()
	if boosting then return end
	boosting = true

	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local hrp = char:WaitForChild("HumanoidRootPart")
	local camera = workspace.CurrentCamera

	local totalTime = 5
	local speed = 40 -- studs per second
	local steps = 30
	local interval = totalTime / steps
	local distancePerStep = speed * interval

	for i = 1, steps do
		if not boosting then break end
		local direction = camera.CFrame.LookVector.Unit
		local newPosition = hrp.Position + direction * distancePerStep
		local tween = TweenService:Create(hrp, TweenInfo.new(interval, Enum.EasingStyle.Linear), {CFrame = CFrame.new(newPosition)})
		tween:Play()
		tween.Completed:Wait()
	end

	boosting = false
end

local Button = Main:CreateButton({
	Name = "Boost",
	Callback = function()
		boost()
	end,
})
local Button = Autobuy:CreateButton({
   Name = "La Vacca Saturno Saturnita",
   Callback = function()
   local s1=game:GetService("TweenService")
local s2=game:GetService("Workspace")
local s3=game:GetService("Players")
local s4=game:GetService("RunService")
local p=s3.LocalPlayer
local function f1()
    if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
        return p.Character.HumanoidRootPart
    else
        p.CharacterAdded:Wait()
        return p.Character:WaitForChild("HumanoidRootPart")
    end
end
local v1=30
local v2=s2:WaitForChild("RenderedMovingAnimals")
local v3="La Vacca Saturno Saturnita"
local v4=nil
local function f2(pos)
    if v4 then
        v4:Cancel()
        v4=nil
    end
    local r=f1()
    local d=(r.Position-pos).Magnitude
    local t=d/v1
    local i=TweenInfo.new(t,Enum.EasingStyle.Linear)
    v4=s1:Create(r,i,{CFrame=CFrame.new(pos+Vector3.new(0,3,0))})
    v4:Play()
end
local v5=3
local v6={}
local function f3(pr)
    local n=tick()
    if not v6[pr] or n-v6[pr]>=v5 then
        v6[pr]=n
        pr:InputHoldBegin()
        wait(2)
        pr:InputHoldEnd()
    end
end
local v7={}
local v8=3
local v9=0
while true do
    local r=f1()
    local m=v2:FindFirstChild(v3)
    if m then
        local frp=m:FindFirstChild("FakeRootPart")
        if frp and frp:IsA("BasePart") then
            f2(frp.Position)
        end
    end
    local n=tick()
    if n-v9>v8 then
        v7={}
        for _,obj in ipairs(s2:GetDescendants())do
            if obj:IsA("ProximityPrompt")then
                table.insert(v7,obj)
            end
        end
        v9=n
    end
    for _,pr in ipairs(v7)do
        coroutine.wrap(f3)(pr)
    end
    wait(0.1)
end
   end,
})
local Button = Autobuy:CreateButton({
   Name = "Los Tralaleritos",
   Callback = function()
   local s1=game:GetService("TweenService")
local s2=game:GetService("Workspace")
local s3=game:GetService("Players")
local s4=game:GetService("RunService")
local p=s3.LocalPlayer
local function f1()
    if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
        return p.Character.HumanoidRootPart
    else
        p.CharacterAdded:Wait()
        return p.Character:WaitForChild("HumanoidRootPart")
    end
end
local v1=30
local v2=s2:WaitForChild("RenderedMovingAnimals")
local v3="Los Tralaleritos"
local v4=nil
local function f2(pos)
    if v4 then
        v4:Cancel()
        v4=nil
    end
    local r=f1()
    local d=(r.Position-pos).Magnitude
    local t=d/v1
    local i=TweenInfo.new(t,Enum.EasingStyle.Linear)
    v4=s1:Create(r,i,{CFrame=CFrame.new(pos+Vector3.new(0,3,0))})
    v4:Play()
end
local v5=3
local v6={}
local function f3(pr)
    local n=tick()
    if not v6[pr] or n-v6[pr]>=v5 then
        v6[pr]=n
        pr:InputHoldBegin()
        wait(2)
        pr:InputHoldEnd()
    end
end
local v7={}
local v8=3
local v9=0
while true do
    local r=f1()
    local m=v2:FindFirstChild(v3)
    if m then
        local frp=m:FindFirstChild("FakeRootPart")
        if frp and frp:IsA("BasePart") then
            f2(frp.Position)
        end
    end
    local n=tick()
    if n-v9>v8 then
        v7={}
        for _,obj in ipairs(s2:GetDescendants())do
            if obj:IsA("ProximityPrompt")then
                table.insert(v7,obj)
            end
        end
        v9=n
    end
    for _,pr in ipairs(v7)do
        coroutine.wrap(f3)(pr)
    end
    wait(0.1)
end
   end,
})
local Button = Autobuy:CreateButton({
   Name = "Graipuss Medussi",
   Callback = function()
   local s1=game:GetService("TweenService")
local s2=game:GetService("Workspace")
local s3=game:GetService("Players")
local s4=game:GetService("RunService")
local p=s3.LocalPlayer
local function f1()
    if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
        return p.Character.HumanoidRootPart
    else
        p.CharacterAdded:Wait()
        return p.Character:WaitForChild("HumanoidRootPart")
    end
end
local v1=30
local v2=s2:WaitForChild("RenderedMovingAnimals")
local v3="Graipuss Medussi"
local v4=nil
local function f2(pos)
    if v4 then
        v4:Cancel()
        v4=nil
    end
    local r=f1()
    local d=(r.Position-pos).Magnitude
    local t=d/v1
    local i=TweenInfo.new(t,Enum.EasingStyle.Linear)
    v4=s1:Create(r,i,{CFrame=CFrame.new(pos+Vector3.new(0,3,0))})
    v4:Play()
end
local v5=3
local v6={}
local function f3(pr)
    local n=tick()
    if not v6[pr] or n-v6[pr]>=v5 then
        v6[pr]=n
        pr:InputHoldBegin()
        wait(2)
        pr:InputHoldEnd()
    end
end
local v7={}
local v8=3
local v9=0
while true do
    local r=f1()
    local m=v2:FindFirstChild(v3)
    if m then
        local frp=m:FindFirstChild("FakeRootPart")
        if frp and frp:IsA("BasePart") then
            f2(frp.Position)
        end
    end
    local n=tick()
    if n-v9>v8 then
        v7={}
        for _,obj in ipairs(s2:GetDescendants())do
            if obj:IsA("ProximityPrompt")then
                table.insert(v7,obj)
            end
        end
        v9=n
    end
    for _,pr in ipairs(v7)do
        coroutine.wrap(f3)(pr)
    end
    wait(0.1)
end
   end,
})
local Button = Autobuy:CreateButton({
   Name = "La Grande Combinazione",
   Callback = function()
   local s1=game:GetService("TweenService")
local s2=game:GetService("Workspace")
local s3=game:GetService("Players")
local s4=game:GetService("RunService")
local p=s3.LocalPlayer
local function f1()
    if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
        return p.Character.HumanoidRootPart
    else
        p.CharacterAdded:Wait()
        return p.Character:WaitForChild("HumanoidRootPart")
    end
end
local v1=30
local v2=s2:WaitForChild("RenderedMovingAnimals")
local v3="La Grande Combinazione"
local v4=nil
local function f2(pos)
    if v4 then
        v4:Cancel()
        v4=nil
    end
    local r=f1()
    local d=(r.Position-pos).Magnitude
    local t=d/v1
    local i=TweenInfo.new(t,Enum.EasingStyle.Linear)
    v4=s1:Create(r,i,{CFrame=CFrame.new(pos+Vector3.new(0,3,0))})
    v4:Play()
end
local v5=3
local v6={}
local function f3(pr)
    local n=tick()
    if not v6[pr] or n-v6[pr]>=v5 then
        v6[pr]=n
        pr:InputHoldBegin()
        wait(2)
        pr:InputHoldEnd()
    end
end
local v7={}
local v8=3
local v9=0
while true do
    local r=f1()
    local m=v2:FindFirstChild(v3)
    if m then
        local frp=m:FindFirstChild("FakeRootPart")
        if frp and frp:IsA("BasePart") then
            f2(frp.Position)
        end
    end
    local n=tick()
    if n-v9>v8 then
        v7={}
        for _,obj in ipairs(s2:GetDescendants())do
            if obj:IsA("ProximityPrompt")then
                table.insert(v7,obj)
            end
        end
        v9=n
    end
    for _,pr in ipairs(v7)do
        coroutine.wrap(f3)(pr)
    end
    wait(0.1)
end
   end,
})
local pbatWeld
local equippedTool

local function equipBat()
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local backpack = player:WaitForChild("Backpack")
	local tool = backpack:FindFirstChild("Tung Bat")

	if not tool then return end
	tool.Parent = char
	equippedTool = tool

	-- Wait for handle and grip to exist
	local handle = tool:WaitForChild("Handle", 2)
	task.wait(0.2)

	-- Remove Motor6D grip if it exists
	local grip = char:FindFirstChild("RightGrip") or handle:FindFirstChildWhichIsA("Motor6D")
	if grip then
		grip:Destroy()
	end

	-- Weld to leg instead
	local leg = char:FindFirstChild("Right Leg") or char:FindFirstChild("RightLowerLeg")
	if handle and leg then
		handle.Anchored = false

		handle.CFrame = leg.CFrame * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(90), 0, 0)

		pbatWeld = Instance.new("WeldConstraint")
		pbatWeld.Part0 = handle
		pbatWeld.Part1 = leg
		pbatWeld.Parent = handle
	end
end

local function unequipBat()
	if pbatWeld then
		pbatWeld:Destroy()
		pbatWeld = nil
	end

	local player = game.Players.LocalPlayer
	local char = player.Character
	local backpack = player:FindFirstChild("Backpack")

	if equippedTool and backpack then
		equippedTool.Parent = backpack
	end
	equippedTool = nil
end

local TogglePBat = Troll:CreateToggle({
	Name = "BreakBat",
	CurrentValue = false,
	Flag = "TogglePBat",
	Callback = function(Value)
		if Value then
			equipBat()
		else
			unequipBat()
		end
	end,
})
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Debris = game:GetService("Debris")

local infJumpEnabled = false
local jumpTween
local jumpingLoop

local function doJumpLoop()
	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local hrp = character:WaitForChild("HumanoidRootPart")

	jumpingLoop = RunService.Heartbeat:Connect(function()
		if not infJumpEnabled then return end
		if jumpTween and jumpTween.PlaybackState == Enum.PlaybackState.Playing then return end

		local currentPos = hrp.Position
		local targetPos = currentPos + Vector3.new(0, 60, 0)
		local duration = 60 / 30 -- 30 studs/sec

		jumpTween = TweenService:Create(hrp, TweenInfo.new(duration, Enum.EasingStyle.Linear), {
			CFrame = CFrame.new(targetPos)
		})
		jumpTween:Play()
	end)
end

local function stopJumpLoop()
	if jumpTween then
		jumpTween:Cancel()
		jumpTween = nil
	end
	if jumpingLoop then
		jumpingLoop:Disconnect()
		jumpingLoop = nil
	end

	-- Create landing platform
	local player = Players.LocalPlayer
	local character = player.Character
	if not character then return end
	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not hrp then return end

	local platform = Instance.new("Part")
	platform.Size = Vector3.new(8, 1, 8)
	platform.Anchored = true
	platform.CanCollide = true
	platform.Position = Vector3.new(hrp.Position.X, hrp.Position.Y - 3.5, hrp.Position.Z)
	platform.Name = "InfJumpLanding"
	platform.BrickColor = BrickColor.new("Bright yellow")
	platform.Transparency = 0.2
	platform.Parent = workspace

	-- Auto-delete after 5 seconds
	Debris:AddItem(platform, 5)
end

local ToggleInfJump = Main:CreateToggle({
	Name = "InfJump",
	CurrentValue = false,
	Flag = "ToggleInfJump",
	Callback = function(Value)
		infJumpEnabled = Value
		if Value then
			doJumpLoop()
		else
			stopJumpLoop()
		end
	end,
})
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Net = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Net")
local RequestBuy = Net:WaitForChild("RF/CoinsShopService/RequestBuy")

local buyOptions = {
	"Slap", "Speed Coil", "Trap", "Iron Slap", "Gravity Coil", "Bee Launcher",
	"Gold Slap", "Coil Combo", "Rage Table", "Diamond Slap", "Grapple Hook", "Taser Gun",
	"Emerald Slap", "Invisibility Cloak", "Boogie Bomb", "Ruby Slap", "Medusa's Head",
	"Dark Matter Slap", "Web Slinger", "Flame Slap", "Quantum Cloner", "All Seeing Sentry",
	"Nuclear Slap", "Rainbowrath Sword", "Galaxy Slap", "Laser Cape", "Glitched Slap",
	"Body Swap Potion"
}

local Dropdown = Main:CreateDropdown({
	Name = "Buy Item",
	Options = buyOptions,
	CurrentOption = {buyOptions[1]},
	MultipleOptions = false,
	Flag = "DropdownBuyItem",
	Callback = function(Options)
		local selectedItem = Options[1]
		if selectedItem then
			local success, result = pcall(function()
				return RequestBuy:InvokeServer(selectedItem)
			end)
			if success then
				print("Bought:", selectedItem, "→", result)
			else
				warn("Failed to buy:", selectedItem, "→", result)
			end
		end
	end,
})
