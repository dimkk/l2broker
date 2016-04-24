SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\gdd.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

TargetNpc("Татьяна", 31275);
Talk();
MoveTo(148029, -55286, -2735, moveDistance);
ClickAndWait("teleport_request", "Teleport");
ClickAndWait("teleport_3580045328_3_57_1209024748_3", "1010200");
WaitForTeleport();
MoveTo(43840, -47754, -798, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
