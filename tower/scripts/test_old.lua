function wait(seconds)
  local start = os.time()
  repeat until os.time() > start + seconds
end

function BuildArray(...)
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

index = 1;
while (true) do
ShowToClient("test", "============================="..index);	
	local myArr = BuildArray(GetPlayerList().list);
	ShowToClient("test", #myArr.." ");	
	
	local sort_func = function( a,b ) return a.distance < b.distance end
	table.sort( myArr, sort_func )
	
	for k,char in pairs(myArr) do
		ShowToClient("test", char.name .. " " ..char.distance.." "..k.." / "..#myArr );	
		MoveTo(char.location.X, char.location.Y, char.location.Z, 30);
		Target(char.id);
		Command("/Attack");
		
		
	end;
index = index + 1;
wait(1);
end;

