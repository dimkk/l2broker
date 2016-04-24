local module = {}
local function BuildArray(...)
	local arr = {}
	for v in ... do
		shopStatus = v:GetShopStatus();
		if shopStatus == 1 or shopStatus == 3 or shopStatus == 8 then --1 продажа, 3 покупка, 8 балкпродажа
			--arr[#arr + 1] = v
			table.insert(arr, {
				distance=v:GetDistance(),
				location = v:GetLocation(),
				shopStatus = v:GetShopStatus(),
				name = v:GetName(),
				id = v:GetId()
			})
		end;
	end
	return arr
end

module.BuildArray = BuildArray
return module