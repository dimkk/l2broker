-- load namespace
dofile(package.path .. "socket.lua");
dofile(package.path .. "url.lua");
dofile(package.path .. "ltn12.lua");
dofile(package.path .. "mime.lua");
dofile(package.path .. "ssl.lua");
dofile(package.path .. "http.lua");
dofile(package.path .. "https.lua");
local http = require("ssl.https")

local resp = {}

client, code = ssl.https.request { url="https://api.pushbullet.com/api/devices", sink=ltn12.sink.table(resp) }
if (code == 401 and string.match(resp[1], "invalid_user")) then
	ShowToClient("Info", "HTTPS works");
else
	ShowToClient("Error", "HTTPS dont works");
end;

