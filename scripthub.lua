local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Snoop Hub", HidePremium = false, IntroEnabled = true, IntroText = "Snoop Hub", SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Blox Fruits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "Hoho Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI", true))()
    end    
})


local Tab = Window:MakeTab({
    Name = "Rivals",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "X8 bit",
    Callback = function()
        loadstring(game:HttpGet("https://x8-bit.web.app/scripts/rival_c2.lua", true))()
    end    
})


OrionLib:Init()