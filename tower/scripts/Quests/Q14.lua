SCONFIG = L2TConfig.GetConfig();
moveDistance = 30;
ShowToClient("Q14", "Quest Request of the Seeker - Started");
LearnAllSkills();
MoveTo(-118606, 233953, -2888, moveDistance);
MoveTo(-118603, 233962, -2888, moveDistance);
TargetNpc("Nagel", 33450);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=2&option=1", "[536301]");
ClickAndWait("menu_select?ask=10363&reply=1", "\"What do you hear exactly?\"");
ClickAndWait("quest_accept?quest_id=10363", "\"I'll try.\"");
ClearTargets();
MoveTo(-118603, 233962, -2888, moveDistance);
MoveTo(-118356, 233612, -2912, moveDistance);
MoveTo(-118362, 233224, -2912, moveDistance);
MoveTo(-118682, 232894, -2880, moveDistance);
MoveTo(-118686, 232593, -2903, moveDistance);
MoveTo(-118440, 232484, -2903, moveDistance);
MoveTo(-117904, 232516, -2903, moveDistance);
MoveTo(-117428, 232558, -2903, moveDistance);
MoveTo(-117228, 232942, -2903, moveDistance);
SCONFIG.targeting.centerPoint.X = -117151;
SCONFIG.targeting.centerPoint.Y = 232989;
SCONFIG.targeting.centerPoint.Z = -2903;
SCONFIG.targeting.range = 1500;
SCONFIG.pickup.userPickup.mode = L2TConfig.EPickupMode.PICKUP_OFFLINE;
SCONFIG.melee.me.enabled = true;

SetPause(false);
repeat
--Lets search every 30s for a Corpse in range 900 from us...
local npc = GetNpcList();
local found = nil;
for user in npc.list do 
	if ((user:GetNpcId() == 32964) or (user:GetNpcId() == 32962) or (user:GetNpcId() == 32963) or (user:GetNpcId() == 32964)) then
		if (user:GetDistance() < 900) then
			found = user;
			break;
		end;
	end;
end;

if (found == nil) then
	local npc = GetMonsterList();
	for user in npc.list do 
		if ((user:GetNpcId() == 32964) or (user:GetNpcId() == 32962) or (user:GetNpcId() == 32963) or (user:GetNpcId() == 32964)) then
			if (user:GetDistance() < 900) then
				found = user;
				break;
			end;
		end;
	end;
end;

if (found ~= nil) and (found:IsValid()) then
   --Move there, target,
   SetPause(true);
   MoveTo(found:GetLocation(), 60);
   if (found:IsValid()) then
    ClearTargets();
	if (Target(found)) then
	   Action(35, false, false);
	   Sleep(5000);
	end;
   end;
   SetPause(false);
end;

until GetQuestManager():GetQuestProgress(10363) == 6;
SetPause(true);
ClearTargets();
MoveTo(-118123, 232414, -2903, moveDistance);
MoveTo(-118745, 232607, -2903, moveDistance);
MoveTo(-118726, 233064, -2876, moveDistance);
MoveTo(-118596, 234001, -2889, moveDistance);
TargetNpc("Nagel", 33450);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=6&option=1", "[536302]");
ClickAndWait("menu_select?ask=10363&reply=2", "\"Of course.\"");
ClearTargets();
MoveTo(-118596, 234001, -2889, moveDistance);
MoveTo(-118501, 234048, -2898, moveDistance);
MoveTo(-118721, 232972, -2876, moveDistance);
MoveTo(-118700, 232719, -2903, moveDistance);
MoveTo(-118410, 232621, -2903, moveDistance);
MoveTo(-117623, 232708, -2903, moveDistance);
MoveTo(-117255, 232890, -2903, moveDistance);
MoveTo(-116795, 233740, -2903, moveDistance);
MoveTo(-116668, 233984, -2903, moveDistance);
TargetNpc("Ye Sagira Teleport Device", 33189);
Talk();
Click("menu_select?ask=-3516&reply=1", "The 3rd Exploration Zone");
WaitForTeleport();
MoveTo(-116298, 239057, -2758, moveDistance);
MoveTo(-116400, 239059, -2758, moveDistance);
MoveTo(-116543, 239062, -2759, moveDistance);
MoveTo(-116529, 239181, -2783, moveDistance);
TargetNpc("Celin", 33451);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=0&option=1", "[536302]");
ClickAndWait("menu_select?ask=10363&reply=1", "\"I've seen them, and paid my condolences.\"");
ClickAndWait("menu_select?ask=10363&reply=2", "\"Don't worry. He's fine now.\"");
ClearTargets();
UseItem(43); -- Wooden Helmet
Sleep(500);
ShowToClient("Q14", "Quest Request of the Seeker - Finished");
