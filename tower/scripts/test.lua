initStores = nil;
moveDistance = 30;
--SetDefaultTimeout(10*1000);

function Log(msg)
	ShowToClient("broker", msg);
	return;
end

table.filter = function(tbl, func)
 local newtbl= {}
     for i,v in pairs(tbl) do
	 	--if v.name == "7km" then Log(v.name) end;
         if func(v) then
	     table.insert(newtbl, v);
		 --Log(#newtbl.."");
         end
     end
     return newtbl
end

-- map(function, table)
 -- e.g: map(double, {1,2,3})    -> {2,4,6}
 function map(func, tbl)
     local newtbl = {}
     for i,v in pairs(tbl) do
         newtbl[i] = func(v)
     end
     return newtbl
 end
 
 function wait(seconds)
  local start = os.time()
  repeat until os.time() > start + seconds
end


function BuildArray(...)
	local arr = {}
	for v in ... do
		shopStatus = v:GetShopStatus();
		if shopStatus == 1 and v:IsValid() and v:CanSeeMe() then
			--arr[#arr + 1] = v
			table.insert(arr, {
				distance=v:GetDistance(),
				location = v:GetLocation(),
				shopStatus = v:GetShopStatus(),
				name = v:GetName(),
				id = v:GetId(),
				scanned = false
			})
		end;
	end
	return arr
end


function UpdateStore(char)
	for i,v in pairs(initStores) do
         if (char.name == v.name) then
		 	--Log("before scan "..GetCount());
	     	 v.scanned = true;
			 --Log("after scan "..GetCount());
			 --break end
         end;
     end;
	 return;
end
function MoveToGk()
	MoveTo(83328, 148153, -3400, moveDistance);
	TargetNpc("Кларисса", 30080);
	MoveTo(83424, 148014, -3400, moveDistance);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	return;
end
function GetCount()
	local scanned = table.filter(initStores, function(o) return o.scanned end);
	return #scanned;
end
function GetCloset()
	local stores = BuildArray(GetPlayerList().list);
	local sort_func = function( a,b ) return a.distance < b.distance end;
	table.sort( stores, sort_func );
	--Log("sorted new array");
	candidate = nil; 
	for k,char in pairs(stores) do
		globchar = char;
		--if (globchar:IsValid() == true) then
			found = getCharFromInit(char.name); 
			--Log(#found.." - found");
			if (#found ~= 0) then
				--Log(#found.."");
				if (found[1].scanned == false) then
					candidate = found[1];				
				end;
				-- table.insert(initStores, {
				-- 	distance=globchar:GetDistance(),
				-- 	location = globchar:GetLocation(),
				-- 	shopStatus = globchar:GetShopStatus(),
				-- 	name = globchar:GetName(),
				-- 	id = globchar:GetId(),
				-- 	scanned = false
				-- });
				-- local found = getCharFromInit(char.name); 
				-- candidate = found[1];
				-- Log("cand name "..candidate.name);
			end;
			if (candidate ~= nil) then
				break;
			end;
		--end;
	end;
	return candidate;
end



function getCharFromInit(name)
	--Log("getCharFromInit name "..name);
	return table.filter(initStores, function(o)
		--if o.name == "7km" then Log(o.name) end;
	 	return o.name == name 
	 end)
end

function Buff()
	TargetNpc("Помощник Путешественников", 32327);
	MoveTo(82853, 149250, -3464, moveDistance);
	Talk();
	ClickLinkAndWait("blessing_list001.htm");
	Click("menu_select?ask=-7&reply=2", "Receive supplemental magic.");
	MoveTo(82853, 149250, -3464, moveDistance);
end

while (true) do
Log("loop giran")
index = 1;
initStores = nil;
Log("Starting Giran")
--Buff()
initStores = BuildArray(GetPlayerList().list);
Log(#initStores.." stores around");	
while(index ~= #initStores) do
	Log(index.." / "..#initStores)	
	local char = GetCloset();
	if (char ~= nil) then
	Log(char.name .. " " ..char.distance);	
	MoveTo(char.location.X, char.location.Y, char.location.Z, 30);
	
	
	-- timer = function (time)
    -- local init = os.time()
    -- local diff=os.difftime(os.time(),init)
    -- while diff<time do
    --     coroutine.yield(diff)
    --     diff=os.difftime(os.time(),init)
    -- end
    -- print( 'Timer timed out at '..time..' seconds!')
	-- end
	-- co=coroutine.create(timer)
	-- coroutine.resume(co,30) -- timer starts here!
	-- while coroutine.status(co)~="dead" do
	-- if 
	-- 	print("time passed",select(2,coroutine.resume(co)))
	-- 	print('',coroutine.status(co))
	-- 	os.execute(sleep 10)
	-- end
	
	Target(char.id);
	Command("/Attack");
	UpdateStore(char);
	index = index +1;
	--wait(1);
	end;
end
Log("Done, moving to GK");
MoveToGk();
end