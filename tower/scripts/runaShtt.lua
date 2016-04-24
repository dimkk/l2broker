SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\runaShtt.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

MoveTo(43845, -47760, -798, moveDistance);
TargetNpc("Ильяна", 31320);
Talk();
MoveTo(43837, -47708, -798, moveDistance);
ClickAndWait("teleport_request", "Teleport");
ClickAndWait("teleport_3594981536_5_57_1209024779_3", "1010574");
WaitForTeleport();
MoveTo(87131, -143525, -1293, moveDistance);
MoveTo(87121, -143523, -1293, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
