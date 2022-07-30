--draw FPS

local function drawfps()
    render.text(100, 100, color.new(220, 11, 220, 255), 0, "mainfont", tostring(math.floor(1 / globals.get_frametime())))
    --[[
        globals.get_frametime() is the amount of ms it takes to render a frame
        math.floor gets rid of the fraction for us and makes a nice looking integer
    ]]--
end

cheat.register_callback("on_paint", drawfps)
