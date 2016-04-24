SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\orenHv.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

MoveTo(82937, 53177, -1497, moveDistance);
TargetNpc("Валентина", 30177);
MoveTo(82930, 53170, -1497, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
ClickAndWait("teleport_3543405616_9_57_1209024514_3", "1010020");
WaitForTeleport();
MoveTo(117093, 76926, -2697, moveDistance);
MoveTo(117085, 76922, -2698, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
