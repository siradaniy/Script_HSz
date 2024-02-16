local ScriptLoad = nil
local PlaceId_ACS = {14433762945,14551143850}
local PlaceId_AA = {8304191830,8349889591,10098525303,14229762361,14229839966,14918509670}
local PlaceId_ADS = {6938803436,7274690025,7338881230,6990133340,6990129309,6990131029}
local PlaceId_ALS = {12900046592,14368918515}

if table.find(PlaceId_ACS,game.PlaceId) then
    ScriptLoad = "HSz_ACS"
elseif table.find(PlaceId_AA,game.PlaceId) then
    ScriptLoad = "HSz_AA"
elseif table.find(PlaceId_ADS,game.PlaceId) then
	ScriptLoad = "HSz_ADS"
elseif table.find(PlaceId_ALS,game.PlaceId) then
	ScriptLoad = "HSz_ALS"
end
local hsz,err = pcall(function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/siradaniy/Script_HSz/main/" .. ScriptLoad .. ".lua"))()
end)

if hsz == false then
    print("Error : " .. err)
end
