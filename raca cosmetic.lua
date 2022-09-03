local datastoreservice = game:GetService("DataStoreService")
local DataStore = datastoreservice:GetDataStore("PlayerData")

game.Players.PlayerAdded:Connect(function(jogador)
	
	jogador.CharacterAdded:Connect(function(char)
		
		wait()
		local storage = game:GetService("ReplicatedStorage")
		local rosto = char:FindFirstChild("Head").face
		local corpo = char:children()
		for i,v in pairs(corpo) do
			
			if v.ClassName == "Accessory" then
				if v.AccessoryType ~= Enum.AccessoryType.Hair  then
					v:Destroy()
				end
			end
		end
		local cabelo
		local acessorio
		if char:FindFirstChildOfClass("Accessory") then
			 acessorio = char:FindFirstChildOfClass("Accessory")
			if   acessorio:FindFirstChildOfClass("MeshPart") then
				
				 cabelo = acessorio:FindFirstChildOfClass("MeshPart")
				
			end
			end
		local corpo = char["Body Colors"]
		cabelo.TextureID = ""
		cabelo.Material = "SmoothPlastic"
		
		if acessorio.AccessoryType == Enum.AccessoryType.Hair then
			wait()
			
			if not jogador:FindFirstChild("cabelo") then
				if not jogador:FindFirstChild("corcabelo") then
					local pasta = Instance.new("Folder",jogador)
					pasta.Name = "cabelo"
					local corcabelo = Instance.new("Color3Value",pasta)
					corcabelo.Name = "corcabelo"
					local cor1 = math.random(0,255)
					local cor2 = math.random(0,255)
					local cor3 = math.random(0,255)
					cabelo.Color = Color3.fromRGB(cor1, cor2, cor3)
					corcabelo.Value = cabelo.Color
				end
				
			end
			end
			if jogador:FindFirstChild("racas e geneticas"):FindFirstChild("genetica").value == "Low class" or jogador:FindFirstChild("racas e geneticas"):FindFirstChild("genetica").value == "Elite" then
				cabelo.Color = Color3.new(0,0,0)
				char:FindFirstChildOfClass("Shirt").ShirtTemplate = "rbxassetid://274888950"
				char:FindFirstChildOfClass("Pants").PantsTemplate = "rbxassetid://274889075"
				rosto.Texture = "http://www.roblox.com/asset/?id=6331965104"
				print("feito 2")
				
			elseif jogador:FindFirstChild("racas e geneticas"):FindFirstChild("genetica").value == "Kaioh soul" then
				cabelo.Color = Color3.new(0,0,0)
				char:FindFirstChildOfClass("Shirt").ShirtTemplate = "rbxassetid://1125500902"
				char:FindFirstChildOfClass("Pants").PantsTemplate = "rbxassetid://1125501970"
				rosto.Texture = "http://www.roblox.com/asset/?id=7253530964"
				
			elseif jogador:FindFirstChild("racas e geneticas"):FindFirstChild("genetica").value == "Legendary" then
				local pasta = jogador:FindFirstChild("ki")
				cabelo.Color = Color3.new(0,0,0)
				char:FindFirstChildOfClass("Shirt").ShirtTemplate = "http://www.roblox.com/asset/?id=8752999767"
				char:FindFirstChildOfClass("Pants").PantsTemplate = "http://www.roblox.com/asset/?id=8753292539"
				local auraL = Instance.new("Color3Value",pasta)
			auraL.Value = pasta:FindFirstChild("KiColor").Value
			auraL.Name = "Legendary"
				pasta:FindFirstChild("KiColor").Value = Color3.fromRGB(70, 150, 46)
				rosto.Texture = "http://www.roblox.com/asset/?id=682906913"
				
			elseif jogador:FindFirstChild("racas e geneticas"):FindFirstChild("raca").value == "Frost Demon"  then
			cabelo.Transparency = 1
		
			char:FindFirstChildOfClass("Shirt").ShirtTemplate = "http://www.roblox.com/asset/?id=6759213217"
			char:FindFirstChildOfClass("Pants").PantsTemplate = "http://www.roblox.com/asset/?id=6759214120"
			
				local cor = BrickColor.new("White")
				corpo.HeadColor = cor
				corpo.LeftArmColor = cor
				corpo.LeftLegColor = cor
				corpo.RightArmColor = cor
				corpo.RightLegColor = cor
				corpo.TorsoColor = cor
				
				
			elseif jogador:FindFirstChild("racas e geneticas"):FindFirstChild("genetica").value == "Bojack" then
				cabelo.BrickColor = BrickColor.new("Neon orange")
				local cor = BrickColor.new("Baby blue")
				corpo.HeadColor = cor
				corpo.LeftArmColor = cor
				corpo.LeftLegColor = cor
				corpo.RightArmColor = cor
				corpo.RightLegColor = cor
				corpo.TorsoColor = cor
				
			elseif jogador:FindFirstChild("racas e geneticas"):FindFirstChild("raca").value == "Majin" then
				if not jogador:FindFirstChild("corpos") then
					local corpos = Instance.new("Color3Value",jogador)
					corpos.Name = "corpos"
					local cor = math.random(1,3)
					local corfinal 
					if	cor == 1 then
						corfinal = Color3.fromRGB(40, 40, 40)
					elseif cor == 2 then
						corfinal = Color3.fromRGB(255, 85, 255)
					elseif cor ==  3  then
						corfinal = Color3.fromRGB(57, 93, 255)


					end
					corpos.Value = corfinal
					print("Feito")
				end
				local cor = jogador:FindFirstChild("corpos").Value
				corpo.HeadColor3 = cor
				corpo.LeftArmColor3 = cor
				corpo.LeftLegColor3 = cor
				corpo.RightArmColor3 = cor
				corpo.RightLegColor3 = cor
				corpo.TorsoColor3 = cor
				cabelo.Color = jogador:FindFirstChild("corpos").Value
				char:FindFirstChildOfClass("Shirt").ShirtTemplate = "rbxassetid://1651190519"
				char:FindFirstChildOfClass("Pants").PantsTemplate = "rbxassetid://3286261028"
				rosto.Texture = "http://www.roblox.com/asset/?id=683375387"
				
			elseif jogador:FindFirstChild("racas e geneticas"):FindFirstChild("raca").value == "Namek" then
				cabelo.Transparency = 1
				local cor = BrickColor.new("Forest green")
				corpo.HeadColor = cor
				corpo.LeftArmColor = cor
				corpo.LeftLegColor = cor
				corpo.RightArmColor = cor
				corpo.RightLegColor = cor
				corpo.TorsoColor = cor
				if not jogador:FindFirstChild("camisa") and not jogador:FindFirstChild("calca") then
					local roupaN = math.random(1, 4)
					local camisacode = ""
					local calcacode = ""
					local camisa = Instance.new("StringValue",jogador)
					camisa.Name = "camisa"
					local calca = Instance.new("StringValue",jogador)
					calca.Name = "calca"
					if roupaN == 1 then
						camisacode = "http://www.roblox.com/asset/?id=627815285"
						calcacode = "rbxassetid://230507108"
					elseif roupaN == 2 then
						camisacode = "http://www.roblox.com/asset/?id=1359547884"
						calcacode = "http://www.roblox.com/asset/?id=56821419"
					elseif roupaN == 3  then
						camisacode = "http://www.roblox.com/asset/?id=1809093193"
						calcacode = "http://www.roblox.com/asset/?id=1785125119"
					elseif roupaN == 4  then
						camisacode = "http://www.roblox.com/asset/?id=56266328"
						calcacode = "http://www.roblox.com/asset/?id=56821419"
					
					
					end
					camisa.Value = camisacode
					calca.Value = calcacode
			
					rosto.Texture = "rbxassetid://897514186"
					local nariz = Instance.new("Decal",rosto.Parent)
					nariz.Texture = "rbxassetid://765424161"
					nariz.Face = "Front"
					nariz.Name = "nose"
					local boca = Instance.new("Decal",rosto.Parent)
					boca.Texture = "rbxassetid://932140764"
					boca.Face = "Front"
					boca.Name = "Mouth"
				end
				char:FindFirstChildOfClass("Shirt").ShirtTemplate = jogador:FindFirstChild("camisa").Value
				char:FindFirstChildOfClass("Pants").PantsTemplate = jogador:FindFirstChild("calca").Value
			elseif jogador:FindFirstChild("racas e geneticas"):FindFirstChild("genetica").value == "Freeza Soldier" then
				if not jogador:FindFirstChild("corpoAlien") then
					local corpos = Instance.new("Color3Value",jogador)
					corpos.Name = "corpoAlien"
					local cor1 = math.random(0,255)
					local cor2 = math.random(0,255)
					local cor3 = math.random(0,255)
					
					local corfinal = Color3.fromRGB(cor1,cor2,cor3)
					corpos.Value = corfinal
					


				end
				local cor = jogador:FindFirstChild("cabelo"):FindFirstChild("corcabelo").Value
				cabelo.Color = cor
				local cor = jogador:FindFirstChild("corpoAlien").Value
				corpo.HeadColor3 = cor
				corpo.LeftArmColor3 = cor
				corpo.LeftLegColor3 = cor
				corpo.RightArmColor3 = cor
				corpo.RightLegColor3 = cor
				corpo.TorsoColor3 = cor
		elseif jogador:FindFirstChild("racas e geneticas"):FindFirstChild("raca").value == "Sphinix" then
			if not game:GetService("StarterPlayer"):FindFirstChild("StarterCharacter") then
				local corpo = storage["RAÇAS "].Sphinix
					local sphinix = corpo:Clone()
					sphinix.Name = "StarterCharacter"
				sphinix.Parent = game:GetService("StarterPlayer")
				wait()

				jogador:LoadCharacter()
				print("vasco")
			
		end
				
		
		else	
			
			
				local cor = jogador:FindFirstChild("cabelo"):FindFirstChild("corcabelo").Value
				cabelo.Color = cor
				rosto.Texture = "http://www.roblox.com/asset/?id=6331965104"
			end
	
			
		
	end)
	local storage = game:GetService("ReplicatedStorage")
	
	
end)
