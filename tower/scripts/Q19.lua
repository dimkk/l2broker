SCONFIG = L2TConfig.GetConfig();
moveDistance = 30;

MoveTo(-117825, 256058, -1327, moveDistance);
TargetNpc("Kakai", 30565);
MoveTo(-117951, 255893, -1327, moveDistance);
Talk();
ClickAndWait("talk_select", "Quest.");
ClickAndWait("quest_choice?choice=7&option=1", "[533201]");
Click("quest_accept?quest_id=10332", "&quot;Sure, I'll go on a Sakum hunt.&quot;");
-- Quest state changed, ID: 10332, STATE: 1
-- Quest state changed, ID: 10332, STATE: 1
-- Quest state changed, ID: 10332, STATE: 1
-- Get new quest item, ID: 17582, COUNT: 1
ClearTargets();
-- Quest state changed, ID: 10332, STATE: 1
MoveTo(-117643, 255764, -1299, moveDistance);
MoveTo(-117643, 255764, -1299, moveDistance);
MoveTo(-116753, 255339, -1429, moveDistance);
MoveTo(-115535, 254722, -1518, moveDistance);
MoveTo(-115117, 254789, -1524, moveDistance);
-- Get new quest item, ID: 17582, COUNT: 1
-- Get new quest item, ID: 17582, COUNT: 1
-- Get new quest item, ID: 17582, COUNT: 1
-- Get new quest item, ID: 17582, COUNT: 1
MoveTo(-112807, 256793, -1487, moveDistance);
TargetNpc("Milia", 30006);
MoveTo(-112284, 256945, -1475, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_4191283504_6_57_1209060325_3", "1010005");
WaitForTeleport();
-- Quest state changed, ID: 10332, STATE: 1
-- Get new quest item, ID: 17582, COUNT: 1
-- Get new quest item, ID: 17582, COUNT: 1
-- Get new quest item, ID: 17582, COUNT: 1
-- Get new quest item, ID: 17582, COUNT: 1
MoveTo(-14588, 123931, -3127, moveDistance);
ClearTargets();
MoveTo(-14406, 123827, -3117, moveDistance);
MoveTo(-14006, 123809, -3117, moveDistance);
TargetNpc("Bathis", 30332);
MoveTo(-13908, 123799, -3117, moveDistance);
Talk();
ClickAndWait("talk_select", "Quest.");
ClickAndWait("quest_choice?choice=11&option=1", "[533202]");
ClickAndWait("menu_select?ask=10332&reply=1", "Yes, Nemertess hatched Sakum.");
Click("menu_select?ask=10332&reply=2", "I'm a good tracker. I'll help!");
ClearTargets();
MoveTo(-13908, 123799, -3117, moveDistance);

