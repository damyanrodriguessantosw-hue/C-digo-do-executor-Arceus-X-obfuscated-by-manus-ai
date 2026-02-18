--[[
    Project 1xFe Admin Edition [SUPER LITE & STABLE]
    Dono: Robloxiank1p2b2k2t3
    Proteção Nível 2 (Hardened)
]]

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local OwnerName = "Robloxiank1p2b2k2t3"
local Admins = {OwnerName}

-- Proteção Universal para CoreGui
local function get_parent()
    local success, parent = pcall(function() return game:GetService("CoreGui") end)
    if success and parent then return parent end
    return LocalPlayer:WaitForChild("PlayerGui")
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "1xFe_Universal_Lite"
ScreenGui.Parent = get_parent()
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.Position = UDim2.new(0.5, -175, 0.5, -125)
MainFrame.Size = UDim2.new(0, 350, 0, 250)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ClipsDescendants = true

local function add_corner(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius or 10)
    corner.Parent = parent
end
add_corner(MainFrame, 10)

-- Barra de Título
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TitleBar.Size = UDim2.new(1, 0, 0, 35)

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = TitleBar
TitleLabel.BackgroundTransparency = 1
TitleLabel.Position = UDim2.new(0.12, 0, 0, 0)
TitleLabel.Size = UDim2.new(0.5, 0, 1, 0)
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.Text = "executor project 1xFe"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 16
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

local MenuBtn = Instance.new("TextButton")
MenuBtn.Name = "MenuBtn"
MenuBtn.Parent = TitleBar
MenuBtn.BackgroundTransparency = 1
MenuBtn.Position = UDim2.new(0.02, 0, 0, 0)
MenuBtn.Size = UDim2.new(0, 30, 1, 0)
MenuBtn.Font = Enum.Font.SourceSansBold
MenuBtn.Text = "≡"
MenuBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MenuBtn.TextSize = 24

local ControlButtons = Instance.new("Frame")
ControlButtons.Name = "ControlButtons"
ControlButtons.Parent = TitleBar
ControlButtons.BackgroundTransparency = 1
ControlButtons.Position = UDim2.new(0.7, 0, 0, 0)
ControlButtons.Size = UDim2.new(0.3, 0, 1, 0)

local CloseBtn = Instance.new("TextButton")
CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = ControlButtons
CloseBtn.BackgroundTransparency = 1
CloseBtn.Position = UDim2.new(0.66, 0, 0, 0)
CloseBtn.Size = UDim2.new(0.33, 0, 1, 0)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 50, 50)
CloseBtn.TextSize = 18
CloseBtn.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)

local FullBtn = Instance.new("TextButton")
FullBtn.Name = "FullBtn"
FullBtn.Parent = ControlButtons
FullBtn.BackgroundTransparency = 1
FullBtn.Position = UDim2.new(0.33, 0, 0, 0)
FullBtn.Size = UDim2.new(0.33, 0, 1, 0)
FullBtn.Text = "⬛"
FullBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
FullBtn.TextSize = 14

local MinBtn = Instance.new("TextButton")
MinBtn.Name = "MinBtn"
MinBtn.Parent = ControlButtons
MinBtn.BackgroundTransparency = 1
MinBtn.Position = UDim2.new(0, 0, 0, 0)
MinBtn.Size = UDim2.new(0.33, 0, 1, 0)
MinBtn.Text = "—"
MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MinBtn.TextSize = 18

local ContentFrame = Instance.new("Frame")
ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundTransparency = 1
ContentFrame.Position = UDim2.new(0, 0, 0.14, 0)
ContentFrame.Size = UDim2.new(1, 0, 0.86, 0)

-- Aba Editor
local EditorTab = Instance.new("Frame")
EditorTab.Name = "EditorTab"
EditorTab.Parent = ContentFrame
EditorTab.BackgroundTransparency = 1
EditorTab.Size = UDim2.new(1, 0, 1, 0)
EditorTab.Visible = true

local EditorBox = Instance.new("Frame")
EditorBox.Parent = EditorTab
EditorBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
EditorBox.Position = UDim2.new(0.05, 0, 0.05, 0)
EditorBox.Size = UDim2.new(0.9, 0, 0.65, 0)
EditorBox.ClipsDescendants = true
add_corner(EditorBox, 5)

