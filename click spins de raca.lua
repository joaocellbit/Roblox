local raca_genetica = game:GetService("ReplicatedStorage")

local raca_geneticas = require(raca_genetica.racas)

local spinning = false
script.Parent.ClickDetector.MouseClick:Connect(function(player)
	local spins = player:FindFirstChild("spins")
	if spinning == false and spins.Value ~= 0 then
		spins.Value = spins.Value - 1
		spinning = true
		raca_geneticas.racacalculada(player)
		wait(1)
		spinning = false
	end
	for i,v in pairs(player:GetChildren()) do
		if v.Name == "spins" or v.Name == "codigos usados" or v.Name == "PlayerGui" or v.Name == "PlayerScripts" or v.Name == "racas e geneticas" or v.Name == "charge" then
			
		
		else
			v:Destroy()
		end 
		
	end
	player:LoadCharacter()
end)
