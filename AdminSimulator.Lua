local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Giangplay/Script/main/Orion_Library_PE_V2.lua")))()
local Window = OrionLib:MakeWindow({Name = "Admin Simulator", HidePremium = false, IntroText = "Owner is Mrbaconbutimpoor", SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab1 = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab1:AddSlider({
	Name = "Set Rebirth Give",
	Min = 1,
	Max = 9999999999999,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Set Rebirth Max is 100M Rebirth",
	Callback = function(Value)
SetRebirth = Value
	end    
})
Tab1:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
AutoRebirth = Value
while AutoRebirth do
game:GetService("ReplicatedStorage").ReplicatedRemotes.ultraLift:InvokeServer(SetRebirth)
wait(0.1)
end
	end
})
Tab1:AddTextbox({
	Name = "Set Egg Name to buy",
	Default = "Name Egg",
	TextDisappear = true,
	Callback = function(Value)
setEggName = Value
	end	  
})
Tab1:AddSlider({
	Name = "Set Egg how much you need to buy",
	Min = 1,
	Max = 10000,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Set How much egg you need to buy",
	Callback = function(Value)
Eggbuy = Value
	end    
})
Tab1:AddButton({
	Name = "Buy Egg",
	Callback = function()
for i = 1, Eggbuy do
game:GetService("ReplicatedStorage").ReplicatedRemotes.eggOpened:InvokeServer(setEggName,"Single")
end
  	end    
})
Tab1:AddToggle({
	Name = "Auto Buy Egg",
	Default = false,
	Callback = function(Value)
AutoBuyEgg = Value
while AutoBuyEgg do
for i = 1, Eggbuy do
game:GetService("ReplicatedStorage").ReplicatedRemotes.eggOpened:InvokeServer(setEggName,"Single")
end
wait(0.1)
 end
    end
})
Tab1:AddToggle({
	Name = "Give all Boost/buy all boost",
	Default = false,
	Callback = function(Value)
Autobuyboost = Value
while Autobuyboost do
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier4Gems")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier3Gems")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier2Gems")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier1Gems")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier4Luck")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier3Luck")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier2Luck")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier1Luck")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier4Levels")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier3Levels")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier2Levels")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier1Levels")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier4Shards")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier3Shards")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier2Shards")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier1Shards")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier2GemsEnchant")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier2LuckEnchant")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier2LevelsEnchant")
game:GetService("ReplicatedStorage").ReplicatedRemotes.purchaseBoost:InvokeServer("tier2ShardsEnchant")
wait(1)
end
		end
})
