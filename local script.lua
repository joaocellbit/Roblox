local remote = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent")
local remote2 = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent2")
local input = game:GetService("UserInputService")
local inout2 = game:GetService("ContextActionService")
function rog(name, state, inputobject)
	if state == Enum.UserInputState.Begin then
		remote:FireServer()
	end
	if state == Enum.UserInputState.End then
		remote2:FireServer()
	end
	end
inout2:BindAction("cagar",rog,false,Enum.KeyCode.C)
