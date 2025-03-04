local Scripts = {
    [527730528] = 'https://raw.githubusercontent.com/VeloraSoftworks/Velora/refs/heads/main/Games/magic%20training.lua',
    [1067808551] = 'https://raw.githubusercontent.com/VeloraSoftworks/Velora/refs/heads/main/Games/wizard%20life.lua'
}

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local function Notify(Description)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Velora",
        Text = Description
    })
end

if Scripts[game.PlaceId] then
    Notify("Loading, may take a while...")
    local success, result = pcall(function()
        return loadstring(game:HttpGet(Scripts[Game.PlaceId]))
    end)

    if not success then
        Notify("An error occured, you can check error in console.")
        warn("Velora error: " .. result)
    end
else
    Notify("No available scripts for this game.")    
end
