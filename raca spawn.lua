local raca_genetica = game:GetService("ReplicatedStorage")

local racas = require(raca_genetica.raceroll)

local raca_geneticas = require(raca_genetica.races)

local geneticas = require(raca_genetica.geneticroll)

local function racaselecionada(raca, player) -- funcao chamada pra ver genetica
	print(raca)
	local genetics = math.random(1,100) -- numero aleatorio de 1 a 100
	local maximoGen = 0 -- total da genetica
	if raca =="Saiyan" then -- se o cara for saiyajin
		for i,v in pairs(geneticas.Saiyan) do -- loop pra calcular chance de genetica
			maximoGen += v
			if maximoGen >= genetics then 
				raca_geneticas.geneticas(player,i)
				print(i)
				break
			end
		end
	elseif raca =="Frost Demon" then
		for i,v in pairs(geneticas.FrostDemon) do
			maximoGen += v
			if maximoGen >= genetics then 
				raca_geneticas.geneticas(player,i)
				print(i)
				break

			end					


		end
	elseif raca == "Earthling" then
		for i,v in pairs(geneticas.Earthling) do
			maximoGen += v
			if	maximoGen >= genetics then
				raca_geneticas.geneticas(player, i)
				print(i)
				break
			end
		end
	elseif raca == "Sphinix" then
		for i,v in pairs(geneticas.Sphinix) do
			maximoGen += v
			if	maximoGen >= genetics then
				raca_geneticas.geneticas(player, i)
				print(i)
				break
			end
		end
	elseif raca == "Namek" then
		for i,v in pairs(geneticas.Namek) do
			maximoGen += v
			if	maximoGen >= genetics then
				raca_geneticas.geneticas(player, i)
				print(i)
				break
			end
		end
	elseif raca == "Jinago" then
		for i,v in pairs(geneticas.Jinago) do
			maximoGen += v
			if	maximoGen >= genetics then
				raca_geneticas.geneticas(player, i)
				print(i)
				break
			end
		end
	elseif raca == "Alien" then
		for i,v in pairs(geneticas.Alien) do
			maximoGen += v
			if	maximoGen >= genetics then
				raca_geneticas.geneticas(player, i)
				print(i)
				break
			end
		end
	elseif raca == "Majin" then
		for i,v in pairs(geneticas.Majin) do
			maximoGen += v
			if	maximoGen >= genetics then
				raca_geneticas.geneticas(player, i)
				print(i)
				break
			end
		end
	elseif raca == "Demon" then
		for i,v in pairs(geneticas.Demon) do
			maximoGen += v
			if	maximoGen >= genetics then
				raca_geneticas.geneticas(player, i)
				print(i)
				break
			end
		end

	end
	end


local function racacalculada(jooj) -- funcao chamada pelo player ao entrar pra ver a raca
	local opcaoraca = racas.racas
	local raca = math.random(1, 100)-- gerando numero aleatorio
	print(raca)
	local total = 0 -- valor inicial da table
	for i,v in pairs(opcaoraca) do -- loop pra calcular chances
		total += v -- somando total da table

		if total >= raca then 
			
			raca_geneticas.racas(jooj, i)
			racaselecionada(i, jooj)
			break

		end
	end
end
game.Players.PlayerAdded:Connect(function(vasco)
	local pasta = Instance.new("Folder",vasco)
	pasta.Name = "racas e geneticas"
	local raca = Instance.new("StringValue",pasta)
	raca.Name = "raca"
	local genetica = Instance.new("StringValue",pasta)
	genetica.Name = "genetica"
	racacalculada(vasco)
	end)
