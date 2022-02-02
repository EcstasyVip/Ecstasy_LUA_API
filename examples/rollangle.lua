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


cheat.register_callback("createmove", broll)
