dofile(package.path .. "/roam/traders.lua");
dofile(package.path .. "/roam/city.lua");
dofile(package.path .. "/roam/roam.lua");

local traders = require("traders");
local city = require("city");
local roam = require("roam");
local moveDistance = 30;

function scan(dist)
    ShowToClient("", "in Scan")
    local myArr = traders.BuildArray(GetPlayerList().list, dist);
    roam.goScan(myArr); 
end

function goScanGiran()
    ShowToClient("", "in Scan Giran")
    MoveTo(82127, 148134, -3464, moveDistance);
    scan(1500) --центр
    MoveTo(82135, 148128, -3470, moveDistance);
    MoveTo(81937, 148077, -3470, moveDistance);
    MoveTo(81823, 148044, -3470, moveDistance);
    MoveTo(81598, 147604, -3470, moveDistance);
    MoveTo(81505, 147225, -3534, moveDistance);
    MoveTo(81555, 146894, -3534, moveDistance);
    MoveTo(81521, 146951, -3534, moveDistance);
    scan(400) --кристаллы
    MoveTo(81515, 146906, -3534, moveDistance);
    MoveTo(81515, 146906, -3534, moveDistance);
    MoveTo(81515, 146906, -3534, moveDistance);
    MoveTo(81515, 146906, -3534, moveDistance);
    MoveTo(81515, 146906, -3534, moveDistance);
    MoveTo(81108, 146940, -3534, moveDistance);
    MoveTo(80594, 146955, -3534, moveDistance);
    scan(600) --таурин
    MoveTo(79726, 146718, -3522, moveDistance);
    MoveTo(79507, 146808, -3522, moveDistance);
    MoveTo(79483, 146865, -3525, moveDistance);
    MoveTo(79507, 147063, -3534, moveDistance);
    MoveTo(79700, 147502, -3534, moveDistance);
    MoveTo(80152, 147654, -3509, moveDistance);
    MoveTo(80168, 147647, -3509, moveDistance);
    MoveTo(80185, 147640, -3509, moveDistance);
    MoveTo(80187, 147639, -3509, moveDistance);
    MoveTo(80187, 147639, -3509, moveDistance);
    MoveTo(80292, 147767, -3509, moveDistance);
    scan(200) --гросери
    MoveTo(80412, 147894, -3509, moveDistance);
    MoveTo(80203, 148129, -3509, moveDistance);
    MoveTo(80194, 148137, -3509, moveDistance);
    MoveTo(80056, 148202, -3525, moveDistance);
    MoveTo(80007, 148220, -3534, moveDistance);
    MoveTo(79840, 148255, -3534, moveDistance);
    MoveTo(79809, 148423, -3534, moveDistance);
    MoveTo(79810, 148649, -3534, moveDistance);
    MoveTo(79778, 148631, -3534, moveDistance);
    MoveTo(79801, 148972, -3534, moveDistance);
    MoveTo(79801, 148972, -3534, moveDistance);
    MoveTo(79793, 148811, -3534, moveDistance);
    MoveTo(79758, 148853, -3534, moveDistance);
    MoveTo(79771, 148688, -3534, moveDistance);
    MoveTo(79721, 148681, -3534, moveDistance);
    MoveTo(79696, 148661, -3534, moveDistance);
    MoveTo(79623, 148668, -3534, moveDistance);
    MoveTo(79483, 148664, -3534, moveDistance);
    MoveTo(78866, 148638, -3598, moveDistance);
    MoveTo(78045, 148522, -3598, moveDistance);
    MoveTo(77731, 148503, -3598, moveDistance);
    MoveTo(77539, 148439, -3598, moveDistance);
    scan(200) --кузня
    MoveTo(77601, 148167, -3597, moveDistance);
    MoveTo(77562, 148318, -3597, moveDistance);
    MoveTo(77575, 148469, -3598, moveDistance);
    MoveTo(78006, 148501, -3598, moveDistance);
    MoveTo(79162, 148503, -3541, moveDistance);
    MoveTo(79585, 148472, -3534, moveDistance);
    MoveTo(79778, 148432, -3534, moveDistance);
    MoveTo(79850, 147895, -3534, moveDistance);
    MoveTo(80062, 147347, -3534, moveDistance);
    MoveTo(80413, 147224, -3534, moveDistance);
    MoveTo(80559, 147158, -3534, moveDistance);
    MoveTo(80789, 147101, -3534, moveDistance);
    MoveTo(80867, 147069, -3534, moveDistance);
    MoveTo(80992, 146993, -3534, moveDistance);
    MoveTo(81231, 146895, -3534, moveDistance);
    MoveTo(81424, 146946, -3534, moveDistance);
    MoveTo(81585, 147226, -3534, moveDistance);
    MoveTo(81576, 147371, -3480, moveDistance);
    MoveTo(81598, 147386, -3472, moveDistance);
    MoveTo(81598, 147442, -3465, moveDistance);
    MoveTo(81594, 147584, -3470, moveDistance);
    MoveTo(81730, 147710, -3470, moveDistance);
    MoveTo(81608, 147631, -3470, moveDistance);
    MoveTo(81584, 147452, -3465, moveDistance);
    MoveTo(81547, 147040, -3534, moveDistance);
    MoveTo(81473, 146347, -3534, moveDistance);
    MoveTo(81473, 145889, -3534, moveDistance);
    MoveTo(81434, 145562, -3534, moveDistance);
    MoveTo(81033, 145551, -3534, moveDistance);
    MoveTo(80828, 145544, -3534, moveDistance);
    scan(400) --перед люксором
    MoveTo(80621, 145520, -3534, moveDistance);
    MoveTo(80621, 145520, -3534, moveDistance);
    MoveTo(80621, 145520, -3534, moveDistance);
    MoveTo(80621, 145520, -3534, moveDistance);
    MoveTo(80367, 145729, -3534, moveDistance);
    MoveTo(80125, 145827, -3497, moveDistance);
    MoveTo(79963, 145787, -3497, moveDistance);
    MoveTo(79788, 145674, -3497, moveDistance);
    scan(300) --люксор
    MoveTo(79711, 145528, -3496, moveDistance);
    MoveTo(79740, 145532, -3496, moveDistance);
    MoveTo(79776, 145593, -3497, moveDistance);
    MoveTo(79978, 145746, -3497, moveDistance);
    MoveTo(80098, 145818, -3497, moveDistance);
    MoveTo(80225, 145789, -3534, moveDistance);
    MoveTo(80254, 145777, -3534, moveDistance);
    MoveTo(80463, 145684, -3534, moveDistance);
    MoveTo(80849, 145502, -3534, moveDistance);
    MoveTo(81397, 145581, -3534, moveDistance);
    MoveTo(81446, 145744, -3534, moveDistance);
    MoveTo(81535, 146764, -3534, moveDistance);
    MoveTo(81500, 147363, -3480, moveDistance);
    MoveTo(81560, 147445, -3465, moveDistance);
    MoveTo(81593, 147541, -3470, moveDistance);
    MoveTo(81711, 147757, -3470, moveDistance);
    MoveTo(83402, 147871, -3406, moveDistance);
    TargetNpc("Кларисса", 30080);
    MoveTo(83427, 147888, -3406, moveDistance);
    Talk();
    ClickAndWait("teleport_request", "Teleport");
    ClickAndWait("teleport_3547261648_2_57_1209030033_3", "1010006");--dion
    WaitForTeleport();
