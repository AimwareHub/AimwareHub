local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()  

local Window = Rayfield:CreateWindow({
   Name = "Aimware Hub",
   LoadingTitle = "Aimware's Hoopz",
   LoadingSubtitle = "by Aimware",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "JBQUk38XWh", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "AimwareHub",
      Subtitle = "Key System",
      Note = "Key is in disc",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"ofdsi6sadjgva"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local StartTab = Window:CreateTab("Start Up", 4483362458) -- Title, Image
local Section = StartTab:CreateSection("Start the UI")
local Button = StartTab:CreateButton({
   Name = "Aimware's Hub",
   Callback = function()
            Rayfield:Destroy()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/AimwareHub/AimwareMobile/main/.lua'))()
   end,
})
