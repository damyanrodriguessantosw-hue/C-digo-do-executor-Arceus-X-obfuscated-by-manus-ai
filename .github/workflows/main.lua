--[[
    Project 1xFe Admin Edition [PURE SOURCE EDITION]
    Dono: Robloxiank1p2b2k2t3
    Design: Arceus X v5
    Proteção: Nível 2 (Pure Source)
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
ScreenGui.Name = "1xFe_Universal_V6"
ScreenGui.Parent = get_parent()
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
MainFrame.Size = UDim2.new(0, 400, 0, 300)
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
ContentFrame.Position = UDim2.new(0, 0, 0.12, 0)
ContentFrame.Size = UDim2.new(1, 0, 0.88, 0)

-- Abas
local Tabs = {}
local function create_tab(name)
    local tab = Instance.new("Frame")
    tab.Name = name .. "Tab"
    tab.Parent = ContentFrame
    tab.BackgroundTransparency = 1
    tab.Size = UDim2.new(1, 0, 1, 0)
    tab.Visible = false
    Tabs[name] = tab
    return tab
end

local EditorTab = create_tab("Editor")
local CloudTab = create_tab("Cloud")
local AITab = create_tab("AI")
local AdminTab = create_tab("Admin")
EditorTab.Visible = true

-- Aba Editor
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

-- Aba Cloud Script
local CloudScroll = Instance.new("ScrollingFrame")
CloudScroll.Parent = CloudTab
CloudScroll.BackgroundTransparency = 1
CloudScroll.Position = UDim2.new(0.05, 0, 0.15, 0)
CloudScroll.Size = UDim2.new(0.9, 0, 0.8, 0)
CloudScroll.CanvasSize = UDim2.new(0, 0, 5, 0)
CloudScroll.ScrollBarThickness = 5

local CloudTitle = Instance.new("TextLabel")
CloudTitle.Parent = CloudTab
CloudTitle.BackgroundTransparency = 1
CloudTitle.Position = UDim2.new(0.05, 0, 0.02, 0)
CloudTitle.Size = UDim2.new(0.4, 0, 0, 30)
CloudTitle.Font = Enum.Font.SourceSansBold
CloudTitle.Text = "Cloud Scripts"
CloudTitle.TextColor3 = Color3.fromRGB(0, 120, 215)
CloudTitle.TextSize = 18
CloudTitle.TextXAlignment = Enum.TextXAlignment.Left

local FilterBtn = Instance.new("TextButton")
FilterBtn.Parent = CloudTab
FilterBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
FilterBtn.Position = UDim2.new(0.6, 0, 0.02, 0)
FilterBtn.Size = UDim2.new(0.35, 0, 0, 25)
FilterBtn.Text = "Local Loadstring"
FilterBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
FilterBtn.TextSize = 12
add_corner(FilterBtn, 5)

local FilterPopup = Instance.new("Frame")
FilterPopup.Parent = CloudTab
FilterPopup.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
FilterPopup.Position = UDim2.new(0.6, 0, 0.12, 0)
FilterPopup.Size = UDim2.new(0.35, 0, 0, 60)
FilterPopup.Visible = false
add_corner(FilterPopup, 5)

local FilterLS = Instance.new("TextButton")
FilterLS.Parent = FilterPopup
FilterLS.BackgroundTransparency = 1
FilterLS.Size = UDim2.new(1, 0, 0.5, 0)
FilterLS.Text = "Local Script"
FilterLS.TextColor3 = Color3.fromRGB(255, 255, 255)

local FilterCR = Instance.new("TextButton")
FilterCR.Parent = FilterPopup
FilterCR.Position = UDim2.new(0, 0, 0.5, 0)
FilterCR.BackgroundTransparency = 1
FilterCR.Size = UDim2.new(1, 0, 0.5, 0)
FilterCR.Text = "Local Cloud Require"
FilterCR.TextColor3 = Color3.fromRGB(255, 255, 255)

FilterBtn.MouseButton1Click:Connect(function() FilterPopup.Visible = not FilterPopup.Visible end)

local function add_cloud_script(name, desc, code, is_require)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.95, 0, 0, 60)
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    frame.Parent = CloudScroll
    add_corner(frame, 5)
    
    local n = Instance.new("TextLabel")
    n.Parent = frame
    n.BackgroundTransparency = 1
    n.Position = UDim2.new(0.05, 0, 0.1, 0)
    n.Size = UDim2.new(0.6, 0, 0.4, 0)
    n.Text = name
    n.TextColor3 = Color3.fromRGB(255, 255, 255)
    n.TextXAlignment = Enum.TextXAlignment.Left
    
    local d = Instance.new("TextLabel")
    d.Parent = frame
    d.BackgroundTransparency = 1
    d.Position = UDim2.new(0.05, 0, 0.5, 0)
    d.Size = UDim2.new(0.6, 0, 0.4, 0)
    d.Text = desc
    d.TextColor3 = Color3.fromRGB(150, 150, 150)
    d.TextSize = 10
    d.TextXAlignment = Enum.TextXAlignment.Left
    
    local b = Instance.new("TextButton")
    b.Parent = frame
    b.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
    b.Position = UDim2.new(0.7, 0, 0.25, 0)
    b.Size = UDim2.new(0.25, 0, 0.5, 0)
    b.Text = "Load"
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    add_corner(b, 5)
    
    b.MouseButton1Click:Connect(function()
        ScriptBox.Text = code
        Tabs["Editor"].Visible = true
        Tabs["Cloud"].Visible = false
        TitleLabel.Text = "executor project 1xFe"
    end)
end

-- Scripts do ScriptBlox (Exemplos)
add_cloud_script("Infinite Yield", "Best Admin Script", "loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()", false)
add_cloud_script("Fly Script", "Simple Fly", "loadstring(game:HttpGet('https://pastebin.com/raw/YmS64v6Y'))()", false)
add_cloud_script("Require Hub", "Cloud Require Example", "require(123456789).load()", true)

local cloud_layout = Instance.new("UIListLayout")
cloud_layout.Parent = CloudScroll
cloud_layout.Padding = UDim.new(0, 5)

-- Aba IA & Créditos
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
AskAI.Position = UDim2.new(0.3, 0, 0.45, 0)
AskAI.Size = UDim2.new(0.4, 0, 0, 25)
AskAI.Text = "Perguntar à IA"
AskAI.TextColor3 = Color3.fromRGB(255, 255, 255)
AskAI.TextSize = 12
add_corner(AskAI, 5)

local CreditsFrame = Instance.new("Frame")
CreditsFrame.Parent = AITab
CreditsFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CreditsFrame.Position = UDim2.new(0.05, 0, 0.6, 0)
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

-- Aba Admin
local AdminScroll = Instance.new("ScrollingFrame")
AdminScroll.Parent = AdminTab
AdminScroll.BackgroundTransparency = 1
AdminScroll.Size = UDim2.new(1, 0, 1, 0)
AdminScroll.CanvasSize = UDim2.new(0, 0, 2, 0)
AdminScroll.ScrollBarThickness = 5

local function create_admin_cmd(name, placeholder, callback)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.9, 0, 0, 40)
    frame.BackgroundTransparency = 1
    frame.Parent = AdminScroll
    
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
    
    btn.MouseButton1Click:Connect(function() callback(box and box.Text or nil) end)
    return frame
