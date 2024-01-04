local ScriptLoad = nil
local PlaceId_ADS = {6990129309,6990131029,6938803436,7274690025,7338881230,6990133340}
if game.PlaceId == 8304191830 or game.PlaceId == 8349889591 then
    ScriptLoad = "HSz_AA"
elseif game.PlaceId == 14433762945 then
    ScriptLoad = "HSz_ACS"
elseif table.find(PlaceId_ADS,game.PlaceId) then
	GameLoad = "HSz_ADS"
end
local hsz,err = pcall(function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/siradaniy/Script_HSz/main/" .. ScriptLoad .. ".lua"))()
end)

if hsz == false then
    print("Error : " .. err)
end
