SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\giranToDion.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

TargetNpc("Кларисса", 30080);
MoveTo(83378, 147935, -3406, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
ClickAndWait("teleport_3547261648_2_57_1209030033_3", "1010006");
WaitForTeleport();
MoveTo(15477, 142875, -2702, moveDistance);
Target("djoo1");
MoveTo(15474, 142931, -2701, moveDistance);
MoveTo(15518, 143041, -2702, moveDistance);
MoveTo(15480, 143024, -2699, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