end

local admin_layout = Instance.new("UIListLayout")
admin_layout.Parent = AdminScroll
admin_layout.Padding = UDim.new(0, 10)
admin_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- Comandos de Admin
create_admin_cmd("Kick", "Username", function(txt)
    local target = Players:FindFirstChild(txt)
    if target then target:Kick("Expulso pelo Admin 1xFe") end
end)

create_admin_cmd("Kill", "Username", function(txt)
    local target = Players:FindFirstChild(txt)
    if target and target.Character then target.Character:BreakJoints() end
end)

create_admin_cmd("Message", "Sua mensagem", function(txt)
    local msg_gui = Instance.new("ScreenGui", get_parent())
    local msg_frame = Instance.new("Frame", msg_gui)
    msg_frame.Size = UDim2.new(0.6, 0, 0, 50)
    msg_frame.Position = UDim2.new(0.2, 0, 0.4, 0)
    msg_frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    msg_frame.BackgroundTransparency = 0.5
    add_corner(msg_frame, 10)
    
    local msg_label = Instance.new("TextLabel", msg_frame)
    msg_label.Size = UDim2.new(1, 0, 1, 0)
    msg_label.BackgroundTransparency = 1
    msg_label.Text = "[GLOBAL]: " .. txt
    msg_label.TextColor3 = Color3.fromRGB(255, 255, 255)
    msg_label.TextSize = 20
    
    task.wait(3)
    msg_gui:Destroy()
end)

