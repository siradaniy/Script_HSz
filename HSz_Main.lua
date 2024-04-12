local ScriptLoadHSz = nil
local PlaceId_ACS = {14433762945,14551143850} --Anime Champions Simulator
local PlaceId_AA = {8304191830,8349889591,10098525303,14229762361,14229839966,14918509670} --Anime Adventures
local PlaceId_ADS = {6938803436,7274690025,7338881230,6990133340,6990129309,6990131029} --Anime Dimensions simulator
local PlaceId_ALS = {12900046592,14368918515,12886143095,14368918515} --Anime Last Stand
local PlaceId_ADF = {12135640403,15502802192,15502802094} --Anime Dungeon Fighters 
local PlaceId_SB3 = {14819493140,14819490378,15695929915,11523257493,16468939104,16582687738} --Swordburst 3
local PlaceId_GE = {14115013144,15910166475,16367837244} --Grimoires Era
local PlaceId_CTD = {12317373094,14457745436} --Champions TD


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
elseif table.find(PlaceId_SB3,game.PlaceId) then
	ScriptLoadHSz = "HSz_SB3"
elseif table.find(PlaceId_GE,game.PlaceId) then
	ScriptLoadHSz = "HSz_GE"
elseif table.find(PlaceId_CTD,game.PlaceId) then
	ScriptLoadHSz = "HSz_CTD"
end

local hsz,err = pcall(function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/siradaniy/Script_HSz/main/" .. ScriptLoadHSz .. ".lua"))()
end)

if hsz == false then
    print("Error : " .. err)
end
