SCONFIG = L2TConfig.GetConfig();
moveDistance = 30;
ShowToClient("Q4", "Quest Going into a Real War, Let's Go to the Underground Traning Field! - Started");
LearnAllSkills();
MoveTo(-110755, 253477, -1739, moveDistance);
TargetNpc("Evain", 33464);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("menu_select?ask=10323&reply=1", "\"Ready!\"");
ClickAndWait("quest_accept?quest_id=10323", "\"I'll put them down.\"");

MoveTo(-110755, 253477, -1739, moveDistance);
MoveTo(-110776, 253689, -1789, moveDistance);
MoveTo(-110535, 253636, -1789, moveDistance);
MoveTo(-110133, 252577, -1981, moveDistance);
MoveTo(-110194, 252547, -1983, moveDistance);
MoveTo(-110399, 252499, -1989, moveDistance);
TargetNpc("Holden", 33194);
Talk();
Click("menu_select?ask=-3500&reply=1", "Move to the Training Grounds Underground Facility.");

repeat
 Sleep(1000);
until GetMe():GetRangeTo(-113815, 247744, -7876)<1000;


SCONFIG.melee.me.enabled = true;
SCONFIG.melee.me.attackRange = 50;
SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_CHAR;
SCONFIG.targeting.rangeType = L2TConfig.ETargetingRangeType.TRT_SQUERE;
SCONFIG.targeting.range = 400;
SCONFIG.pickup.userPickup.pickupRange = 200;
SCONFIG.pickup.userPickup.mode = L2TConfig.EPickupMode.PICKUP_BEFORE;
MoveTo(-113815, 247744, -7876, moveDistance);
MoveTo(-113993, 248284, -7876, moveDistance);
SetPause(false);
repeat
 Sleep(4000);
until GetTarget() == nil;
SetPause(true);
MoveTo(-114049, 248374, -7876, moveDistance);
SetPause(false);
repeat
 Sleep(2000);
until GetTarget() == nil;
SetPause(true);
MoveTo(-114594, 248571, -7876, moveDistance);
SetPause(false);
repeat
 Sleep(2000);
until GetTarget() == nil;
SetPause(true);
MoveTo(-114967, 248141, -7876, moveDistance);

SetPause(false);
repeat
 Sleep(2000);
until GetTarget() == nil;
SetPause(true);

MoveTo(-115025, 247867, -7872, moveDistance);
SetPause(false);
repeat
 Sleep(2000);
until GetTarget() == nil;
SetPause(true);


MoveTo(-114862, 248296, -7877, moveDistance);
TargetNpc("Guard", 33021);
Talk();
ClickAndWait("menu_select?ask=10323&reply=1", "\"No, please tell me.\"");
ClearTargets();
ActivateSoulShot(1835, true); -- Soulshot: No Grade
ActivateSoulShot(3947, true); -- Blessed Spiritshot : No Grade
ActivateSoulShot(2509, true); -- Spiritshot : No Grade
MoveTo(-114862, 248296, -7877, moveDistance);
repeat
TargetNpc("Guard", 33021);
Talk();
ClearTargets();
Sleep(1000);
until GetQuestManager():GetQuestProgress(10323) == 6;
ClearTargets();
-- Quest state changed, ID: 10323, STATE: 6
MoveTo(-114862, 248296, -7877, moveDistance);
SetPause(false);
repeat
 Sleep(2000);
until GetTarget() == nil;
SetPause(true);
ClearTargets();
MoveTo(-115052, 247919, -7877, moveDistance);
SetPause(false);
repeat
 Sleep(2000);
until GetTarget() == nil;
SetPause(true);
ClearTargets();
MoveTo(-114622, 248520, -7877, moveDistance);

SetPause(false);
repeat
 Sleep(2000);
until GetTarget() == nil;
SetPause(true);
ClearTargets();
MoveTo(-114603, 248615, -7877, moveDistance);

SetPause(false);
repeat
 Sleep(2000);
until GetTarget() == nil;
SetPause(true);
ClearTargets();
MoveTo(-114132, 248397, -7872, moveDistance);
SetPause(false);
repeat
 Sleep(2000);
until GetTarget() == nil;
SetPause(true);

MoveTo(-114012, 247724, -7877, moveDistance);

TargetNpc("Aymen", 33193);
Talk();
Click("menu_select?ask=-3502&reply=1", "I need to return back to town.");
repeat
 Sleep(1000);
until GetQuestManager():GetQuestProgress(10323) == 8;
-- Quest state changed, ID: 10323, STATE: 8
Sleep(4000);
MoveTo(-110375, 252467, -1992, moveDistance);
MoveTo(-110128, 252770, -1930, moveDistance);
MoveTo(-110342, 253270, -1797, moveDistance);
MoveTo(-110507, 253744, -1791, moveDistance);
MoveTo(-111770, 254054, -1654, moveDistance);
MoveTo(-112118, 254402, -1520, moveDistance);
MoveTo(-112146, 254680, -1475, moveDistance);
MoveTo(-112027, 254808, -1443, moveDistance);
MoveTo(-111999, 255088, -1441, moveDistance);
MoveTo(-111750, 255588, -1447, moveDistance);
MoveTo(-111486, 255803, -1443, moveDistance);
MoveTo(-111402, 255852, -1443, moveDistance);
TargetNpc("Shannon", 32974);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=7&option=1", "[532302]");
ClickAndWait("menu_select?ask=10323&reply=1", "\"I can use shots now... that's pretty cool.\"");
ClearTargets();
ShowToClient("Q4", "Quest Going into a Real War, Let's Go to the Underground Traning Field! - Finished");