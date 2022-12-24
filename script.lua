local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "fGhFD86KOlp7cv3Ls5K0"
_G.KeyInput = "string"

function MakeScriptHub()
    local Window = OrionLib:MakeWindow({Name = "Script Hub", HidePremium = false, SaveConfig = true, IntroEnabled = true, IntroText = "Script Hub"})
    local Tab = Window:MakeTab({
        Name = "Scripts",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    Tab:AddButton({
        Name = "Infinite Yield",
        Callback = function() loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source')))()
                  print("executed")
          end    
    })
    Tab:AddButton({
        Name = "Jailbreak Script",
        Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/KuriWasTaken/MonkeyScripts/main/JailMonkey.lua"))()
                  print("executed")
          end  
    })
    Tab:AddButton({
        Name = "Da Hood Aim Trainer Script",
        Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Snxdfer/Snxdfer/main/source.lua"))()
                  print("executed")
          end    
    })
    Tab:AddButton({
        Name = "MM2 Eclipse Hub",
        Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/iZEu9Li1"))()
                  print("executed")
          end    
    })

Tab:AddButton({
    Name = "Da Hood Script",
    Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Dimag16/DimagX_NEW/main/dimagx', true))()
              print("executed")
      end    
})
Tab:AddButton({
    Name = "Hood Modded Script",
    Callback = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Rippeed/DaHoodinary/main/chariotsware"))()
              print("executed")
      end    
})
Tab:AddButton({
    Name = "Arsenal Script",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/BoltsHubV5"))()
              print("executed")
      end    
})
Tab:AddButton({
    Name = "Arsenal Script 2",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/HonestlyDex/DexHub/main/Init"))()
              print("executed")
      end    
})
Tab:AddButton({
    Name = "Combat Warriors Script (OP)",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SussyImposterRed/Scripts/main/NOVA_HUB_SOURCE"))()
              print("executed")
      end    
})
Tab:AddButton({
    Name = "Prision Life Septex Admin (OP)",
    Callback = function() loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
              print("executed")
      end    
})
Tab:AddButton({
    Name = "PRISIONWARE",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
              print("executed")
      end    
})
Tab:AddButton({
    Name = "Adopt Me AutoFarm",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
              print("executed")
      end    
})
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have entered the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have entered the Incorrect key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end


local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if _G.KeyInput == _G.Key then
            MakeScriptHub()
            CorrectKeyNotification()
        else
            IncorrectKeyNotification()
        end

  	end    
})