local ScriptBox = Instance.new("TextBox")
ScriptBox.Parent = EditorBox
ScriptBox.BackgroundTransparency = 1
ScriptBox.Size = UDim2.new(1, 0, 1, 0)
ScriptBox.ClearTextOnFocus = false
ScriptBox.Font = Enum.Font.Code
ScriptBox.MultiLine = true
ScriptBox.PlaceholderText = "-- Cole seu script aqui..."
ScriptBox.Text = ""
ScriptBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptBox.TextSize = 14
ScriptBox.TextXAlignment = Enum.TextXAlignment.Left
ScriptBox.TextYAlignment = Enum.TextYAlignment.Top
ScriptBox.ZIndex = 2

local HighlightLabel = Instance.new("TextLabel")
HighlightLabel.Parent = EditorBox
HighlightLabel.BackgroundTransparency = 1
HighlightLabel.Size = UDim2.new(1, 0, 1, 0)
HighlightLabel.Font = Enum.Font.Code
HighlightLabel.Text = ""
HighlightLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
HighlightLabel.TextSize = 14
HighlightLabel.TextXAlignment = Enum.TextXAlignment.Left
HighlightLabel.TextYAlignment = Enum.TextYAlignment.Top
HighlightLabel.RichText = true
HighlightLabel.ZIndex = 1

local ExecuteNormal = Instance.new("TextButton")
ExecuteNormal.Parent = EditorTab
ExecuteNormal.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ExecuteNormal.Position = UDim2.new(0.05, 0, 0.75, 0)
ExecuteNormal.Size = UDim2.new(0.28, 0, 0, 35)
ExecuteNormal.Text = "Normal"
ExecuteNormal.TextColor3 = Color3.fromRGB(255, 255, 255)
add_corner(ExecuteNormal, 5)

local ExecuteFE = Instance.new("TextButton")
ExecuteFE.Parent = EditorTab
ExecuteFE.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
ExecuteFE.Position = UDim2.new(0.36, 0, 0.75, 0)
ExecuteFE.Size = UDim2.new(0.28, 0, 0, 35)
ExecuteFE.Text = "Execute FE"
ExecuteFE.TextColor3 = Color3.fromRGB(255, 255, 255)
add_corner(ExecuteFE, 5)

local ClearButton = Instance.new("TextButton")
ClearButton.Parent = EditorTab
ClearButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
ClearButton.Position = UDim2.new(0.67, 0, 0.75, 0)
ClearButton.Size = UDim2.new(0.28, 0, 0, 35)
ClearButton.Text = "Clear"
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
add_corner(ClearButton, 5)

-- Aba IA & Créditos
local AITab = Instance.new("Frame")
AITab.Name = "AITab"
AITab.Parent = ContentFrame
AITab.BackgroundTransparency = 1
AITab.Size = UDim2.new(1, 0, 1, 0)
AITab.Visible = false

local AIInput = Instance.new("TextBox")
AIInput.Parent = AITab
AIInput.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
AIInput.Position = UDim2.new(0.05, 0, 0.02, 0)
AIInput.Size = UDim2.new(0.9, 0, 0, 30)
AIInput.PlaceholderText = "O que você quer que a IA faça?"
AIInput.Text = ""
AIInput.TextColor3 = Color3.fromRGB(255, 255, 255)
add_corner(AIInput, 5)

local AIResponse = Instance.new("TextLabel")
AIResponse.Parent = AITab
AIResponse.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
AIResponse.Position = UDim2.new(0.05, 0, 0.18, 0)
AIResponse.Size = UDim2.new(0.9, 0, 0, 60)
AIResponse.Text = "IA: Olá! Como posso te ajudar com scripts hoje?"
AIResponse.TextColor3 = Color3.fromRGB(200, 200, 200)
AIResponse.TextWrapped = true
AIResponse.TextYAlignment = Enum.TextYAlignment.Top
AIResponse.TextSize = 12
add_corner(AIResponse, 5)

local AskAI = Instance.new("TextButton")
AskAI.Parent = AITab
AskAI.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
AskAI.Position = UDim2.new(0.3, 0, 0.48, 0)
AskAI.Size = UDim2.new(0.4, 0, 0, 25)
AskAI.Text = "Perguntar à IA"
AskAI.TextColor3 = Color3.fromRGB(255, 255, 255)
AskAI.TextSize = 12
add_corner(AskAI, 5)

local CreditsFrame = Instance.new("Frame")
CreditsFrame.Parent = AITab
CreditsFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CreditsFrame.Position = UDim2.new(0.05, 0, 0.62, 0)
CreditsFrame.Size = UDim2.new(0.9, 0, 0.35, 0)
add_corner(CreditsFrame, 8)

