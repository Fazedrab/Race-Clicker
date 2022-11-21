-- RACE CLCIKER

local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "PornHub",
    Size = UDim2.fromOffset(700, 600),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

local Players = game:GetService("Players")

local lp = Players.LocalPlayer

local Maps = {"Home - 0 Rebirth", "Space - 2 Rebirth", "Ocean - 4 Rebirth"}
local Eggs = {"5 Wins", "25 Wins", "175 Wins", "1k Wins", "10k Wins", "75k Wins", "250k Wins", "1M Wins", "2.5M Wins", "5M Wins"}
local Codes = {"UPDATECLICKCODE", "hallowx3", "Accelhidden", "opx3code", "500KLikes", "Almost100MVisits", "1MGroupMembers", "Thankyou50M", "NewUpdate", "LetsGo5KLikes", "ThanksFor5MillionsVisits"}


local MainTab = GUI:Tab{
    Name = "Main",
    Icon = "rbxassetid://8569322835"
}

GUI:Notification{
    Title = "Alert",
    Text = "Sub To Ham135 owner",
    Duration = 3,
    Callback = function() end
}

GUI:Notification{
    Title = "Alert",
    Text = "Go to settings and set the GUI Toggle or theme to whatever you want!",
    Duration = 3,
    Callback = function() end
}

MainTab:Slider{
    Name = "Speed",
    Default = 11,
    Min = 0,
    Max = 1000000000000003282,
    Callback = function(t)
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = t
    end
}


MainTab:Button{
    Name = "EquipBestPets",
    StartingState = false,
    Description = pet,
    Callback = function() 
game:GetService("ReplicatedStorage").Packages.Knit.Services.PetsService.RF.EquipBest:InvokeServer()
end
}

MainTab:Button{
    Name = "Redeem All Codes",
    StartingState = false,
    Description = p,
    Callback = function() 
        for i,v in pairs(Codes) do
            game:GetService("ReplicatedStorage").Packages.Knit.Services.CodesService.RF.Redeem:InvokeServer(v)
        end
    end
}
MainTab:Toggle{
    Name = "Click 1000 Times",
    StartingState = false,
    Description = pwt,
    Callback = function() 
     for i = 1,2250 do 
 local Event = game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click
  Event:InvokeServer()
    end
end

}
    