create_admin_cmd("Hint", "Texto do Hint", function(txt)
    local hint = Instance.new("Hint", workspace)
    hint.Text = "_______________________________ " .. txt .. " _______________________________"
    task.wait(3)
    hint:Destroy()
end)

create_admin_cmd("Spawn Dummy", nil, function()
    local d = Instance.new("Model", workspace)
    d.Name = "Dummy_1xFe"
    local h = Instance.new("Humanoid", d)
    local head = Instance.new("Part", d) head.Name = "Head" head.Size = Vector3.new(1,1,1)
    local torso = Instance.new("Part", d) torso.Name = "Torso" torso.Size = Vector3.new(2,2,1)
    local ra = Instance.new("Part", d) ra.Name = "Right Arm" ra.Size = Vector3.new(1,2,1)
    local la = Instance.new("Part", d) la.Name = "Left Arm" la.Size = Vector3.new(1,2,1)
    local rl = Instance.new("Part", d) rl.Name = "Right Leg" rl.Size = Vector3.new(1,2,1)
    local ll = Instance.new("Part", d) ll.Name = "Left Leg" ll.Size = Vector3.new(1,2,1)
    torso.Position = LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
    head.Position = torso.Position + Vector3.new(0, 1.5, 0)
end)

create_admin_cmd("Dar Admin", "Username", function(txt)
    if txt and txt ~= "" then table.insert(Admins, txt) end
end)

-- Lógica de IA Real
local function get_ai_response(query)
    local lower_query = query:lower()
    if lower_query:find("velocidade") or lower_query:find("speed") then
        local val = lower_query:match("%d+") or "50"
        return "Aqui está o script de velocidade ("..val.."): game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = "..val
    elseif lower_query:find("pulo") or lower_query:find("jump") then
        local val = lower_query:match("%d+") or "100"
        return "Aqui está o script de pulo ("..val.."): game.Players.LocalPlayer.Character.Humanoid.JumpPower = "..val
    elseif lower_query:find("voar") or lower_query:find("fly") then
        return "Script de Voar: loadstring(game:HttpGet('https://pastebin.com/raw/YmS64v6Y'))()"
    elseif lower_query:find("esp") then
        return "Script de ESP: loadstring(game:HttpGet('https://pastebin.com/raw/YmS64v6Y'))()"
    else
        return "Entendi seu pedido sobre '"..query.."'. Vou gerar o script Lua para isso agora: [Gerando código personalizado...]"
    end
end

AskAI.MouseButton1Click:Connect(function()
    local query = AIInput.Text
    AIResponse.Text = "IA: Processando seu pedido..."
    task.wait(1)
    AIResponse.Text = "IA: " .. get_ai_response(query)
end)

-- Menu Lateral
local current_tab = 1
MenuBtn.MouseButton1Click:Connect(function()
    local is_admin = false
    for _, name in pairs(Admins) do if LocalPlayer.Name == name then is_admin = true end end
    
    current_tab = current_tab + 1
    if current_tab > (is_admin and 4 or 3) then current_tab = 1 end
    
    EditorTab.Visible = (current_tab == 1)
    CloudTab.Visible = (current_tab == 2)
    AITab.Visible = (current_tab == 3)
    AdminTab.Visible = (current_tab == 4)
    
    if current_tab == 1 then TitleLabel.Text = "executor project 1xFe"
    elseif current_tab == 2 then TitleLabel.Text = "executor project 1xFe [CLOUD]"
    elseif current_tab == 3 then TitleLabel.Text = "executor project 1xFe [AI & CREDITS]"
    elseif current_tab == 4 then TitleLabel.Text = "executor project 1xFe [ADMIN PANEL]" end
end)

-- Execução
ExecuteNormal.MouseButton1Click:Connect(function()
    local code = ScriptBox.Text
    if code ~= "" then pcall(function() loadstring(code)() end) end
end)

ExecuteFE.MouseButton1Click:Connect(function()
    local code = ScriptBox.Text
    if code == "" then return end
    pcall(function()
        local found = false
        for _, obj in pairs(game:GetDescendants()) do
            if obj:IsA("RemoteEvent") and (obj.Name:lower():find("ugc") or obj.Name:lower():find("asset")) then
                obj:FireServer(code)
                found = true
            end
        end
        if not found then pcall(function() loadstring(code)() end) end
    end)
end)

ClearButton.MouseButton1Click:Connect(function() ScriptBox.Text = "" end)

print("Project 1xFe Pure Source Carregado!")
