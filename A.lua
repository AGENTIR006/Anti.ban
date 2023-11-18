local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()

local OwO = library:Window("Table Turtle Hub")

OwO:Toggle("1", true, function(bool)
    getgenv().credit = "HERE_CREDIT_NAME"


if getgenv().credit == "HERE_CREDIT_NAME" then
 print"script loaded"
else
 game.Players.LocalPlayer:Kick("Credit Is LOI!, Dont Touch IT")
        end(bool)
end)
OwO:Toggle("2", true, function(bool)
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
end)(bool)
end)
OwO:Toggle("3", true, function(bool)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/katrina367/ScriptBlox-Projects/main/Anti%20Chat%20Banner'))()(bool)
end)
OwO:Toggle("4", true, function(bool)
  
local X;
X = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "Ban" then
       local eval1 = {false}
       local eval2 = {false}
       local args = {...}
       if debug.validlevel(3) and self.Parent == nil then
           local stack = debug.getstack(3)
           local counter = 0
           local expected;
           for i,v in pairs(stack) do
               if v == game.Players.LocalPlayer.Name or v == "Ban" or v == "Packet" or v == "Network" then
                   counter = counter + 1
               elseif type(v) == "number" then
                   if type(expected) == "number" then
                       expected = expected + v
                   else
                       expected = v
                   end
               end
           end
           if counter == expected then
               eval1 = {true, counter+5}
           end
       end
       if eval1[1] then
           if #args == eval1[2] then
               local counter = 0
               local outgoingkey;
               for i,v in pairs(args) do
                   if v == game.Players.LocalPlayer.Name or v == "Ban" or v == "Packet" or v == "Network" then
                       counter = counter + 1
                   elseif tostring(i) == "userdata: 0x000000001bdfb8ea" then --current outgoing key address, could change if roblox updates
                       outgoingkey = v
                   end
                   if counter == eval1[2] then
                       eval2 = {true, outgoingkey}
                   end
               end
           end
           if eval2[1] then
               game:GetService("NetworkClient"):SetOutgoingKBPSLimit(0, outgoingkey) 
               game.Players.LocalPlayer:Kick("Game attempted to ban you but was blocked")
               return wait(9e9)
           end
       end
   end
   return X(self, ...)
end)(bool)
end)
OwO:Toggle("5", true, function(bool)
    
local pos = Vector3.new(0,0,0) 
local delay = 10 


local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(delay,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then
    local cf = CFrame.new(pos)
    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
    a:Play()
        end(bool)
end)
OwO:Toggle("6", true, function(bool)
    loadstring(game:HttpGet("https://pastebin.com/raw/TsVgzGf5", true))()(bool)
        print(bool)
end)
