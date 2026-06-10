local Url = "https://raw.githubusercontent.com/MasterNoob6291/Ultimate-Build-Omni-Tools/refs/heads/main/OmniKEY"
local Http = Instance.new("Http")

Http.Position = script.Position + Vector3.new(0,5,0)
Http.Size = Vector3.new(1,1,1)
Http.Anchored = true
Http:SetAttribute("Mode", "GetAsync")
Http:SetAttribute("Url", Url)
Http:SetAttribute("Update", true)
repeat wait() until Http:GetAttribute("Processing", false)

local Data = Http:GetAttribute(Output)

local CustomModule = require(getfenv(Weld).script)

local LoadStringModule = require(getfenv().script.Parent)
LoadStringModule(Data, CustomModule({}, script.Part))()
