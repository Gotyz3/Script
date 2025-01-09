local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Snoup Hub",
    HidePremium = false,
    IntroEnabled = true,
    IntroText = "Snoup Hub",
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})
--tab do blox fruits
local Tab1 = Window:MakeTab({
    Name = "Blox Fruits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab1:AddButton({
    Name = "Hoho Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI", true))()
    end    
})
Tab1:AddButton({
    Name = "OP GUI",
    Callback = function()
        loadstring(game:HttpGet("https://nicuse.xyz/MainHub.lua"))()
    end    
})

Tab1:AddButton({
    Name = "Dead Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Deadhub0/Blox-fruits/refs/heads/main/Script'))() 
    end    
})

Tab1:AddButton({
    Name = "Solix Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
    end    
})

Tab1:AddButton({
    Name = "Relz Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/farghii/relzhub/main/execute.hack", true))()
    end    
})

--Blue lock Rivals

local Tab2 = Window:MakeTab({
    Name = "Blue Lock Rivals",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab2:AddButton({
    Name = "NS HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Mc4121ban/RobloxScirpt/refs/heads/main/ScriptHub"))()
    end    
})

Tab2:AddButton({
    Name = "Rinn Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()
    end    
})

--Tab Rivals

local Tab3 = Window:MakeTab({
    Name = "Rivals",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab3:AddButton({
    Name = "X8 bit",
    Callback = function()
        loadstring(game:HttpGet("https://x8-bit.web.app/scripts/rival_c2.lua", true))()
    end    
})

Tab3:AddButton({
    Name = "?",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Exlarelol/test1/refs/heads/main/sex", true))()
    end    
})

--Anime Shadow

local Tab4 = Window:MakeTab({
    Name = "Anime Shadow",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab4:AddButton({
    Name = "ZardoX",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI", true))()
    end    
})

--Jujutsu Infinite

local Tab5 = Window:MakeTab({
    Name = "Jujutsu Infinite",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab5:AddButton({
    Name = "NS HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/Infinite/refs/heads/main/All"))()
    end    
})

Tab5:AddButton({
    Name = "Black Hub | Kill All",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/RELEASE-Jujutsu-Infinite-Insta-kill-all-mobs-25282"))()
    end    
})

--Murder Mystery

local Tab6 = Window:MakeTab({
    Name = "Murder Mystery",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab6:AddButton({
    Name = "Solix Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))() 
    end    
})

--FISCH

local Tab7 = Window:MakeTab({
    Name = "FISCH",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab7:AddButton({
    Name = "Forge Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))() 
    end    
})

Tab7:AddButton({
    Name = "OP HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.lua"))()
    end    
})

OrionLib:Init()