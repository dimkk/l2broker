local _M = {};

if module then
    traders = _M
end

module ("traders", package.seeall)

local function BuildArray(users, dist)
	local arr = {};
    if dist == nil then dist = 9999999 end
	for v in users do
		shopStatus = v:GetShopStatus();
		if shopStatus == 1 or shopStatus == 3 or shopStatus == 8 then --1 продажа, 3 покупка, 8 балкпродажа
			--arr[#arr + 1] = v
            if v:GetDistance() < dist then
                table.insert(arr, {
                    distance=v:GetDistance(),
                    location = v:GetLocation(),
                    shopStatus = v:GetShopStatus(),
                    name = v:GetName(),
                    id = v:GetId()
                })
            end
		end;
	end
	return arr
end

_M.BuildArray = BuildArray

return _M