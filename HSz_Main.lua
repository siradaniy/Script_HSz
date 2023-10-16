local ScriptLoad = nil
local PlaceId = {}
if game.PlaceId == 8304191830 then
    ScriptLoad = "HSz_AA"
elseif game.PlaceId ~= 8304191830 then
    ScriptLoad = "HSz_AA"
elseif game.PlaceId == 14433762945 then
    ScriptLoad = "HSz_ACS"
end
local var,err = pcall(function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/siradaniy/Script_HSz/main/" .. ScriptLoad .. ".lua"))()
end)

if var == false  then
    print("Error : " .. err)
end
