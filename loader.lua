local Games = {
    [527730528] = 'https://raw.githubusercontent.com/VeloraSoftworks/Velora/refs/heads/main/Games/magic%20training.lua',
    [1067808551] = 'https://raw.githubusercontent.com/VeloraSoftworks/Velora/refs/heads/main/Games/wizard%20life.lua'
}

if not game:IsLoaded() then
    game.Loaded:Wait()
end

if Games[game.PlaceId] then
    local Loaded = loadstring(game:HttpGet(Games[Game.PlaceId]))

    pcall(Loaded)
end
