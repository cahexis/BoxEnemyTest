local hitbox = script.Parent
local anim = Instance.new("Animation")
local hum = hitbox.Parent.Humanoid
anim.AnimationId = "rbxassetid://130945730016421"
local track = hum:LoadAnimation(anim)
local db = false
local slamsound = hitbox.slamsound

hitbox.Touched:Connect(function(hit) -- detects when player is near (aka touching the hitbox), and plays the slam animation.
	local player = game:GetService("Players"):GetPlayerFromCharacter(hit.Parent)
	if db == false then
		if player then
			db = true
			track:Play()
			wait(0.9)
			slamsound:Play()
			wait(5)
			db = false
		end
	end
end)
