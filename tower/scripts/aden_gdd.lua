SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\aden.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

MoveTo(146802, 25756, -2014, moveDistance);
TargetNpc("Элиза", 30848);
Talk();
MoveTo(146802, 25777, -2014, moveDistance);
ClickAndWait("teleport_request", "Teleport");
ClickAndWait("teleport_3562292912_0_57_1209024388_3", "1010199");
WaitForTeleport();
MoveTo(148029, -55286, -2735, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
