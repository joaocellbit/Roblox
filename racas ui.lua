local jogador = game.Players.LocalPlayer
local raca = jogador:FindFirstChild("racas e geneticas"):FindFirstChild("raca")
local genetica = jogador:FindFirstChild("racas e geneticas"):FindFirstChild("genetica")
script.Parent.Text = raca.Value
local spinning = false
local spins = jogador:FindFirstChild("spins")
game.Workspace.racareroll.ClickDetector.MouseClick:Connect(function(novo)
	if	spinning == false and spins.Value ~= 0 then
		spinning = true
		script.Parent.Text = "Spinning..."
		script.Parent.Parent.geneticas.Text = "Spinning"
		wait(1)
		script.Parent.Text = raca.Value
		script.Parent.Parent.geneticas.Text = genetica.Value
		spinning = false
	end

end)
