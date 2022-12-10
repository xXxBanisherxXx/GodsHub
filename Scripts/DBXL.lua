local old = syn.request
setreadonly(syn, false)
syn.request = function(t)
    if t.Url:find("discord.com/api/webhooks") then
        print("webhook found")
    end
    return old(t)
end
setreadonly(syn, true)

local Marketplace = game:GetService('MarketplaceService');
local Players = game:GetService('Players');
local Player = Players.LocalPlayer;
local Character = Player.Character;

_G.NPC = 'nil';
_G.Attack = false;
_G.Defense = false;
_G.Agility = false;
_G.KiBlast = false;
_G.Charge = false;
_G.Charging = false;

local Sucessful, Info = pcall(Marketplace.GetProductInfo, Marketplace, game.PlaceId)

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Gods Hub ║ "..Info.Name,
	LoadingTitle = "Loading Please Wait...",
	LoadingSubtitle = "by LastGod#1234",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = 'GodsH',
		FileName = "Yes"
	},
})

local MainTab = Window:CreateTab("Main", 10762499520)

local AutofarmSection = MainTab:CreateSection("Farm")

local AttackToggle = MainTab:CreateToggle({
   Name = "Train Attack",
   CurrentValue = false,
   Flag = "AttackToggle",
   Callback = function(Value)
       Attack = Value
        if Value then
			Loop = game:GetService("RunService").RenderStepped:Connect(function()
            local args = {
            [1] = "\226\129\159\226\129\159\226\155\148\225\180\128\202\159\202\159\226\156\168\225\180\174\225\180\181\225\180\179\226\156\168\225\180\141\225\180\128\201\180\226\155\148 *769\226\135\173\226\136\133\226\135\182\226\136\133\226\134\186\226\134\161\226\136\137\226\136\133\226\135\173* *MAT SABU ANTI APES 769* *BIN TONJOL 769* *BINTI MAT PELOR 769* ",
            [2] = "\226\129\159\226\129\159\226\155\148\225\180\128\202\159\202\159\226\156\168\225\180\174\225\180\181\225\180\179\226\156\168\225\180\141\225\180\128\201\180\226\155\148 *769\226\135\173\226\136\133\226\135\182\226\136\133\226\134\186\226\134\161\226\136\137\226\136\133\226\135\173* *MAT SABU ANTI APES 769* *BIN TONJOL 769* *BINTI MAT PELOR 769* \243\160\128\161\243\160\128\161\243\160\128\161"
            }
            game:GetService("ReplicatedStorage").Remotes.Training.Combat5:InvokeServer(unpack(args))
            task.wait(0.5)
			 end)
		end

			if not Value then
				if Loop then
					Loop:Disconnect()
				end
			end
   end,
})

local DefenseToggle = MainTab:CreateToggle({
   Name = "Train Defense",
   CurrentValue = false,
   Flag = "DefenseToggle",
   Callback = function(Value)
       Defense = Value
       if Value then
			Loop = game:GetService("RunService").RenderStepped:Connect(function()
            local args = {
            [1] = "\226\129\159\226\129\159\226\155\148\225\180\128\202\159\202\159\226\156\168\225\180\174\225\180\181\225\180\179\226\156\168\225\180\141\225\180\128\201\180\226\155\148 *769\226\135\173\226\136\133\226\135\182\226\136\133\226\134\186\226\134\161\226\136\137\226\136\133\226\135\173* *MAT SABU ANTI APES 769* *BIN TONJOL 769* *BINTI MAT PELOR 769* ",
            [2] = "\226\129\159\226\129\159\226\155\148\225\180\128\202\159\202\159\226\156\168\225\180\174\225\180\181\225\180\179\226\156\168\225\180\141\225\180\128\201\180\226\155\148 *769\226\135\173\226\136\133\226\135\182\226\136\133\226\134\186\226\134\161\226\136\137\226\136\133\226\135\173* *MAT SABU ANTI APES 769* *BIN TONJOL 769* *BINTI MAT PELOR 769* \243\160\128\161\243\160\128\161\243\160\128\161"
             }
             game:GetService("ReplicatedStorage").Remotes.Training.Defense5:InvokeServer(unpack(args))
             task.wait(0.5)
			 end)
		end

			if not Value then
				if Loop then
					Loop:Disconnect()
				end
			end
   end,
})

local AgilityToggle = MainTab:CreateToggle({
   Name = "Train Agility",
   CurrentValue = false,
   Flag = "AgilityToggle",
   Callback = function(Value)
       Agility = Value
   end,
})

