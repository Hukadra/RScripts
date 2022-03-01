local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Venyx", 5013109572)

local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

local page = venyx:addPage("YBA Script", 5012544693)
local section1 = page:addSection("SBR")
local section2 = page:addSection("Auto Stand")
local section4 = page:addSection("Others")

section1:addButton("SBR Competitive", function()
       local comp = {
              [1] = "EndDialogue",
              [2] = {
                  ["NPC"] = "[COMPETITIVE] Metal Ball Run",
                  ["Option"] = "Option1",
                  ["Dialogue"] = "Dialogue2"
              }
          }
      
          game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(comp))
      
end)

section1:addButton("SBR Casual", function()

       local cas = {
              [1] = "EndDialogue",
              [2] = {
                  ["NPC"] = "Metal Ball Run",
                  ["Option"] = "Option1",
                  ["Dialogue"] = "Dialogue2"
              }
          }
      
          game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(cas))
end)

section4:addButton("Toggle GUI", function()
	venyx:toggle()
end)

section4:addKeybind("TG Bind", Enum.KeyCode.Tab, function()
	venyx:toggle()
end, function()

end)

-- section2:addSlider("Slider Test", 1, 1, 100, function(value)
--	print("Dragged", value)
-- end)

section2:addButton("Mysterious Arrow", function ()
       local kek2 = {
              [1] = "EndDialogue",
              [2] = {
                  ["NPC"] = "Mysterious Arrow",
                  ["Option"] = "Option1",
                  ["Dialogue"] = "Dialogue2"
              }
          }
      
          game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(kek2))
end)

section2:addButton("Rokakaka", function ()
       local kek2 = {
              [1] = "EndDialogue",
              [2] = {
                  ["NPC"] = "Rokakaka",
                  ["Option"] = "Option1",
                  ["Dialogue"] = "Dialogue2"
              }
          }
      
          game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(kek2))
end)

section2:addButton("Worthiness", function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Hukadra/RScripts/main/worth.lua"))()
end)

local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do
	colors:addColorPicker(theme, color, function(color3)
		venyx:setTheme(theme, color3)
	end)
end

-- load
venyx:SelectPage(venyx.pages[1], true)
