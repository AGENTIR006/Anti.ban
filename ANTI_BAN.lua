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
    getgenv().credit = "HERE_CREDIT_NAME"


if getgenv().credit == "HERE_CREDIT_NAME" then
 print"script loaded"
else
 game.Players.LocalPlayer:Kick("Credit Is LOI!, Dont Touch IT")
    end
end) 
