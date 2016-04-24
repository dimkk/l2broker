SCONFIG = L2TConfig.GetConfig();
moveDistance = 30;
ShowToClient("Q8", "Quest Intruder Who Wants the Book of Giants - Started");
LearnAllSkills();
SetPause(true);
MoveTo(-114364, 260271, -1181, moveDistance);
TargetNpc("Pantheon", 32972);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=7&option=1", "[532701]");
ClickAndWait("menu_select?ask=10327&reply=1", "\"The War of Gods and Giants?\"");
ClickAndWait("quest_accept?quest_id=10327", "\"I'd like to help.\"");
Click("menu_select?ask=10327&reply=2", "\"Yes.\"");
WaitForTeleport();

Sleep(4000);

if (GetQuestManager():GetQuestProgress(10327) == 1) then
MoveTo(-114690, 243913, -7973, moveDistance);
MoveTo(-114707, 243651, -7951, moveDistance);
TargetNpc("", 33126);
Talk();
ClearTargets();
Sleep(1000);
if (GetQuestManager():GetQuestProgress(10327) == 2) then
	MoveTo(-114715, 243777, -7974, moveDistance);
	MoveTo(-114888, 244206, -7974, moveDistance);
	MoveTo(-114904, 244551, -7990, moveDistance);
	MoveTo(-114932, 244764, -7987, moveDistance);
	MoveTo(-114818, 244879, -7990, moveDistance);
	MoveTo(-114733, 244924, -7986, moveDistance);
end;
end;

if (GetQuestManager():GetQuestProgress(10327) == 1) then
MoveTo(-114707, 243651, -7951, moveDistance);
MoveTo(-114707, 243759, -7974, moveDistance);
MoveTo(-115484, 244638, -7974, moveDistance);
MoveTo(-115631, 244681, -7951, moveDistance);
TargetNpc("", 33126);
Talk();
ClearTargets();
Sleep(1000);
if (GetQuestManager():GetQuestProgress(10327) == 2) then
	MoveTo(-115606, 244666, -7951, moveDistance);
	MoveTo(-115241, 244823, -7974, moveDistance);
	MoveTo(-115127, 244854, -7968, moveDistance);
	MoveTo(-114898, 244876, -7988, moveDistance);
	MoveTo(-114774, 244920, -7986, moveDistance);
end;
end;

if (GetQuestManager():GetQuestProgress(10327) == 1) then
MoveTo(-114859, 245434, -7974, moveDistance);
MoveTo(-114713, 245604, -7974, moveDistance);
MoveTo(-114706, 245720, -7951, moveDistance);
MoveTo(-114673, 245752, -7951, moveDistance);
TargetNpc("", 33126);
Talk();
ClearTargets();
Sleep(1000);
if (GetQuestManager():GetQuestProgress(10327) == 2) then
	MoveTo(-114716, 245693, -7951, moveDistance);
	MoveTo(-114700, 245351, -7974, moveDistance);
	MoveTo(-114708, 245136, -7974, moveDistance);
	MoveTo(-114710, 245001, -7976, moveDistance);
end;
end;

if (GetQuestManager():GetQuestProgress(10327) == 1) then
MoveTo(-114689, 245609, -7974, moveDistance);
MoveTo(-114468, 245388, -7974, moveDistance);
MoveTo(-113917, 244723, -7974, moveDistance);
MoveTo(-113789, 244693, -7952, moveDistance);
TargetNpc("", 33126);
Talk();
ClearTargets();
Sleep(1000);
if (GetQuestManager():GetQuestProgress(10327) == 2) then
	MoveTo(-113790, 244678, -7952, moveDistance);
	MoveTo(-114061, 244691, -7974, moveDistance);
	MoveTo(-114396, 244705, -7976, moveDistance);
	MoveTo(-114565, 244866, -7990, moveDistance);
	MoveTo(-114707, 244975, -7979, moveDistance);
end;
end;
ClearTargets();
SCONFIG.melee.me.enabled = false;
SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_CHAR;
SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
SCONFIG.targeting.range = 200;
SCONFIG.pickup.userPickup.pickupRange = 200;
SCONFIG.pickup.userPickup.mode = L2TConfig.EPickupMode.PICKUP_BEFORE;
SetPause(false);
CancelTarget(true);
ClearTargets();
TargetNpc("Thief", 23121);
repeat
if (GetTarget()~=nil and GetTarget():IsAlikeDeath() == false) then
	UseSkillRaw(16, false, false); -- Mortal Blow
end; 
Sleep(500);
until TargetNpc("Thief", 23121) == false;
SetPause(true);

repeat
TargetNpc("Toyron", 33004);
until MoveTo(GetTarget():GetLocation().X, GetTarget():GetLocation().Y, GetTarget():GetLocation().Z, moveDistance);
Talk();
Click("menu_select?ask=-3527&reply=1", "Return to the lobby of the museum");
WaitForTeleport();
Sleep(2000);
MoveTo(-114381, 260227, -1181, moveDistance);
TargetNpc("Pantheon", 32972);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=12&option=1", "[532702]");
ClickAndWait("menu_select?ask=10327&reply=3", "\"I had to fight someone!\"");
ClearTargets();
Sleep(1000);
UseItem(112); -- Apprentice's Earring
SetPause(true);
ShowToClient("Q8", "Quest Intruder Who Wants the Book of Giants - Finished");
