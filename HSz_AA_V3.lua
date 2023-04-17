local StarterGui = game:GetService("StarterGui")
local Link = game:HttpGet("https://raw.githubusercontent.com/siradaniy/Script_HSz/main/AA_V3.lua")

if Link then
  StarterGui:SetCore("SendNotification", {
		Title = "HOLYSHz Notification",
		Text = "Welcome. Loading script.",
		Duration = 10
	})
	loadstring(Link)()
end
