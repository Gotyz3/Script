-- Criar a interface gráfica
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "Snoup Hub"
gui.Parent = player:WaitForChild("PlayerGui")

-- Janela principal (estilizada)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 600, 0, 400) -- Aumentado
mainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
mainFrame.BackgroundColor3 = Color3.fromRGB(240, 240, 240) -- Branco com fundo suave
mainFrame.BorderSizePixel = 0
mainFrame.Active = true -- Necessário para o movimento
mainFrame.Draggable = true -- Torna a interface arrastável
mainFrame.Parent = gui

-- Cantos arredondados para a interface
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 20)  -- Cantos mais arredondados
corner.Parent = mainFrame

-- Sombra suave para o quadro principal
local shadow = Instance.new("Frame")
shadow.Name = "Shadow"
shadow.Size = UDim2.new(1, 10, 1, 10)
shadow.Position = UDim2.new(0, -5, 0, -5)
shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
shadow.BackgroundTransparency = 0.2
shadow.BorderSizePixel = 0
shadow.ZIndex = -1  -- Coloca a sombra atrás do frame principal
shadow.Parent = mainFrame

-- Título
local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 40)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(200, 200, 200) -- Cinza claro para o título
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local titleText = Instance.new("TextLabel")
titleText.Name = "TitleText"
titleText.Size = UDim2.new(1, -40, 1, 0)
titleText.Position = UDim2.new(0, 10, 0, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "Snoup Hub"
titleText.TextColor3 = Color3.fromRGB(50, 50, 50) -- Cor mais suave para o texto
titleText.TextSize = 20
titleText.Font = Enum.Font.SourceSansBold
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.Parent = titleBar

-- Botão de Minimizar
local minimizeButton = Instance.new("TextButton")
minimizeButton.Name = "MinimizeButton"
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -35, 0, 5)  -- Ajuste a posição para que ele esteja no canto superior direito
minimizeButton.AnchorPoint = Vector2.new(1, 0)  -- Ajuste o ponto de ancoragem para o canto direito superior
minimizeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100) -- Cinza escuro para o botão
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.TextSize = 20
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.Parent = titleBar

local minimizeCorner = Instance.new("UICorner")
minimizeCorner.CornerRadius = UDim.new(0, 10)  -- Cantos mais arredondados no botão
minimizeCorner.Parent = minimizeButton

-- Menu lateral (estilizado)
local menuFrame = Instance.new("ScrollingFrame")
menuFrame.Name = "MenuFrame"
menuFrame.Size = UDim2.new(0, 150, 1, -50)
menuFrame.Position = UDim2.new(0, 0, 0, 50)
menuFrame.BackgroundColor3 = Color3.fromRGB(230, 230, 230) -- Cinza muito claro
menuFrame.BorderSizePixel = 0
menuFrame.ScrollBarThickness = 5
menuFrame.Parent = mainFrame

local menuCorner = Instance.new("UICorner")
menuCorner.CornerRadius = UDim.new(0, 20)  -- Cantos arredondados no menu
menuCorner.Parent = menuFrame

local menuLayout = Instance.new("UIListLayout")
menuLayout.SortOrder = Enum.SortOrder.LayoutOrder
menuLayout.Padding = UDim.new(0, 10)
menuLayout.Parent = menuFrame

-- Área principal (estilizada)
local contentFrame = Instance.new("Frame")
contentFrame.Name = "ContentFrame"
contentFrame.Size = UDim2.new(1, -160, 1, -50)
contentFrame.Position = UDim2.new(0, 160, 0, 50)
contentFrame.BackgroundColor3 = Color3.fromRGB(240, 240, 240) -- Branco suave
contentFrame.BorderSizePixel = 0
contentFrame.Parent = mainFrame

local contentCorner = Instance.new("UICorner")
contentCorner.CornerRadius = UDim.new(0, 20)  -- Cantos arredondados na área de conteúdo
contentCorner.Parent = contentFrame

