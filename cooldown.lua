game.Players.PlayerAdded:Connect(function(jogador)
	jogador.CharacterAdded:Connect(function(char)
		local scripy = char:WaitForChild("wallace")
		jogador:FindFirstChild("charge").Changed:Connect(function(mudanca)
			if mudanca == false  then
				scripy.Disabled = true
				wait(1)
				scripy.Disabled = false
			end
		end)
	end)
end)
