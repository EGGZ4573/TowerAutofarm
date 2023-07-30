-- made by eggnology 
local remoteFunction = game:GetService("ReplicatedStorage").Events.PrivateServerEvent


local function fireRemoteWithDelay(delay, ohString1, ohValue2)
    wait(delay)
    remoteFunction:FireServer(ohString1, ohValue2)
end

wait(25) -- in seconds make this how long it takes you to load in

local ohString1 = "Create"
local ohBoolean2 = true
fireRemoteWithDelay(1, ohString1, ohBoolean2)

local ohString1 = "Mode"
local ohString2 = "Challenge Mode"
fireRemoteWithDelay(2, ohString1, ohString2)


local ohString1 = "Update"
local ohTable2 = {
    ["Map"] = game:GetService("ReplicatedStorage").Maps.DoorsMap
}
fireRemoteWithDelay(3, ohString1, ohTable2)


local ohString1 = "Difficulty"
local ohNumber2 = 2
fireRemoteWithDelay(4, ohString1, ohNumber2)


local ohString1 = "Start"
fireRemoteWithDelay(5, ohString1)
