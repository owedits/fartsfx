local whitelist = loadstring(game:HttpGet('https://raw.githubusercontent.com/KrystekYT/PetSimulatorX/main/whitelist_kody.lua'))

game.Players.PlayerAdded:Connect(function(player)
	if whitelist[player.UserID] then

	else
		player:Kick("You are not co")
	end
end)