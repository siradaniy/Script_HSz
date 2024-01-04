local ScriptLoad = nil
local PlaceId = {}
if game.PlaceId == 8304191830 or game.PlaceId == 8349889591 then
    ScriptLoad = "HSz_AA"
elseif game.PlaceId == 14433762945 then
    ScriptLoad = "HSz_ACS"
elseif game.PlaceId == 6990129309 or game.PlaceId == 6938803436 or game.PlaceId == 7274690025 or game.PlaceId == 7338881230 then
    ScriptLoad = "HSz_ADS"
end
local hsz,err = pcall(function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/siradaniy/Script_HSz/main/" .. ScriptLoad .. ".lua"))()
end)

if hsz == false then
    print("Error : " .. err)
end
