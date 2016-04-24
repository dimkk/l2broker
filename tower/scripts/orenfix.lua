SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\orenfix.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

MoveTo(82977, 53233, -1497, moveDistance);
TargetNpc("Валентина", 30177);
MoveTo(82963, 53233, -1497, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
ClickAndWait("teleport_3543405616_9_57_1209024514_3", "1010020");
WaitForTeleport();
MoveTo(117093, 76926, -2697, moveDistance);
MoveTo(117095, 76941, -2697, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
