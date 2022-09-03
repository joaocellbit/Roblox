local jogador = game.Players.LocalPlayer
local genetica = jogador:FindFirstChild("racas e geneticas"):FindFirstChild("genetica")
script.Parent.Text = genetica.Value
local spinning = false
local spins = jogador:FindFirstChild("spins")
game.Workspace["genetics reroll"].ClickDetector.MouseClick:Connect(function(novo)
	if	spinning == false and spins.Value ~= 0 then
		spinning = true
		script.Parent.Text = "Spinning..."
		wait(1)
		script.Parent.Text = genetica.Value
		spinning = false
	end

end)
	

