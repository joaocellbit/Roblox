local races = {}

    function races.racas(jogaduere,raca1)
	local raca = jogaduere:WaitForChild("racas e geneticas").raca
	raca.Value = raca1
end
function races.geneticas(jogador,genetica1)
	local genetica = jogador:WaitForChild("racas e geneticas").genetica
	genetica.Value = genetica1
end
return races
