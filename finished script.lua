local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Script Loader", "Ocean")

-- MAIN --
local Main = Window:NewTab("Multiple Games")
local MainSection = Main:NewSection("Multi-Game script")


MainSection:NewButton("Multiple Games", "Read https://pastebin.com/raw/3PABviZk", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/3PABviZk'))()
end)

MainSection:NewToggle("Super-Human", "run and jump fast", function(state)
    if state then
        getgenv().WalkSpeedValue = 100; --set your desired walkspeed here
local Player = game:service'Players'.LocalPlayer;
Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end)
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    else
        getgenv().WalkSpeedValue = 16; --set your desired walkspeed here
        local Player = game:service'Players'.LocalPlayer;
        Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end
end)

MainSection:NewButton("Infinite Yield", "FE Admin commands", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)


--PLAYER--
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "GOTTA GO FAST", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "Jumped To Mt. Everest", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset JP/WS", "Reset WalkSpeed and JumpPower", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

--Other
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("Chat Spoofer", "Tricks Chat", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
end)