-- Tabela de abas e scripts
local tabs = {
    ["Blox Fruits"] = {
        {Name = "Hoho Hub", Script = "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"},
        {Name = "OP GUI", Script = "https://nicuse.xyz/MainHub.lua"},
        {Name = "Dead Hub", Script = "https://raw.githubusercontent.com/Deadhub0/Blox-fruits/refs/heads/main/Script"},
        {Name = "Solix Hub", Script = "https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"},
        {Name = "Relz Hub", Script = "https://raw.githubusercontent.com/farghii/relzhub/main/execute.hack"},
    },
    ["Blue Lock Rivals"] = {
        {Name = "NS HUB", Script = "https://raw.githubusercontent.com/Mc4121ban/RobloxScirpt/refs/heads/main/ScriptHub"},
        {Name = "Rinn Hub", Script = "https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"},
    },
    ["Anime Shadow"] = {
        {Name = "ZardoX", Script = "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"},
    },
    ["Jujutsu Infinite"] = {
        {Name = "NS HUB", Script = "https://raw.githubusercontent.com/OhhMyGehlee/Infinite/refs/heads/main/All"},
        {Name = "Black Hub | Kill All", Script = "https://rawscripts.net/raw/RELEASE-Jujutsu-Infinite-Insta-kill-all-mobs-25282"},
    },
    ["Murder Mystery"] = {
        {Name = "Solix Hub", Script = "https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"},
    },
    ["FISCH"] = {
        {Name = "Forge Hub", Script = "https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"},
        {Name = "OP HUB", Script = "https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.lua"},
    },
}

-- Função para criar abas
local function createTabs()
    for tabName, scripts in pairs(tabs) do
        local button = Instance.new("TextButton")
        button.Name = tabName .. "Button"
        button.Size = UDim2.new(1, -10, 0, 40)
        button.BackgroundColor3 = Color3.fromRGB(210, 210, 210)  -- Cor mais clara para os botões
        button.Text = tabName
        button.TextColor3 = Color3.fromRGB(50, 50, 50)  -- Cor de texto suave
        button.TextSize = 16
        button.Font = Enum.Font.SourceSansBold
        button.BorderSizePixel = 0
        button.Parent = menuFrame

        local buttonCorner = Instance.new("UICorner")
        buttonCorner.CornerRadius = UDim.new(0, 10)  -- Cantos arredondados nos botões
        buttonCorner.Parent = button

        button.MouseButton1Click:Connect(function()
            -- Limpar conteúdo anterior ao trocar de aba
            for _, child in ipairs(contentFrame:GetChildren()) do
                child:Destroy()
            end

            -- Adicionar novos botões para os scripts da aba selecionada
            for _, script in ipairs(scripts) do
                local scriptButton = Instance.new("TextButton")
                scriptButton.Name = script.Name .. "Button"
                scriptButton.Size = UDim2.new(0, 200, 0, 40)
                scriptButton.Position = UDim2.new(0, 10, 0, (#contentFrame:GetChildren() * 45) + 10) -- Ajuste de posição
                scriptButton.BackgroundColor3 = Color3.fromRGB(220, 220, 220) -- Cor suave para os botões de script
                scriptButton.Text = script.Name
                scriptButton.TextColor3 = Color3.fromRGB(50, 50, 50)  -- Cor de texto suave
                scriptButton.TextSize = 14
                scriptButton.Font = Enum.Font.SourceSansBold
                scriptButton.Parent = contentFrame

                local scriptCorner = Instance.new("UICorner")
                scriptCorner.CornerRadius = UDim.new(0, 10)  -- Cantos arredondados nos botões de script
                scriptCorner.Parent = scriptButton

                scriptButton.MouseButton1Click:Connect(function()
                    loadstring(game:HttpGet(script.Script))()
                end)
            end
        end)
    end
end

-- Criar abas
createTabs()

-- Função para minimizar a interface
local isMinimized = false
minimizeButton.MouseButton1Click:Connect(function()
    if isMinimized then
        mainFrame.Size = UDim2.new(0, 600, 0, 400)
        menuFrame.Visible = true
        contentFrame.Visible = true
        isMinimized = false
    else
        mainFrame.Size = UDim2.new(0, 600, 0, 40)
        menuFrame.Visible = false
        contentFrame.Visible = false
        isMinimized = true
    end
end)