local jogador = game.Players.LocalPlayer
local spins = jogador:FindFirstChild("spins")
script.Parent.Text = spins.Value
spins.Changed:Connect(function(rodadas)
	script.Parent.Text = spins.Value
end)