local FriendImage = Instance.new("ImageLabel")
FriendImage.Parent = CreditsFrame
FriendImage.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
FriendImage.Position = UDim2.new(0.05, 0, 0.1, 0)
FriendImage.Size = UDim2.new(0, 50, 0, 50)
add_corner(FriendImage, 25)

pcall(function()
    local userId = game:GetService("Players"):GetUserIdFromNameAsync("d00fkidd")
    local thumbType = Enum.ThumbnailType.HeadShot
    local thumbSize = Enum.ThumbnailSize.Size100x100
    local content, isReady = game:GetService("Players"):GetUserThumbnailAsync(userId, thumbType, thumbSize)
    FriendImage.Image = content
end)

local YTLabel = Instance.new("TextLabel")
YTLabel.Parent = CreditsFrame
YTLabel.BackgroundTransparency = 1
YTLabel.Position = UDim2.new(0.25, 0, 0.1, 0)
YTLabel.Size = UDim2.new(0.7, 0, 0.4, 0)
YTLabel.Font = Enum.Font.SourceSansBold
YTLabel.Text = "YouTube: wrickdamyanRodrigues"
YTLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
YTLabel.TextSize = 14
YTLabel.TextXAlignment = Enum.TextXAlignment.Left

local FriendLabel = Instance.new("TextLabel")
FriendLabel.Parent = CreditsFrame
FriendLabel.BackgroundTransparency = 1
FriendLabel.Position = UDim2.new(0.25, 0, 0.5, 0)
FriendLabel.Size = UDim2.new(0.7, 0, 0.4, 0)
FriendLabel.Font = Enum.Font.SourceSans
FriendLabel.Text = "Amigo: d00fkidd"
FriendLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FriendLabel.TextSize = 14
FriendLabel.TextXAlignment = Enum.TextXAlignment.Left

-- Aba Admin (Exclusiva)
local AdminTab = Instance.new("ScrollingFrame")
AdminTab.Name = "AdminTab"
AdminTab.Parent = ContentFrame
AdminTab.BackgroundTransparency = 1
AdminTab.Size = UDim2.new(1, 0, 1, 0)
AdminTab.Visible = false
AdminTab.CanvasSize = UDim2.new(0, 0, 2, 0)
AdminTab.ScrollBarThickness = 5

local function create_admin_cmd(name, placeholder, callback)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.9, 0, 0, 60)
    frame.BackgroundTransparency = 1
    frame.Parent = AdminTab
    
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.4, 0, 0, 30)
    btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Parent = frame
    add_corner(btn, 5)
    
    local box = nil
    if placeholder then
        box = Instance.new("TextBox")
        box.Size = UDim2.new(0.55, 0, 0, 30)
        box.Position = UDim2.new(0.45, 0, 0, 0)
        box.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        box.PlaceholderText = placeholder
        box.Text = ""
        box.TextColor3 = Color3.fromRGB(255, 255, 255)
        box.Parent = frame
        add_corner(box, 5)
    end
    
    btn.MouseButton1Click:Connect(function()
        callback(box and box.Text or nil)
    end)
    
    return frame
end

local admin_layout = Instance.new("UIListLayout")
admin_layout.Parent = AdminTab
admin_layout.Padding = UDim.new(0, 10)
admin_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- Comandos de Admin
create_admin_cmd("Kick", "Username", function(txt)
    local target = game:GetService("Players"):FindFirstChild(txt)
    if target then target:Kick("Expulso pelo Admin 1xFe") end
end)

create_admin_cmd("Kill", "Username", function(txt)
    local target = game:GetService("Players"):FindFirstChild(txt)
    if target and target.Character then target.Character:BreakJoints() end
end)

create_admin_cmd("Message", "Sua mensagem", function(txt)
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {Text = "[GLOBAL]: " .. txt, Color = Color3.fromRGB(255, 255, 0)})
end)

create_admin_cmd("Hint", "Texto do Hint", function(txt)
    local hint = Instance.new("Hint")
    hint.Parent = workspace
    hint.Text = "_______________________________ " .. txt .. " _______________________________"
    task.wait(5)
    hint:Destroy()
end)

create_admin_cmd("Duck", "Username", function(txt)
    local target = game:GetService("Players"):FindFirstChild(txt)
    if target and target.Character then
        for _, v in pairs(target.Character:GetChildren()) do
            if v:IsA("BasePart") then v.Color = Color3.fromRGB(255, 255, 0) end
        end
    end
end)

