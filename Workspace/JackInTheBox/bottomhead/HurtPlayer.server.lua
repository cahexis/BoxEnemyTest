local head = script.Parent
local anim = Instance.new("Animation")
local hum = head.Parent.Humanoid
local db = false

head.Touched:Connect(function(hit) -- when a player touches the head, the player gets killed
	local player = game:GetService("Players"):GetPlayerFromCharacter(hit.Parent)
	if db == false then
		if player then
			db = true
			local char = player.Character
			local hum = char:WaitForChild("Humanoid")
			hum:TakeDamage(100)
			wait(5)
			db = false
		end
	end
end)
