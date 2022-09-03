local datastoreservice = game:GetService("DataStoreService")
local DataStore = datastoreservice:GetDataStore("PlayerData")
local dataP = {}
game.Players.PlayerAdded:Connect(function(jogador)
	local codigos = Instance.new("Folder",jogador)
	codigos.Name = "codes"
	
	local sucess, Playerdata =  pcall(function()
		return DataStore:GetAsync(jogador.UserId) or dataP
	end)
	print(Playerdata)
	if	Playerdata == nil then
		return
	else
		for nomes,valor in pairs(Playerdata) do
			
			
			if nomes == "ki" then

				local armazenada = Instance.new("Folder", jogador)
				armazenada.Name = "ki"

				local corzinha = Instance.new("Color3Value",armazenada)
				corzinha.Name = "KiColor"
			end
			
			if nomes == "cabelo" then
			local pasta = Instance.new("Folder",jogador)
			pasta.Name = "cabelo"
			local corcabelo = Instance.new("Color3Value",pasta)
			corcabelo.Name = "corcabelo"
			
			end
			if nomes == "camisa" then
				local camisa = Instance.new("StringValue",jogador)
				camisa.Name = "camisa"
			end
			if nomes == "calca" then

				local calca = Instance.new("StringValue",jogador)
				calca.Name = "calca"
			end
			if nomes == "corpoAlien" then
				local corpos = Instance.new("Color3Value",jogador)
				corpos.Name = "corpoAlien"
			end
			if nomes == "corpos" then
				local corpos = Instance.new("Color3Value",jogador)
				corpos.Name = "corpos"
			end
			local coisas = jogador:children()
			for _, nome in pairs(coisas) do
				
				if nome.Name == nomes then
					if nome.Name == "codes" then
						local codigopasta = jogador:FindFirstChild("codes")
						for i,v in pairs(valor) do
							local codigos = Instance.new("Folder",codigopasta)
							print(v)
							codigos.Name = v
						end
					end
					if nome.Name == "cabelo" then
						local cabelopasta = jogador:WaitForChild("cabelo")
						local cabelo = cabelopasta:WaitForChild("corcabelo")
						local cor = {}
						for i,v in pairs(valor) do
							if i == 1 then
								cor["red"] = v
							elseif i == 2 then
								cor["green"] = v
							elseif i == 3 then
								cor["blue"] = v
							end
						end
							
							print(cor)
							cabelo.Value = Color3.new(cor.red, cor.green, cor.blue)
					end
					if nome.Name == "ki" then
						local ki = jogador:WaitForChild("ki")
						local kivalor = ki:WaitForChild("KiColor")
						local cor = {}
						for i,v in pairs(valor) do
							if i == 1 then
								cor["red"] = v
							elseif i == 2 then
								cor["green"] = v
							elseif i == 3 then
								cor["blue"] = v
							end
							

						
						
					
						end
						kivalor.Value = Color3.new(cor.red, cor.green, cor.blue)
					end
					if	nome.Name == "racas e geneticas" then
						local r = jogador:WaitForChild("racas e geneticas")
						local g = r:FindFirstChild("raca")
						local h = r:FindFirstChild("genetica")
						for i,v in pairs(valor) do
							if i == 1 then
								g.Value = v
							elseif i == 2 then
								h.Value = v
				
							
							end
							
						end
						
						
					end
					if nome.Name == "spins" then
						local spins = jogador:WaitForChild("spins")
						spins.Value = valor
					end
					
					if nome.Name == "corpos" then
						
						local corpo = jogador:FindFirstChild("corpos")
						local cor = {}
						for i,v in pairs(valor) do

							if i == 1 then
								cor["red"] = v
							elseif i == 2 then
								cor["green"] = v
							elseif i == 3 then
								cor["blue"] = v
							end





						end
						corpo.Value = Color3.new(cor.red, cor.green, cor.blue)
					end
					if nome.Name == "corpoAlien" then
						local corpo = jogador:FindFirstChild("corpoAlien")
						local cor = {}
						for i,v in pairs(valor) do
							
							if i == 1 then
								cor["red"] = v
							elseif i == 2 then
								cor["green"] = v
							elseif i == 3 then
								cor["blue"] = v
							end





						end
						corpo.Value = Color3.new(cor.red, cor.green, cor.blue)
					end
					if nome.Name == "camisa" then
					 local camisa = jogador:FindFirstChild("camisa")
						
						camisa.Value = valor
					end
					if nome.Name == "calca" then
						local calca = jogador:FindFirstChild("calca")
						calca.Value = valor
					end
				end
			end
			
			
			
			
		end
		
	
	end
	if jogador.UserId == 609358642 then
		local spins = jogador:WaitForChild("spins")
		spins.Value = 1000000
	end
end)

game.Players.PlayerRemoving:Connect(function(jogador)
	local data = jogador:GetChildren()
	local PlayerData = {}
	for i,v in pairs(data) do
		if v.Name == "codes" then
			local codigos = v:GetChildren()
			local mesa = {}
			PlayerData[v.Name] = mesa
			for i,v in pairs(codigos) do
				table.insert(mesa, v.Name)
			end
		end
		if v.ClassName ~= "Folder" and v.ClassName ~= "StarterGear" and v.ClassName ~= "Backpack" then
			if v.ClassName == "Color3Value" then
				local CorR = v.Value.R
				local CorG = v.Value.G
				local CorB =v.Value.B
				local mesa = {}
				PlayerData[v.Name] = mesa
				table.insert(mesa, CorR)
				table.insert(mesa, CorG)
				table.insert(mesa, CorB)
			
			else
				PlayerData[v.Name] = v.Value
				end
			
		end

		if v.ClassName == "Folder" and v.Name ~= "codes" then
			local coisas = 	v:GetChildren()
			local mesa = {}
			 PlayerData[v.Name] = mesa
			
			for b,coisa in pairs(coisas) do
				if coisa.ClassName == "Color3Value" then
					if v:FindFirstChild("Legendary") then
						if coisa.Name == "Legendary" then
							local CorR = coisa.Value.R
							local CorG = coisa.Value.G
							local CorB = coisa.Value.B	
							table.insert(mesa, CorR)
							table.insert(mesa, CorG)
							table.insert(mesa, CorB)
						else
							
						end
					else
						
							local CorR = coisa.Value.R
							local CorG = coisa.Value.G
							local CorB = coisa.Value.B	
							table.insert(mesa, CorR)
							table.insert(mesa, CorG)
							table.insert(mesa, CorB)
						
					end
					
					
					
				else
					table.insert(mesa, coisa.Value)
				end			
				
			end
			
		end
		
	end
	print(PlayerData)
	local sucesso, semsucesso = pcall(function()
		DataStore:SetAsync(jogador.UserId, PlayerData)
		
	end)
	
	if sucesso then
		print("show")
		
	end
	if	semsucesso then
		print("fudeu")
	end
end)