create_admin_cmd("Spawn Dummy", nil, function()
    local d = Instance.new("Model", workspace)
    d.Name = "Dummy_1xFe"
    local p = Instance.new("Part", d)
    p.Name = "Head"
    p.Size = Vector3.new(2, 2, 2)
    p.Position = LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
end)

create_admin_cmd("Dar Admin", "Username", function(txt)
    if txt and txt ~= "" then
        table.insert(Admins, txt)
        print("Admin concedido para: " .. txt)
    end
end)

-- Lógica de Syntax Highlighting
local lua_keywords = {"local", "function", "if", "then", "else", "elseif", "end", "for", "while", "do", "return", "nil", "true", "false", "not", "and", "or"}
local function highlight(text)
    local highlighted = text:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;")
    for _, word in ipairs(lua_keywords) do
        highlighted = highlighted:gsub("%f[%a]"..word.."%f[%A]", '<font color="rgb(255, 120, 120)">'..word..'</font>')
    end
    highlighted = highlighted:gsub("%d+", '<font color="rgb(255, 200, 100)">%0</font>')
    highlighted = highlighted:gsub('"[^"]*"', '<font color="rgb(120, 255, 120)">%0</font>')
    highlighted = highlighted:gsub("'[^']*'", '<font color="rgb(120, 255, 120)">%0</font>')
    highlighted = highlighted:gsub("%-%-.*", '<font color="rgb(100, 100, 100)">%0</font>')
    return highlighted
end
ScriptBox:GetPropertyChangedSignal("Text"):Connect(function() HighlightLabel.Text = highlight(ScriptBox.Text) end)

-- Funcionalidades dos Botões de Controle
local minimized = false
MinBtn.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        ContentFrame.Visible = false
        MainFrame:TweenSize(UDim2.new(0, 350, 0, 35), "Out", "Quad", 0.3, true)
    else
        MainFrame:TweenSize(UDim2.new(0, 350, 0, 250), "Out", "Quad", 0.3, true)
        task.wait(0.3)
        ContentFrame.Visible = true
    end
end)

local full = false
FullBtn.MouseButton1Click:Connect(function()
    full = not full
    if full then
        MainFrame:TweenSize(UDim2.new(1, 0, 1, 0), "Out", "Quad", 0.3, true)
        MainFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.3, true)
    else
        MainFrame:TweenSize(UDim2.new(0, 350, 0, 250), "Out", "Quad", 0.3, true)
        MainFrame:TweenPosition(UDim2.new(0.5, -175, 0.5, -125), "Out", "Quad", 0.3, true)
    end
end)

-- Lógica do Menu Lateral
local current_tab = 1
MenuBtn.MouseButton1Click:Connect(function()
    local is_admin = false
    for _, name in pairs(Admins) do if LocalPlayer.Name == name then is_admin = true end end
    
    current_tab = current_tab + 1
    if current_tab > (is_admin and 3 or 2) then current_tab = 1 end
    
    EditorTab.Visible = (current_tab == 1)
    AITab.Visible = (current_tab == 2)
    AdminTab.Visible = (current_tab == 3)
    
    if current_tab == 1 then TitleLabel.Text = "executor project 1xFe"
    elseif current_tab == 2 then TitleLabel.Text = "executor project 1xFe [AI & Credits]"
    elseif current_tab == 3 then TitleLabel.Text = "executor project 1xFe [ADMIN PANEL]" end
end)

-- Funções de Execução
ExecuteNormal.MouseButton1Click:Connect(function()
    local code = ScriptBox.Text
    if code ~= "" then
        local success, func = pcall(function() return loadstring(code) end)
        if success and func then pcall(func) end
    end
end)

ExecuteFE.MouseButton1Click:Connect(function()
    local code = ScriptBox.Text
    if code == "" then return end
    pcall(function()
        local found = false
        for _, obj in pairs(game:GetDescendants()) do
            if obj:IsA("RemoteEvent") and (obj.Name:lower():find("ugc") or obj.Name:lower():find("asset")) then
                if tonumber(code) then obj:FireServer("require("..code..").load('"..LocalPlayer.Name.."')")
                else obj:FireServer(code) end
                found = true
            end
        end
        if not found then 
            local success, func = pcall(function() return loadstring(code) end)
            if success and func then pcall(func) end
        end
    end)
end)

ClearButton.MouseButton1Click:Connect(function() ScriptBox.Text = "" end)

print("Project 1xFe Super Lite Carregado!")
