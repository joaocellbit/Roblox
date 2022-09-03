local animacaoloc = game:GetService('ReplicatedStorage')
local animation = animacaoloc.AnimationController.Animation

local player = script.Parent
local animacaocl =	animation:Clone()
animacaocl.Parent = player.Humanoid
local animacao = player.Humanoid:LoadAnimation(animacaocl)
while true do
	wait(1)
	animacao:Play()
end


