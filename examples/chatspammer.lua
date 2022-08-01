local enabled = false
local printtext = "you're noob!"
local delay = 0.8

local function menuitems()
	menu.separator()
	menu.text("Chat Spam LUA by rosewater")
	enabled = menu.checkbox("Enable Chat Spam", enabled)
	delay = menu.slider("Spam delay", delay, 0.8, 5.0, "%.2f",1)
	printtext = menu.input_text("Spam Text", printtext)
	menu.separator()
end

local sex = globals.get_realtime()

local function framestageh()

	if enabled then
		if globals.get_realtime() - sex > delay then
			local output = "say \"" .. printtext .. "\""
			engine.execute_console_cmd(output)
			sex = globals.get_realtime()
		end
	end
end


cheat.register_callback("menu_items", menuitems)
cheat.register_callback("createmove", framestageh)