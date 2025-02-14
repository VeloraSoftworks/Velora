local Games = {
    [527730528] = 'https://raw.githubusercontent.com/Velora-Softworks-LTD/Velora/refs/heads/main/magic%20training.lua'
}

if not game:IsLoaded() then
    game.Loaded:Wait()
end

if Games[game.PlaceId] then
    local Loaded = loadstring(game:HttpGet(Games[Game.PlaceId]))

    pcall(Loaded)
end
