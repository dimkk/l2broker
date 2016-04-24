SCONFIG = L2TConfig.GetConfig();
moveDistance = 30;
ShowToClient("Q16", "Quest Seeker Escort - Started");
LearnAllSkills();
MoveTo(-110628, 238388, -2926, moveDistance);
TargetNpc("Def ", 33453);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=2&option=1", "[536501]");
ClickAndWait("menu_select?ask=10365&reply=1", "\"Er, can I help you?\"");
ClickAndWait("quest_accept?quest_id=10365", "\"Sure.\"");
ClearTargets();
Sleep(3000);
-- Find my "pet", and follow him
local npc = GetNpcList();
local pet = nil;
for user in npc.list do 
	if ((user:GetNpcId() == 32988) and user:GetNickName() == GetMe():GetName()) then
			pet = user;
	end;
end;

repeat
MoveTo(pet:GetLocation(), 60);
--check if something is hiting me...
local monsters = GetMonsterList();
local t = nil;
for user in monsters.list do 
	if (user:IsEnemy() and user:GetTarget() == GetMe():GetId() ) then
		t = user;
		break;
	end;
end;
if (nil ~= t) then
  ClearTargets();
  Target(t);
  SCONFIG.pickup.userPickup.mode = L2TConfig.EPickupMode.PICKUP_OFFLINE;
  SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_OFF;
  SCONFIG.melee.me.enabled = true;
  SCONFIG.melee.me.attackRange = 50;
  SetPause(false);
  repeat
  Sleep(1000);
  until (t:IsValid() == false) or t:IsAlikeDeath();
  SetPause(true);
end;
	if (GetTarget()~=nil) then
		CancelTarget(true);
		ClearTargets();
		Sleep(500);
	end;
until pet:GetRangeTo(-112305, 240212, -2920) < 60;
Sleep(5000);
MoveTo(-112275, 240219, -2925, moveDistance);
ClearTargets();
TargetNpc("Ye Sagira Teleport Device", 33188);
Talk();
Click("menu_select?ask=-3524&reply=1", "The 5th Exploration Zone");
WaitForTeleport();
Sleep(5000);
local npc = GetNpcList();
local pet = nil;
for user in npc.list do 
	if ((user:GetNpcId() == 32988) and user:GetNickName() == GetMe():GetName()) then
			pet = user;
	end;
end;

repeat
MoveTo(pet:GetLocation(), 60);
--check if something is hiting me...
local monsters = GetMonsterList();
local t = nil;
for user in monsters.list do 
	if (user:IsEnemy() and user:GetTarget() == GetMe():GetId() ) then
		t = user;
		break;
	end;
end;
if (nil ~= t) then
  ClearTargets();
  Target(t);
  SCONFIG.pickup.userPickup.mode = L2TConfig.EPickupMode.PICKUP_OFFLINE;
  SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_OFF;
  SCONFIG.melee.me.enabled = true;
  SCONFIG.melee.me.attackRange = 50;
  SetPause(false);
  repeat
  Sleep(1000);
  until (t:IsValid() == false) or t:IsAlikeDeath();
  SetPause(true);
end;
	if (GetTarget()~=nil) then
		CancelTarget(true);
		ClearTargets();
		Sleep(500);
	end;
until pet:IsValid() == false;
MoveTo(-111759, 231768, -3172, moveDistance);
TargetNpc("Sebion", 32978);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=13&option=1", "[536502]");
ClickAndWait("menu_select?ask=10365&reply=3", "\"I'll leave you two to it.\"");
ClearTargets();
ShowToClient("Q16", "Quest Seeker Escort - Finished");
