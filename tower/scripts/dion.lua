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
moveDistance = 30;
ww = 5;
function hvToAden()
	MoveTo(117116, 76870, -2696, moveDistance);
	TargetNpc("Эсмеральда", 30233);
	Talk();
	MoveTo(117114, 76895, -2697, moveDistance);
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3547920512_0_57_1209026042_3", "1010023");
	--WaitForTeleport();
	wait(ww);
	MoveTo(146788, 25803, -2014, moveDistance);
end;
function adenToGdd()
	MoveTo(146802, 25756, -2014, moveDistance);
	TargetNpc("Элиза", 30848);
	Talk();
	MoveTo(146802, 25777, -2014, moveDistance);
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3562292912_0_57_1209024388_3", "1010199");
	--WaitForTeleport();
	wait(ww);
	MoveTo(148029, -55286, -2735, moveDistance);
end;
function gddToRuna()
	MoveTo(148029, -55286, -2735, moveDistance);
	TargetNpc("Татьяна", 31275);
	MoveTo(148014, -55283, -2735, moveDistance);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3580045328_3_57_1209024748_3", "1010200");
	--WaitForTeleport();
	wait(ww);
	MoveTo(43840, -47754, -798, moveDistance);
	MoveTo(43845, -47760, -798, moveDistance);
end;
function runaToShtt()
	MoveTo(43845, -47760, -798, moveDistance);
	TargetNpc("Ильяна", 31320);
	Talk();
	MoveTo(43837, -47708, -798, moveDistance);
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3594981536_5_57_1209024779_3", "1010574");
	--WaitForTeleport();
	wait(ww);
	MoveTo(87131, -143525, -1293, moveDistance);
	MoveTo(87121, -143523, -1293, moveDistance);
end;
function shttToDion()
	MoveTo(87073, -143421, -1293, moveDistance);
	TargetNpc("Билия", 31964);
	MoveTo(87070, -143440, -1293, moveDistance);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3608201728_6_57_1209026260_3", "1010006");
	--WaitForTeleport();
	wait(ww);
	MoveTo(15477, 142875, -2702, moveDistance);
	MoveTo(15468, 142890, -2701, moveDistance);
end;
function dionToOren()
	MoveTo(15464, 142915, -2700, moveDistance);
	TargetNpc("Триша", 30059);
	MoveTo(15534, 142909, -2706, moveDistance);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3538797056_7_57_1209024218_3", "1010013");
	--WaitForTeleport();
	wait(ww);
	MoveTo(82976, 53202, -1497, moveDistance);
	MoveTo(82970, 53209, -1497, moveDistance);
end;
function orenToHv()
	MoveTo(82977, 53233, -1497, moveDistance);
	TargetNpc("Валентина", 30177);
	MoveTo(82963, 53233, -1497, moveDistance);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3543405616_9_57_1209024514_3", "1010020");
	--WaitForTeleport();
	wait(ww);
	MoveTo(117093, 76926, -2697, moveDistance);
	MoveTo(117095, 76941, -2697, moveDistance);
end;
function scan()
	local myArr = BuildArray(GetPlayerList().list);
	ShowToClient("test", #myArr.." ");	
	
	local sort_func = function( a,b ) return a.distance < b.distance end
	table.sort( myArr, sort_func )
	
	for k,char in pairs(myArr) do
		ShowToClient("test", char.name .. " " ..char.distance.." "..k.." / "..#myArr.." run number "..index );	
		MoveTo(char.location.X, char.location.Y, char.location.Z, 30);
		Target(char.id);
		Command("/Attack");
	end;
end;

-- function checkCity()
-- 	local = [
-- 		30233, 
-- 	]
-- end

index = 1;
while (true) do
index = index + 1;
scan();
dionToOren()
scan();
orenToHv()
scan();
hvToAden()
scan();
adenToGdd()
scan();
gddToRuna()
scan();
runaToShtt()
scan();
shttToDion();
end;

