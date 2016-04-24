function enchantResult()
  return GetEnchantManager():getLastResult()
end
 
function getItemByName(name, maxenchant)
	invList = GetInventory();
	for item in invList.list do
		if item.Name == name and item.Enchanted < maxenchant then
			-- ShowToClient("ITEM", item.Name .. " (ID: " .. item.displayId  .. ")");
			return item
		end
	end
end
 
maxenchant = 5
GetEnchantManager():setDelay(2100)
ShowToClient("Enchant:", "Hi")
 
while true do
	weapon = getItemByName("Striped Linen Shirt", maxenchant)
	enchant = getItemByName("Scroll: Enchant Armor (D)", maxenchant)	
	if ( weapon == nil or enchant == nil ) then
		ShowToClient("Enchant:", "Out of weapons of enchants")
		break
	end
 
	if ( weapon.Enchanted > maxenchant ) then
		ShowToClient("Enchant:", "Reached desired enchant")
		break
	end
 
	GetEnchantManager():setEnchantId(enchant.objectId)
	GetEnchantManager():setItemId(weapon.objectId)
	GetEnchantManager():Enchant()
	-- ShowToClient(">>>>",  "Waiting for result...");
	while ( enchantResult() == Enchant.ENCHANT_PENDING ) do
		Sleep(200)
	end
	if ( enchantResult() == Enchant.ENCHANT_SUCCESS ) then	
		Sleep ( 100 ) -- sleep so item data is updated
		weapon = GetInventory():FindById(weapon.objectId)
		ShowToClient("Enchant",  weapon.Name .. " is now +" .. weapon.Enchanted);
	elseif ( enchantResult() == Enchant.ENCHANT_FAILURE ) then
		ShowToClient("Enchant",  weapon.Name .. " failed on " .. weapon.Enchanted .. " -> " .. weapon.Enchanted+1)
	end
	-- ShowToClient(">>>>",  "Last result" .. tostring(enchantResult()));
end