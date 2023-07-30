-- made by eggnology
wait(30) -- in seconds make this how long it takes for you to be able to place towers 

local function fireRemoteWithDelay(remote, instance, position, number)
    game:GetService("ReplicatedStorage").Events[remote]:FireServer(instance, position, number)
    wait(13)
end	

local function fireRemotesInOrder()
    local remotesData = {
        {remote = "TroopPlace", instance = game:GetService("ReplicatedStorage").Troops.Scientist, position = Vector3.new(13.437681198120117, 66.39952850341797, -6.129131317138672), number = 0},
        {remote = "TroopPlace", instance = game:GetService("ReplicatedStorage").Troops.Scientist, position = Vector3.new(2.4079535007476807, 66.34953308105469, -4.579102039337158), number = 0},
        {remote = "TroopPlace", instance = game:GetService("ReplicatedStorage").Troops.Scientist, position = Vector3.new(6.517850399017334, 66.34953308105469, -3.1950740814208984), number = 0},
        {remote = "TroopPlace", instance = game:GetService("ReplicatedStorage").Troops.Scientist, position = Vector3.new(11.78238296508789, 66.34953308105469, -3.260035514831543), number = 0},
        {remote = "TroopPlace", instance = game:GetService("ReplicatedStorage").Troops.Scientist, position = Vector3.new(12.535270690917969, 66.39952850341797, -9.489578247070312), number = 0},
        {remote = "TroopPlace", instance = game:GetService("ReplicatedStorage").Troops.Spectre, position = Vector3.new(8.167740821838379, 66.39952850341797, -5.773548126220703), number = 0},
        {remote = "TroopPlace", instance = game:GetService("ReplicatedStorage").Troops["Balloon Pal"], position = Vector3.new(9.120803833007812, 66.39952850341797, -7.92369270324707), number = 0}
    }

    for _, data in ipairs(remotesData) do
        local remote = data.remote
        local instance = data.instance
        local position = data.position
        local number = data.number

      
        fireRemoteWithDelay(remote, instance, position, number)
    end
end


fireRemotesInOrder()


_G.AutoUpgrade = true; 


while _G.AutoUpgrade do
    wait(3)
    local children = game:GetService("Workspace").Troop:GetChildren()
    for i = 1, #children do
        if children[i].Stats.Owner.Value == game:GetService("Players").LocalPlayer.Name then
            game:GetService("ReplicatedStorage").Events.TroopEvent:FireServer("Upgrade", children[i])
        end
    end
end
