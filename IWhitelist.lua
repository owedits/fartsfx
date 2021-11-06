local whitelist = loadstring(game:HttpGet('https://raw.githubusercontent.com/owedits/fartsfx/main/lWhite.lua'))

game.Players.PlayerAdded:Connect(function(player)
	if whitelist[player.UserID] then

	else
		player:Kick("You are not co")
	end
end)