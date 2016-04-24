local _M = {};

if module then
    roam = _M
end

module ("roam", package.seeall)

function wait(seconds)
  local start = os.time()
  repeat until os.time() > start + seconds
end
function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end


function getClosest(arr)
    m = GetMe()
    me = m:GetLocation();
    local sort_func = 
        function( a,b ) 
            local aDist = GetDistanceVector(me, a.location)
            local bDist = GetDistanceVector(me, b.location)
            return aDist < bDist
        end
    table.sort( arr, sort_func )
    local result = table.remove(arr, 1);
    return result;
end

function goScan(myArr)
    ShowToClient("goScan", #myArr.." ");	
	local sort_func = function( a,b ) return a.distance < b.distance end
	table.sort( myArr, sort_func )
	local newArr = deepcopy(myArr);
	for k,char in pairs(myArr) do
        local newChar = getClosest(newArr);
		ShowToClient("test", newChar.name .. " " ..newChar.distance.." "..k.." / "..#myArr );	
		MoveTo(newChar.location.X, newChar.location.Y, newChar.location.Z, 30);
		Target(newChar.id);
		Command("/Attack");
    end;
end;


_M.goScan = goScan

return _M