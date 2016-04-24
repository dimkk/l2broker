SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\shttDion.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

MoveTo(87073, -143421, -1293, moveDistance);
TargetNpc("Билия", 31964);
MoveTo(87070, -143440, -1293, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
ClickAndWait("teleport_3608201728_6_57_1209026260_3", "1010006");
WaitForTeleport();
MoveTo(15477, 142875, -2702, moveDistance);
MoveTo(15468, 142890, -2701, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
