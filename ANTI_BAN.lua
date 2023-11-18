local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/lime"))()

local w = Library:Window("Main")

w:Button("1", function()
      getgenv().credit = "0"


if getgenv().credit == "0" then
 print"script loaded"
else
 game.Players.LocalPlayer:Kick("Credit Is LOI!, Dont Touch IT")
            end
end)
