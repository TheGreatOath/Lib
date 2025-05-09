local Library = loadstring(game:HttpGetAsync("https://github.com/TheGreatOath/Worm/releases/download/v1.0/Worm.luau"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/addons/SaveManager.luau"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/addons/InterfaceManager.luau"))()
 
local Window = Library:CreateWindow{
    Title = `Worm {Library.Version}`,
    SubTitle = "",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Resize = true,
    MinSize = Vector2.new(470, 380),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.End
}

local Tabs = {
    Main = Window:CreateTab{
        Title = "Main",
        Icon = "phosphor-users-bold"
    },
    Settings = Window:CreateTab{
        Title = "Settings",
        Icon = "settings"
    }
}

local Options = Library.Options



-- Addons:

SaveManager:SetLibrary(Library)
InterfaceManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes{}
InterfaceManager:SetFolder("WormScriptHub")
SaveManager:SetFolder("WormScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

Library:Notify{
    Title = "Worm",
    Content = "The script has been loaded.",
    Duration = 3
}

SaveManager:LoadAutoloadConfig()
