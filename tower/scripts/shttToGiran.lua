SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\shttToGiran.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

MoveTo(87068, -143407, -1293, moveDistance);
TargetNpc("Билия", 31964);
MoveTo(87053, -143421, -1293, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
ClickAndWait("teleport_3616649984_5_57_1209031369_3", "1010007");
WaitForTeleport();
MoveTo(83556, 147940, -3406, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
