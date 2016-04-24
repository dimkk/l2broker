SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\dionOren.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

MoveTo(15464, 142915, -2700, moveDistance);
TargetNpc("Триша", 30059);
MoveTo(15534, 142909, -2706, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
ClickAndWait("teleport_3538797056_7_57_1209024218_3", "1010013");
WaitForTeleport();
MoveTo(82976, 53202, -1497, moveDistance);
MoveTo(82970, 53209, -1497, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
