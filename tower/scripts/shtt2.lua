SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\shtt2.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

MoveTo(87111, -143309, -1293, moveDistance);
MoveTo(87111, -143351, -1293, moveDistance);
MoveTo(87067, -143365, -1293, moveDistance);
TargetNpc("Билия", 31964);
Talk();
MoveTo(87055, -143389, -1293, moveDistance);
ClickAndWait("teleport_request", "Teleport");
MoveTo(87055, -143389, -1293, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