end
function goScanHv()
ShowToClient("", "in Scan hv")
    scan(1500)
    MoveTo(117116, 76870, -2696, moveDistance);
	TargetNpc("Эсмеральда", 30233);
	Talk();
	MoveTo(117114, 76895, -2697, moveDistance);
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3547920512_0_57_1209026042_3", "1010023");
    WaitForTeleport();
end

function goScanOren()
ShowToClient("", "in Scan oren")
    scan(1500)
    MoveTo(82977, 53233, -1497, moveDistance);
	TargetNpc("Валентина", 30177);
	MoveTo(82963, 53233, -1497, moveDistance);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3543405616_9_57_1209024514_3", "1010020");
	WaitForTeleport();
end

function goScanDion()
ShowToClient("", "in Scan dion")
    scan(2000)
    MoveTo(15464, 142915, -2700, moveDistance);
	TargetNpc("Триша", 30059);
	MoveTo(15534, 142909, -2706, moveDistance);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3538797056_7_57_1209024218_3", "1010013");
	WaitForTeleport();
end

function goScanAden()
ShowToClient("", "in Scan aden")
    scan(400) --гк
    MoveTo(147254, 25804, -2014, moveDistance);
    MoveTo(147406, 25807, -2014, moveDistance);
    MoveTo(147403, 26589, -2205, moveDistance);
    scan(800) --центр
    MoveTo(147439, 26830, -2205, moveDistance);
    MoveTo(147439, 26830, -2205, moveDistance);
    MoveTo(147441, 26803, -2205, moveDistance);
    MoveTo(147434, 26726, -2205, moveDistance);
    MoveTo(147442, 26757, -2205, moveDistance);
    MoveTo(147452, 26777, -2205, moveDistance);
    MoveTo(146316, 27606, -2230, moveDistance);
    MoveTo(145305, 27542, -2270, moveDistance);
    MoveTo(145025, 27425, -2270, moveDistance);
    MoveTo(145025, 25589, -2176, moveDistance);
    MoveTo(145058, 23815, -2142, moveDistance);
    MoveTo(145045, 23607, -2142, moveDistance);
    MoveTo(145058, 23058, -2142, moveDistance);
    MoveTo(145084, 22715, -2142, moveDistance);
    scan(800) --рядом со спауном
    MoveTo(145134, 22551, -2142, moveDistance);
    MoveTo(145134, 22553, -2142, moveDistance);
    MoveTo(145060, 23003, -2142, moveDistance);
    MoveTo(145090, 23507, -2142, moveDistance);
    MoveTo(145306, 23951, -2142, moveDistance);
    MoveTo(145399, 24018, -2142, moveDistance);
    MoveTo(145491, 24085, -2142, moveDistance);
    MoveTo(145584, 24152, -2126, moveDistance);
    MoveTo(145669, 24214, -2109, moveDistance);
    MoveTo(145763, 24246, -2084, moveDistance);
    scan(500) --ближе к гк
    MoveTo(145801, 24258, -2084, moveDistance);
    MoveTo(146081, 24323, -2027, moveDistance);
    MoveTo(146323, 24380, -2014, moveDistance);
    MoveTo(146373, 24572, -2014, moveDistance);
    MoveTo(146414, 24895, -2014, moveDistance);
    scan(500) -- ещё ближе
    MoveTo(146412, 25121, -2014, moveDistance);
    MoveTo(146385, 25369, -2014, moveDistance);
    MoveTo(146556, 25674, -2014, moveDistance);
    MoveTo(146802, 25756, -2014, moveDistance);
	TargetNpc("Элиза", 30848);
	Talk();
	MoveTo(146802, 25777, -2014, moveDistance);
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3562292912_0_57_1209024388_3", "1010199");
	WaitForTeleport();
