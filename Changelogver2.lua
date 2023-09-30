local player = game.Players.LocalPlayer

local clickSoundId = "rbxassetid://6732690176"
local clickSound = Instance.new("Sound")
clickSound.SoundId = clickSoundId
clickSound.Parent = game.Workspace

local gui = Instance.new("ScreenGui")
gui.Name = "MyGUI"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 450)
frame.Position = UDim2.new(0.5647, -100, 0.5, -75)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Parent = gui

local cornerStyle = Instance.new("UICorner")
cornerStyle.CornerRadius = UDim.new(0, 10)
cornerStyle.Parent = frame

local MyLabel = Instance.new("TextLabel")
MyLabel.Text = "Changelog"
MyLabel.Size = UDim2.new(1, 0, 0, 30)
MyLabel.Position = UDim2.new(0, 0, 0, 0)
MyLabel.BackgroundTransparency = 1
MyLabel.TextColor3 = Color3.new(1, 1, 1)
MyLabel.TextSize = 30
MyLabel.Font = Enum.Font.SourceSansBold
MyLabel.Parent = frame

local changelogLabel = Instance.new("TextLabel")
changelogLabel.Text = "Changelog"
changelogLabel.Size = UDim2.new(1, 0, 0, 30)
changelogLabel.Position = UDim2.new(0, 0, 0.24, -1)
changelogLabel.BackgroundTransparency = 1
changelogLabel.TextColor3 = Color3.new(1, 1, 1)
changelogLabel.TextSize = 25
changelogLabel.Font = Enum.Font.SourceSansBold
changelogLabel.Parent = frame

local loadchangeloglistlabel = Instance.new("TextLabel")
loadchangeloglistlabel.Text = "[+] New Feature\n[+] Updated Changelog\n[+] Updated To Loadstring\nFor Lastest Updated Without Downloading\n(expect new version like SX X.1)"
loadchangeloglistlabel.Size = UDim2.new(0.9, 0, 0.5, 0)
loadchangeloglistlabel.Position = UDim2.new(0.05, 0, 0.25, 0)
loadchangeloglistlabel.BackgroundTransparency = 1
loadchangeloglistlabel.TextColor3 = Color3.new(1, 1, 1)
loadchangeloglistlabel.TextSize = 20
loadchangeloglistlabel.Font = Enum.Font.SourceSansBold
loadchangeloglistlabel.TextWrapped = true
loadchangeloglistlabel.Parent = frame

local loadupdatelabel = Instance.new("TextLabel")
loadupdatelabel.Text = "Currently Version: V.1.1!"
loadupdatelabel.Size = UDim2.new(1, 0, 0, 30)
loadupdatelabel.Position = UDim2.new(0, 0, 0, 385)
loadupdatelabel.BackgroundTransparency = 1
loadupdatelabel.TextColor3 = Color3.new(1, 1, 1)
loadupdatelabel.TextSize = 16
loadupdatelabel.Font = Enum.Font.SourceSansBold
loadupdatelabel.Parent = frame

local closeButton = Instance.new("TextButton")
closeButton.Text = "X"
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundTransparency = 1
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 20
closeButton.Parent = frame

local function closeGui()
    clickSound:Play()
    gui:Destroy()
end

closeButton.MouseButton1Click:Connect(closeGui)

if player then
    local username = player.Name
    local userLabel = Instance.new("TextLabel")
    userLabel.Text = "Welcome " .. username .. "!"   
    userLabel.Size = UDim2.new(1, 0, 0, 30)
    userLabel.Position = UDim2.new(0, 0, 0.10, -3)
    userLabel.BackgroundTransparency = 1
    userLabel.TextColor3 = Color3.new(1, 1, 1)
    userLabel.TextSize = 24
    userLabel.Font = Enum.Font.SourceSansBold
    userLabel.Parent = frame
end

local infoButton = Instance.new("TextButton")
infoButton.Text = "More"
infoButton.Size = UDim2.new(0, 100, 0, 30)
infoButton.Position = UDim2.new(0, 10, 1, -40)
infoButton.BackgroundColor3 = Color3.new(0, 0, 0)
infoButton.BackgroundTransparency = 1
infoButton.TextColor3 = Color3.new(1, 1, 1)
infoButton.Font = Enum.Font.SourceSansBold
infoButton.TextSize = 17
infoButton.Parent = frame

local infoGui = Instance.new("Frame")
infoGui.Size = UDim2.new(0, 300, 0, 300)
infoGui.Position = UDim2.new(0.58, 100, 0.3, -75)
infoGui.BackgroundColor3 = Color3.new(0, 0, 0)
infoGui.BackgroundTransparency = 0.5
infoGui.BorderSizePixel = 0
infoGui.ClipsDescendants = true
infoGui.Visible = false
infoGui.Parent = gui

local cornerStyle2 = Instance.new("UICorner")
cornerStyle2.CornerRadius = UDim.new(0, 10)
cornerStyle2.Parent = infoGui

local closeButton2 = Instance.new("TextButton")
closeButton2.Text = "X"
closeButton2.Size = UDim2.new(0, 30, 0, 30)
closeButton2.Position = UDim2.new(1, -30, 0, 0)
closeButton2.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton2.BackgroundTransparency = 1
closeButton2.TextColor3 = Color3.new(1, 1, 1)
closeButton2.Font = Enum.Font.SourceSansBold
closeButton2.TextSize = 20
closeButton2.Parent = infoGui

closeButton2.MouseButton1Click:Connect(function()
    clickSound:Play()
    infoGui:Destroy()
end)

local infoLabel = Instance.new("TextLabel")
infoLabel.Text = "Old Update ChangeLog"
infoLabel.Size = UDim2.new(1, 0, 1, 0)
infoLabel.Position = UDim2.new(0, 0, -0.43, -1)
infoLabel.BackgroundColor3 = Color3.new(0, 0, 0)
infoLabel.BackgroundTransparency = 1
infoLabel.BorderSizePixel = 0
infoLabel.TextColor3 = Color3.new(1, 1, 1)
infoLabel.Font = Enum.Font.SourceSansBold
infoLabel.TextSize = 22
infoLabel.Parent = infoGui

local textinfoLabel = Instance.new("TextLabel")
textinfoLabel.Text = "[+] New Changelog\n[+] Best Features"
textinfoLabel.Size = UDim2.new(1, 0, 1, 0)
textinfoLabel.Position = UDim2.new(0, 0.5, 0, -1)
textinfoLabel.BackgroundColor3 = Color3.new(0, 0, 0)
textinfoLabel.BackgroundTransparency = 1
textinfoLabel.BorderSizePixel = 0
textinfoLabel.TextColor3 = Color3.new(1, 1, 1)
textinfoLabel.Font = Enum.Font.SourceSansBold
textinfoLabel.TextSize = 16
textinfoLabel.Parent = infoGui

closeButton2.MouseButton1Click:Connect(function()
    infoGui.Visible = false
    clickSound:Play()
end)

infoButton.MouseButton1Click:Connect(function()
    infoGui.Visible = not infoGui.Visible
    clickSound:Play()
end)
