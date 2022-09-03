local jogador = game.Players.LocalPlayer
local text = script.Parent
local user = game:GetService("UserInputService")
local evento = game:GetService("ReplicatedStorage")

local spins1 = jogador:FindFirstChild("spins")

text.FocusLost:Connect(function(foco, enter)
	
	if enter.KeyCode == Enum.KeyCode.Return then
		local codecheck = evento:FindFirstChild("RemoteFunction"):InvokeServer(text.Text)
		if codecheck == true then
			text.Text = "Codigo valido"
		elseif codecheck == "usado" then
			text.Text = "Codigo usado"
		
		else
			text.Text = "Codigo invalido"
		end
		end
end)
