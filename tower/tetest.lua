function OnTargetSelected(user, target)
	if (user:IsPlayer() == true and user:IsMyPartyMember() == false and target:IsMe() == true) then
 local TargetersFile = io.open(GetDir() .. "_targeters\\" .. GetMe():GetName() .. ".txt", "a")
 TargetersFile:write(os.date("%Y-%m-%d %H:%M:%S") .. " | " .. user:GetName() .. "\n");
 TargetersFile:close();
	end;
end;