local KiBlastToggle = MainTab:CreateToggle({
   Name = "Train Ki",
   CurrentValue = false,
   Flag = "KiToggle",
   Callback = function(Value)
       KiBlast = Value
       if Value then
			Loop = game:GetService("RunService").RenderStepped:Connect(function()
	        local Vars = {
            [1] = "RightHand",
            [2] = Vector3.new(-1803.2252197265625, 388.6591491699219, -4623.18603515625),
            [3] = "\226\129\159\226\129\159\226\155\148\225\180\128\202\159\202\159\226\156\168\225\180\174\225\180\181\225\180\179\226\156\168\225\180\141\225\180\128\201\180\226\155\148 *769\226\135\173\226\136\133\226\135\182\226\136\133\226\134\186\226\134\161\226\136\137\226\136\133\226\135\173* *MAT SABU ANTI APES 769* *BIN TONJOL 769* *BINTI MAT PELOR 769* ",
            [4] = "\226\129\159\226\129\159\226\155\148\225\180\128\202\159\202\159\226\156\168\225\180\174\225\180\181\225\180\179\226\156\168\225\180\141\225\180\128\201\180\226\155\148 *769\226\135\173\226\136\133\226\135\182\226\136\133\226\134\186\226\134\161\226\136\137\226\136\133\226\135\173* *MAT SABU ANTI APES 769* *BIN TONJOL 769* *BINTI MAT PELOR 769* \243\160\128\161\243\160\128\161\243\160\128\161"
            }
            game:GetService("ReplicatedStorage").Remotes.Training.Blast5:InvokeServer(unpack(Vars))
            task.wait(0.5)
			 end)
		end

			if not Value then
				if Loop then
					Loop:Disconnect()
				end
			end
   end,
})

local ChargeToggle = MainTab:CreateToggle({
   Name = "Auto Charge",
   CurrentValue = false,
   Flag = "ChargeToggle",
   Callback = function(Value)
       Charge = Value
       
       if Value then
           Charging = true
			Loop = game:GetService("RunService").RenderStepped:Connect(function()
			    if Value and not Charging and Player.Status.Energy.Value < Player.Status.MaxEnergy.Value then
			        Charging = true
			    end
		      
			    if Charging and Player.Status.Energy.Value < Player.Status.MaxEnergy.Value then
                 local args = {
                 [1] = "\226\129\159\226\129\159\226\155\148\225\180\128\202\159\202\159\226\156\168\225\180\174\225\180\181\225\180\179\226\156\168\225\180\141\225\180\128\201\180\226\155\148 *769\226\135\173\226\136\133\226\135\182\226\136\133\226\134\186\226\134\161\226\136\137\226\136\133\226\135\173* *MAT SABU ANTI APES 769* *BIN TONJOL 769* *BINTI MAT PELOR 769* ",
                 [2] = "\226\129\159\226\129\159\226\155\148\225\180\128\202\159\202\159\226\156\168\225\180\174\225\180\181\225\180\179\226\156\168\225\180\141\225\180\128\201\180\226\155\148 *769\226\135\173\226\136\133\226\135\182\226\136\133\226\134\186\226\134\161\226\136\137\226\136\133\226\135\173* *MAT SABU ANTI APES 769* *BIN TONJOL 769* *BINTI MAT PELOR 769* \243\160\128\161\243\160\128\161\243\160\128\161"
                 }
                 game:GetService("ReplicatedStorage").Remotes.Training.Charge5:InvokeServer(unpack(args))
                 Charging = false
			    end
		        
			 end)
		end

			if not Value then
			    Charging = false
                game:GetService("ReplicatedStorage").Remotes.Training.ChargeFinish5:FireServer()
				if Loop then
					Loop:Disconnect()
				end
			end
       
   end,
})

local NPCS = MainTab:CreateDropdown({
   Name = "Select NPC",
   Options = {"Android 17","Android 18","Gotenks SSJ3","Gohan SSJ2[Level 8]","Super Boo","Android 19","Gohan MYSTIC[Level 12]","Superboo[Gotenks]","DABURA[Level 9]","Dr Gero","Goku SSJ3[Level 11]","Raditz[Level 3]","Nappa[Level 4]","Cyborg Freeza","Gogeta SSJB","BROLY[DBS]","Vegeta [Level 5]","Yamcha[Level 1]","Kuririn[Level 2]"},
   CurrentOption = "No Selected",
   Flag = "NPCS",
   Callback = function(Option)
       NPC = Option
       print(NPC)
   end,
})