end

function goScanGoddard()
ShowToClient("", "in Scan gdd")
    scan(1000)
    MoveTo(147870, -55226, -2728, moveDistance);
	TargetNpc("Татьяна", 31275);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3580045328_3_57_1209024748_3", "1010200");
	WaitForTeleport();
end

function goScanShuttgart()
ShowToClient("", "in Scan shtt")
    scan(1000)
    MoveTo(87111, -143309, -1293, moveDistance);
    MoveTo(87111, -143351, -1293, moveDistance);
    MoveTo(87067, -143365, -1293, moveDistance);
    TargetNpc("Билия", 31964);
    MoveTo(87053, -143421, -1293, moveDistance);
    Talk();
    ClickAndWait("teleport_request", "Teleport");
    ClickAndWait("teleport_3616649984_5_57_1209031369_3", "1010007");
    WaitForTeleport();
	WaitForTeleport();
end

function goScanRuna()
ShowToClient("", "in Scan runa")
    scan(1500)
    MoveTo(43845, -47760, -798, moveDistance);
	TargetNpc("Ильяна", 31320);
	Talk();
	MoveTo(43837, -47708, -798, moveDistance);
	ClickAndWait("teleport_request", "Teleport");
	ClickAndWait("teleport_3594981536_5_57_1209024779_3", "1010574");
	WaitForTeleport();
end

function go()
ShowToClient("", "go")
    local city = city.getClosestCityPoint();
    while (city == nil) do
        city = city.getClosestCityPoint();
    end
    MoveTo(city.loc, moveDistance);
    if (city.city == "giran") then
        goScanGiran();
        go();
    elseif (city.city == "hv") then
        goScanHv();
        go();
    elseif (city.city == "oren") then
        goScanOren();
        go();
    elseif (city.city == "dion") then
        goScanDion();
        go();
    elseif (city.city == "aden") then
        goScanAden();
        go();
    elseif (city.city == "goddard") then
        goScanGoddard();
        go();
    elseif (city.city == "shuttgart") then
        goScanShuttgart();
        go();
    elseif (city.city == "runa") then
        goScanRuna();
        go();
    end
end

go();



