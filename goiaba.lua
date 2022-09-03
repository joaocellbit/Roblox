local players = game:GetService("Players")
local char = script.Parent
local jogador = game.Players:GetPlayerFromCharacter(char)
local nome = char.Name 
print(jogador)
print(char)
local aura = game:GetService("ReplicatedStorage")
local remote = aura:WaitForChild("RemoteEvent")
local remote2 = aura:WaitForChild("RemoteEvent2")
local tecla = game
local uis = game:GetService('UserInputService')
local cas = game:GetService("ContextActionService")
local animacaoloc = script.Animation
local animacao = char.Humanoid:LoadAnimation(animacaoloc)

local aurac = aura.UI.Torso.SSJAuraParticle	
local trueaura = aura.UI.Torso.SSJAuraParticle2
local tamanho = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 6),
		NumberSequenceKeypoint.new(1, 6)
}
local som1 = aura.HumanoidRootPart.AuraEnable
local som2 = aura.HumanoidRootPart.Charge
local som3 = aura.HumanoidRootPart.AuraDisable

if not jogador:FindFirstChild("ki")  then
	if not jogador:FindFirstChild("KiColor") then
	local cor1 = math.random(0,255)
	local cor2 = math.random(0,255)
	local cor3 = math.random(0,255)
	print(cor1, cor2, cor3)
	local cor = Color3.fromRGB(cor1, cor2, cor3)
	
		local armazenada = Instance.new("Folder", jogador)
		armazenada.Name = "ki"

		local corzinha = Instance.new("Color3Value",armazenada)
		corzinha.Name = "KiColor"
corzinha.Value = cor
	
		end
end
if	 jogador:FindFirstChild("ki"):FindFirstChild("Legendary") and jogador:FindFirstChild("racas e geneticas"):FindFirstChild("genetica").Value ~= "Legendary" then
	jogador:FindFirstChild("ki"):FindFirstChild("KiColor").Value = jogador:FindFirstChild("ki"):FindFirstChild("Legendary").Value
	jogador:FindFirstChild("ki"):FindFirstChild("Legendary"):Destroy()
	print("vasco")
end
remote.OnServerEvent:Connect(function(pl) 
	local animacaoP = pl:FindFirstChild("charge").Value
	
	if animacaoP == false and nome == pl.Name then
		pl:FindFirstChild("charge").Value = true
		local somzeira = som1:Clone()
		somzeira.Parent = char
		somzeira.Name = "ativacao"
		local somzeira2 = som2:Clone()
		somzeira2.Parent = char
		somzeira2.Name = "continuo"
		char:WaitForChild("ativacao"):Play()
		char:WaitForChild("continuo"):Play()
		print("oi")
		local cor = jogador:FindFirstChild("ki"):FindFirstChild("KiColor").Value
		local coru = ColorSequence.new{
			ColorSequenceKeypoint.new(0, cor),
			ColorSequenceKeypoint.new(1, cor)
		}
		char.Animate.Disabled = true
		char.HumanoidRootPart.Anchored = true
		animacao:Play()
		
			
			local auras = aurac:Clone()
			local auras2 = trueaura:Clone()
			auras2.Parent = char:FindFirstChild("HumanoidRootPart")
			auras2.Name = "Aura2"
			auras2.Enabled = true
		auras2.Color = coru
		auras2.Size = tamanho
			auras.Parent = char:FindFirstChild("HumanoidRootPart")
			auras.Name = "Aura"
			auras.Enabled = true
		auras.Color = auras2.Color
		auras.Size = tamanho
			wait(0.4)
			animacao:AdjustSpeed(0)
			print(char.ClassName)
			while animacaoP == true do
				wait(0.3)
				char.Humanoid.MaxHealth = char.Humanoid.MaxHealth + 100
				char.Humanoid.Health = char.Humanoid.Health + 100
			end
	end
end)
remote2.OnServerEvent:Connect(function(pl)
	print(pl)
	local animacaoP = pl:FindFirstChild("charge").Value
	if  animacaoP == true and nome == pl.Name   then
		pl:FindFirstChild("charge").Value = false
		if char:FindFirstChild("HumanoidRootPart"):FindFirstChild("Aura") or char:FindFirstChild("HumanoidRootPart"):FindFirstChild("Aura2") then
			local corpo = char:FindFirstChild("HumanoidRootPart"):GetChildren()
			for i,v in pairs(corpo) do
				if v.Name == "Aura" or v.Name == "Aura2" then
					v:Destroy()
				end
			end
			
		end
		
		
		local somzeira3 = som3:Clone()
		somzeira3.Parent = char
		somzeira3.Name = "acabou"
		somzeira3.TimePosition = 0.4
		char:WaitForChild("ativacao"):Stop()
		char:WaitForChild("continuo"):Stop()
		char:WaitForChild("ativacao"):Destroy()
		char:WaitForChild("continuo"):Destroy()
		char:WaitForChild("acabou"):Play()
		
		animacao:AdjustSpeed(1)
		print("goiaba")
		char.HumanoidRootPart.Anchored = false
	
		
		
		char:WaitForChild("acabou"):Destroy()
		wait(0.4)
		char.Animate.Disabled = false
		end

	end)



	



