SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\gddRuna.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

MoveTo(148029, -55286, -2735, moveDistance);
TargetNpc("Татьяна", 31275);
MoveTo(148014, -55283, -2735, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
ClickAndWait("teleport_3580045328_3_57_1209024748_3", "1010200");
WaitForTeleport();
MoveTo(43840, -47754, -798, moveDistance);
MoveTo(43845, -47760, -798, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
