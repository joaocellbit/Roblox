game:GetService("Players")
local wallace = game:GetService("ServerScriptService")
game.Players.PlayerAdded:Connect(function(jogador)
	jogador.CharacterAdded:Connect(function(char)
		local scr = wallace.goiaba
		local cagao = scr:Clone()
		cagao.Parent = char
		cagao.Disabled = false
		cagao.Name = "wallace"
	end)
end)
