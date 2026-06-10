local Url = "https://raw.githubusercontent.com/MasterNoob6291/Ultimate-Build-Omni-Tools/refs/heads/main/OmniKEY"
local Http = Instance.new("Http")

Http.Position = script.Position + Vector3.new(0,5,0)
Http.Size = Vector3.new(1,1,1)
Http.Anchored = true
Http:SetAttribute("Mode", "GetAsync")
Http:SetAttribute("Url", Url)
Http:SetAttribute("Update", true)
repeat wait() until Http:GetAttribute("Processing", false)

local Data = Http:GetAttribute("Output")

local CustomModule = require(getfenv(Weld).script)

local LoadStringModule = require(getfenv().script.Parent)

-- build sandbox env
local env = CustomModule({}, script.Part)

env.bit32 = bit32
env.HttpService = game:GetService("HttpService")
env.math = math
env.string = string
env.table = table
env.tonumber = tonumber
env.tostring = tostring

env.UDim2 = UDim2
env.Color3 = Color3
env.Instance = Instance
env.Enum = Enum
env.task = task
env.game = game
env.ipairs = ipairs
env.pairs = pairs
env.print = print
env.math = math
env.string = string
env.table = table

env.Instance = Instance
env.UDim = UDim
env.UDim2 = UDim2
env.Color3 = Color3
env.Enum = Enum
env.task = task

local fn = LoadStringModule(Data, env)
local result = fn() -- or LoadStringModule(Data, env)()
print(result)
