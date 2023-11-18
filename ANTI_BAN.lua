local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/lime"))()

local w = Library:Window("Main")

w:Button("1", function()
      getgenv().credit = "HERE_CREDIT_NAME"


if getgenv().credit == "HERE_CREDIT_NAME" then
 print"script loaded"
else
 game.Players.LocalPlayer:Kick("Credit Is LOI!, Dont Touch IT")
      end
   print("1")
end)
