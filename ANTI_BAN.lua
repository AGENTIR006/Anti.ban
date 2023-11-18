local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("ANTI BAN") 
local b = w:CreateFolder("ANTI BAN")
b:Label("x2Swiftz",{
    TextSize = 25; 
    TextColor = Color3.fromRGB(255,255,255); 
    BgColor = Color3.fromRGB(69,69,69); 
    
}) 

b:Toggle("Toggle",function(bool)
    shared.toggle = bool
    print(shared.toggle)
        if getgenv().credit == "HERE_CREDIT_NAME" then
 print"script loaded"
else
 game.Players.LocalPlayer:Kick("Credit Is LOI!, Dont Touch IT")
    end
end) 
end)

b:Toggle("Toggle",function(bool)
    shared.toggle = bool
    print(shared.toggle)
assert(getrawmetatable)
grm = getrawmetatable(game)
setreadonly(grm, false)
old = grm.namecall
grm.namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(args[1]) == "TeleportDetect" then
        return
    elseif tostring(args[1]) == "CHECKER_1" then
        return
    elseif tostring(args[1]) == "CHECKER" then
        return
    elseif tostring(args[1]) == "GUI_CHECK" then
        return
    elseif tostring(args[1]) == "OneMoreTime" then
        return
    elseif tostring(args[1]) == "checkingSPEED" then
        return
    elseif tostring(args[1]) == "BANREMOTE" then
        return
    elseif tostring(args[1]) == "PERMAIDBAN" then
        return
    elseif tostring(args[1]) == "KICKREMOTE" then
        return
    elseif tostring(args[1]) == "BR_KICKPC" then
        return
    elseif tostring(args[1]) == "BR_KICKMOBILE" then
        return
    end
    return old(self, ...)
end)
end) 
end)


