-- SCRIPT CONFIGURATION!
 
item_name = "Vesper Cutter"
enchant_name = "Scroll: Enchant Weapon (S-Grade)"
blessed_enchant_name = "Blessed Scroll: Enchant Weapon (S-Grade)"
max_enchant = 25
max_safe_enchant = 3
delay = 2100
 
-- END OF SCRIPT CONFIGURATION
 
-- HELPER FUNCTIONS
function enchantResult()
  return GetEnchantManager():getLastResult()
end
 
function getItemByName(name, maxenchant)
	invList = GetInventory();
	for item in invList.list do
		if item.Name == name and item.Enchanted < maxenchant then
			return item
		end
	end
end
 
stats = {}
 
function registerSuccess(base)
	if stats[base] == nil then
		stats[base] = { success = 0, failure = 0 }
	end
	stats[base].success = stats[base].success + 1
end
 
function registerFailure(base)
	if stats[base] == nil then
		stats[base] = { success = 0, failure = 0 }
	end
	stats[base].failure = stats[base].failure + 1
end
 
function printStatistics()
	for i,v in ipairs(stats) do
		ShowToClient("Enchant", "[" .. 	i - 1 .. "->" .. i .. "] Rate: success: " .. v.success .. " / fail: " .. v.failure .." (" .. ( v.success  * 100 )/ ( v.success + v.failure ) .. "%)")
	end
end
 
-- MAIN LOOP!
 
while true do
	-- find item for enchanting
	item = getItemByName(item_name, max_enchant)
	if ( item == nil ) then
		ShowToClient("Enchant", "Out of items" )
		break
	end
	-- find proper enchant scroll
	enchant = nil
	if ( item.Enchanted >= max_safe_enchant ) then
		enchant = getItemByName(blessed_enchant_name, 20)
	else
		enchant = getItemByName(enchant_name, 20)
	end
 
	if ( enchant == nil ) then
		ShowToClient("Enchant", "Out of enchants")
		break
	end
 
 	GetEnchantManager():setDelay(delay)
	GetEnchantManager():setEnchantId(enchant.objectId)
	GetEnchantManager():setItemId(item.objectId)
	GetEnchantManager():Enchant()
 
	while ( enchantResult() == Enchant.ENCHANT_PENDING ) do
		Sleep(200)
	end
 
	if ( enchantResult() == Enchant.ENCHANT_SUCCESS ) then	
		Sleep ( 500 ) -- sleep so item data is updated
		item = GetInventory():FindById(item.objectId)
		ShowToClient("Enchant",  item.Name .. " is now +" .. item.Enchanted);
		registerSuccess ( item.Enchanted )
	elseif ( enchantResult() == Enchant.ENCHANT_FAILURE ) then
		ShowToClient("Enchant",  item.Name .. " failed on " .. item.Enchanted .. " -> " .. item.Enchanted+1)
		Sleep ( 500 ) -- sleep so item data is updated
		registerFailure ( item.Enchanted + 1)
	end
	printStatistics()
end
ShowToClient("Enchant", "Enchant script finished")
printStatistics()