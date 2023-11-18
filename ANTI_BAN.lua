local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/lime"))()

local w = Library:Window("Main")



w:Toggle("1", function(v)
   getgenv().credit = "HERE_CREDIT_NAME"


if getgenv().credit == "HERE_CREDIT_NAME" then
 print"script loaded"
else
 game.Players.LocalPlayer:Kick("Credit Is LOI!, Dont Touch IT")
      end(v)
end)


w:Toggle("2", function(v)
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
end)(v)
end)
w:Toggle("3", function(v)
   loadstring(game:HttpGet('https://raw.githubusercontent.com/katrina367/ScriptBlox-Projects/main/Anti%20Chat%20Banner'))()(v)
end)

w:Toggle("4", function(v)
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
   print(v)
end)
           if eval2[1] then
               game:GetService("NetworkClient"):SetOutgoingKBPSLimit(0, outgoingkey) 
               game.Players.LocalPlayer:Kick("Game attempted to ban you but was blocked") 
               return wait(9e9)
           end
       end
   end
   return X(self, ...)
end)(v)
end)


w:Toggle("5", function(v)
   -- YOU NEED TO SET IT UP BELOW
local pos = Vector3.new(0,0,0) -- your pos here
local delay = 10 -- tp tween speed like how many seconds takes to tp

-- do not edit below cuz breaks script

local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(delay,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then
    local cf = CFrame.new(pos)
    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
    a:Play()
end(v)
end)


w:Toggle("6", function(v)
   local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Anir Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Chat Log's"
})

--[[
Name = <string> - The name of the section.
]]
OrionLib:MakeNotification({
    Name = "From Anir",
    Content = "U better ont leak it!",
    Image = "rbxassetid://4483345998",
    Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]
--This script reveals ALL hidden messages in the default chat
--chat "/spy" to toggle!
enabled = true
--if true will check your messages too
spyOnMyself = true
--if true will chat the logs publicly (fun, risky)
public = false
--if true will use /me to stand out
publicItalics = true
--customize private logs
privateProperties = {
    Color = Color3.fromRGB(0,255,255); 
    Font = Enum.Font.SourceSansBold;
    TextSize = 18;
}
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance
 
local function onChatted(p,msg)
    if _G.chatSpyInstance == instance then
        if p==player and msg:lower():sub(1,4)=="/spy" then
            enabled = not enabled
            wait(0.3)
            privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
            StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
        elseif enabled and (spyOnMyself==true or p~=player) then
            msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
            local hidden = true
            local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
                if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
                    hidden = false
                end
            end)
            wait(1)
            conn:Disconnect()
            if hidden and enabled then
                if public then
                    saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
                else
                    privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
                    StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
                end
            end
        end
    end
end
 
for _,p in ipairs(Players:GetPlayers()) do
    p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
    p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)
privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)(v)
end)
