SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\tesss.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

MoveTo(83420, 147970, -3406, moveDistance);
MoveTo(83410, 148013, -3406, moveDistance);
L2TConfig.LoadConfig(SCONFIG_FILE);
