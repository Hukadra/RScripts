local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("YBA Script")

local r = w:CreateFolder("SBR")

local b = w:CreateFolder("Auto Stand")

local a = w:CreateFolder("Others")

a:DestroyGui()

r:Button("SBR Competitive",function()

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

r:Button("SBR Casual",function()

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

b:Button("Worthiness Giver",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Hukadra/RScripts/main/worth.lua"))()
end)

b:Button("Rokakaka",function()

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

b:Button("Mysterious Arrow",function()

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
