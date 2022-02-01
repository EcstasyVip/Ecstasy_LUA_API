-- This is the first ever lua for Ecstasy.vip

local zangle = 0
local bl = 1

local function broll(cmd)
    
    zangle = zangle + bl
    if zangle > 45 then
	 bl = -1
    end

    if zangle < -45 then
	 bl = 1
    end

    local vec = vec3.new(cmd.viewangles.x, cmd.viewangles.y, zangle)
    engine.set_view_angles(vec)
end

local function painer()
    render.text(100, 100, color.new(255, 255, 255, 255), "First lua ever hello!")
end

cheat.register_callback("createmove", broll)
cheat.register_callback("on_paint", painer)
