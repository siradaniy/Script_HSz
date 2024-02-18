local ScriptLoadHSz = nil
local PlaceId_ACS = {14433762945,14551143850}
local PlaceId_AA = {8304191830,8349889591,10098525303,14229762361,14229839966,14918509670}
local PlaceId_ADS = {6938803436,7274690025,7338881230,6990133340,6990129309,6990131029}
local PlaceId_ALS = {12900046592,14368918515,12886143095}
local PlaceId_ADF = {12135640403,15502802192}

if table.find(PlaceId_ACS,game.PlaceId) then
    ScriptLoadHSz = "HSz_ACS"
elseif table.find(PlaceId_AA,game.PlaceId) then
    ScriptLoadHSz = "HSz_AA"
elseif table.find(PlaceId_ADS,game.PlaceId) then
	ScriptLoadHSz = "HSz_ADS"
elseif table.find(PlaceId_ALS,game.PlaceId) then
	ScriptLoadHSz = "HSz_ALS"
elseif table.find(PlaceId_ADF,game.PlaceId) then
	ScriptLoadHSz = "HSz_ADF"
end

local hsz,err = pcall(function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/siradaniy/Script_HSz/main/" .. ScriptLoadHSz .. ".lua"))()
end)

if hsz == false then
    print("Error : " .. err)
end
