local _M = {};

if module then
    city = _M
end

module ("city", package.seeall)



local function getClosestCityPoint()
local arr = {}
local giran = FVector(83431, 147926, -3400);
local hv = FVector(117116, 76870, -2696);
local oren = FVector(82977, 53233, -1497);
local dion = FVector(15464, 142915, -2700);
local aden = FVector(146802, 25756, -2014);
local goddard = FVector(147870, -55226, -2728);
local shuttgart = FVector(87073, -143421, -1293);
local runa = FVector(43845, -47760, -798);
table.insert(arr, {loc=giran, city="giran", gk=30080});
table.insert(arr, {loc=hv, city="hv", gk=30233});
table.insert(arr, {loc=oren, city="oren", gk=30177});
table.insert(arr, {loc=dion, city="dion", gk=30059});
table.insert(arr, {loc=aden, city="aden", gk=30848});
table.insert(arr, {loc=goddard, city="goddard", gk=31275});
table.insert(arr, {loc=shuttgart, city="shuttgart", gk=31964});
table.insert(arr, {loc=runa, city="runa", gk=31320});

ShowToClient("", "in CLOSEST CITY POINT")
    local me = GetMe():GetLocation();
    ShowToClient("", "GOT ME "..me.X)
	local sort_func = 
        function( a,b ) 
            local aDist = GetDistanceVector(me, a.loc)
            local bDist = GetDistanceVector(me, b.loc)
            return aDist < bDist
        end
    ShowToClient("", "ARR "..#arr)
    table.sort( arr, sort_func )
    ShowToClient("", "sorted ARR "..#arr)
    local result = table.remove(arr, 1);
    ShowToClient("", "result "..result.city)
    return result;
end

_M.getClosestCityPoint = getClosestCityPoint

return _M