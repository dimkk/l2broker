-- load namespace
dofile(package.path .. "socket.lua");
dofile(package.path .. "url.lua");
dofile(package.path .. "ltn12.lua");
dofile(package.path .. "mime.lua");
dofile(package.path .. "http.lua");
local http = require("socket.http")

local resp = {}

client, code = http.request { url="http://www.update.l2tower.eu/update/version", sink=ltn12.sink.table(resp) }
if (code ~= 200 ) then
	ShowToClient("Error", "Can't check latest L2Tower bot version");
else
	ShowToClient("Your version", GetL2TowerVersion());
	ShowToClient("Latest version", resp[1]);
	if (GetL2TowerVersion() == resp[1]) then
		ShowToClient("Info", "You got latest version of L2Tower Bot");
	else
		ShowToClient("Info", "Please update L2Tower bot");
	end;
end;

