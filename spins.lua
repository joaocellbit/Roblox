
game.Players.PlayerAdded:Connect(function(player)

	local spinss = player:FindFirstChild("spins")
	if not spinss then
		local spins = Instance.new("IntValue",player)
		spins.Name = "spins"
		spins.Value = 5
	end
	
end)
