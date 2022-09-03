local servico = game:GetService("ReplicatedStorage")
local funcao = servico:FindFirstChild("RemoteFunction")
local codigos = require(servico:FindFirstChild("Codes")) 


funcao.OnServerInvoke = function(pl,texto)
	local spins = pl:FindFirstChild("spins")
	print(texto)
	for i,v in pairs(codigos) do
		print(i)
		print(v)
		if i == texto and v["tipo"] == "spins" and v["expirado"]== false then
			if	pl:FindFirstChild("codes"):FindFirstChild(i) then
				return "usado"
			else
				spins.Value = spins.Value + v["quantidade"]
				local codigos = Instance.new("Folder",pl:FindFirstChild("codes"))
				codigos.Name = i
				return true
			end
			
		end
	end
	return false
end
