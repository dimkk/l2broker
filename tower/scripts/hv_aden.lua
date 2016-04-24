SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\hv.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

MoveTo(117116, 76870, -2696, moveDistance);
TargetNpc("Эсмеральда", 30233);
Talk();
MoveTo(117114, 76895, -2697, moveDistance);
ClickAndWait("teleport_request", "Teleport");
ClickAndWait("teleport_3547920512_0_57_1209026042_3", "1010023");
WaitForTeleport();
MoveTo(146788, 25803, -2014, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
