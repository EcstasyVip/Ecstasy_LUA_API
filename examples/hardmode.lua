

local function onmenu()

	menu.separator()
	menu.text("Hard Mode Activated")
	menu.separator()
end


local function onevent(Event)
	if Event:get_name() ~= "player_death" then return end
	victimidx = engine.get_player_by_userid(Event:get_int("userid"))
	victiment = entity.get_entity_from_index(victimidx)
	if entity.get_local_player() == victiment then 
		engine.execute_console_cmd("quit")
	end
	
end

cheat.register_callback("menu_items", onmenu)
cheat.register_callback("on_event", onevent)