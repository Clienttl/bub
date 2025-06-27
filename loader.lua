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
local Section = Main:CreateSection("Synergy")
local Section = Anti:CreateSection("Synergy")
local Section = Troll:CreateSection("Synergy")
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
local flying = false
local player = game.Players.LocalPlayer
local userInput = game:GetService("UserInputService")
local runService = game:GetService("RunService")

local bodyGyro, bodyVelocity
local flyConnection

local function setupFlyParts(char)
    local hrp = char:WaitForChild("HumanoidRootPart")

    bodyGyro = Instance.new("BodyGyro")
    bodyGyro.P = 9e4
    bodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bodyGyro.CFrame = hrp.CFrame
    bodyGyro.Parent = hrp

    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    bodyVelocity.Parent = hrp

    flyConnection = runService.RenderStepped:Connect(function()
        if flying then
            local cam = workspace.CurrentCamera
            local moveDir = Vector3.zero
            if userInput:IsKeyDown(Enum.KeyCode.W) then moveDir += cam.CFrame.LookVector end
            if userInput:IsKeyDown(Enum.KeyCode.S) then moveDir -= cam.CFrame.LookVector end
            if userInput:IsKeyDown(Enum.KeyCode.A) then moveDir -= cam.CFrame.RightVector end
            if userInput:IsKeyDown(Enum.KeyCode.D) then moveDir += cam.CFrame.RightVector end
            if userInput:IsKeyDown(Enum.KeyCode.Space) then moveDir += cam.CFrame.UpVector end
            if userInput:IsKeyDown(Enum.KeyCode.LeftControl) then moveDir -= cam.CFrame.UpVector end
            if moveDir.Magnitude > 0 then
                bodyVelocity.Velocity = moveDir.Unit * 45
            else
                bodyVelocity.Velocity = Vector3.zero
            end
            bodyGyro.CFrame = cam.CFrame
        end
    end)
end

local function stopFlying()
    if bodyGyro then bodyGyro:Destroy() bodyGyro = nil end
    if bodyVelocity then bodyVelocity:Destroy() bodyVelocity = nil end
    if flyConnection then flyConnection:Disconnect() flyConnection = nil end
end

player.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid").Died:Connect(function()
        stopFlying()
        if flying then
            player.CharacterAdded:Wait()
            setupFlyParts(player.Character)
        end
    end)
    if flying then
        setupFlyParts(char)
    end
end)

local Toggle = Main:CreateToggle({
    Name = "Fly",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        flying = Value
        local char = player.Character or player.CharacterAdded:Wait()
        if flying then
            setupFlyParts(char)
        else
            stopFlying()
        end
    end,
})
local following = false
local followConnection

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
	followConnection = game:GetService("RunService").Heartbeat:Connect(function()
		local localPlayer = game.Players.LocalPlayer
		local char = localPlayer.Character
		if not char or not char:FindFirstChild("HumanoidRootPart") or not char:FindFirstChild("Humanoid") then return end

		local target = getNearestPlayer()
		if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
			local myHRP = char.HumanoidRootPart
			local targetHRP = target.Character.HumanoidRootPart
			local direction = (targetHRP.Position - myHRP.Position).Unit
			char.Humanoid:Move(direction, false)
		end
	end)
end

local function stopFollowing()
	if followConnection then
		followConnection:Disconnect()
		followConnection = nil
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
